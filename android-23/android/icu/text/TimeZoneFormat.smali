.class public Landroid/icu/text/TimeZoneFormat;
.super Landroid/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneFormat$Style;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Landroid/icu/text/TimeZoneFormat$TimeType;,
        Landroid/icu/text/TimeZoneFormat$ParseOption;,
        Landroid/icu/text/TimeZoneFormat$OffsetFields;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetField;,
        Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UFormat;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_TimeZoneFormat$StyleSwitchesValues:[I = null

.field private static synthetic -android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final ASCII_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_OFFSET_SEP:C = ':'

.field private static final DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static final DEFAULT_GMT_ZERO:Ljava/lang/String; = "GMT"

.field private static final ISO8601_UTC:Ljava/lang/String; = "Z"

.field private static final ISO_LOCAL_STYLE_FLAG:I = 0x100

.field private static final ISO_Z_STYLE_FLAG:I = 0x80

.field private static final MAX_OFFSET:I = 0x5265c00

.field private static final MAX_OFFSET_HOUR:I = 0x17

.field private static final MAX_OFFSET_MINUTE:I = 0x3b

.field private static final MAX_OFFSET_SECOND:I = 0x3b

.field private static final MILLIS_PER_HOUR:I = 0x36ee80

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZID_GMT:Ljava/lang/String; = "Etc/GMT"

.field private static final UNKNOWN_LOCATION:Ljava/lang/String; = "Unknown"

.field private static final UNKNOWN_OFFSET:I = 0x7fffffff

.field private static final UNKNOWN_SHORT_ZONE_ID:Ljava/lang/String; = "unk"

.field private static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Landroid/icu/impl/TimeZoneGenericNames;

.field private _locale:Landroid/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Landroid/icu/text/TimeZoneNames;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method private static synthetic -getandroid_icu_text_TimeZoneFormat$StyleSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneFormat$StyleSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneFormat$StyleSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$Style;->values()[Landroid/icu/text/TimeZoneFormat$Style;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_13

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_12

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_11

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_f

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_e

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@46
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_d

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@4f
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@59
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_b

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@63
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_a

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@6d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_9

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@77
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_8

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@81
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_7

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@8b
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_6

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@95
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xf

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_5

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@9f
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0x10

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4

    #@a7
    :goto_f
    :try_start_10
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@a9
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@ac
    move-result v1

    #@ad
    const/16 v2, 0x11

    #@af
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_3

    #@b1
    :goto_10
    :try_start_11
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@b3
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@b6
    move-result v1

    #@b7
    const/16 v2, 0x12

    #@b9
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2

    #@bb
    :goto_11
    :try_start_12
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@bd
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x13

    #@c3
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1

    #@c5
    :goto_12
    :try_start_13
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@c7
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@ca
    move-result v1

    #@cb
    const/16 v2, 0x14

    #@cd
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_0

    #@cf
    :goto_13
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneFormat$StyleSwitchesValues:[I

    #@d1
    return-object v0

    #@d2
    :catch_0
    move-exception v1

    #@d3
    goto :goto_13

    #@d4
    :catch_1
    move-exception v1

    #@d5
    goto :goto_12

    #@d6
    :catch_2
    move-exception v1

    #@d7
    goto :goto_11

    #@d8
    :catch_3
    move-exception v1

    #@d9
    goto :goto_10

    #@da
    :catch_4
    move-exception v1

    #@db
    goto :goto_f

    #@dc
    :catch_5
    move-exception v1

    #@dd
    goto :goto_e

    #@de
    :catch_6
    move-exception v1

    #@df
    goto :goto_d

    #@e0
    :catch_7
    move-exception v1

    #@e1
    goto :goto_c

    #@e2
    :catch_8
    move-exception v1

    #@e3
    goto :goto_b

    #@e4
    :catch_9
    move-exception v1

    #@e5
    goto :goto_a

    #@e6
    :catch_a
    move-exception v1

    #@e7
    goto :goto_9

    #@e8
    :catch_b
    move-exception v1

    #@e9
    goto/16 :goto_8

    #@eb
    :catch_c
    move-exception v1

    #@ec
    goto/16 :goto_7

    #@ee
    :catch_d
    move-exception v1

    #@ef
    goto/16 :goto_6

    #@f1
    :catch_e
    move-exception v1

    #@f2
    goto/16 :goto_5

    #@f4
    :catch_f
    move-exception v1

    #@f5
    goto/16 :goto_4

    #@f7
    :catch_10
    move-exception v1

    #@f8
    goto/16 :goto_3

    #@fa
    :catch_11
    move-exception v1

    #@fb
    goto/16 :goto_2

    #@fd
    :catch_12
    move-exception v1

    #@fe
    goto/16 :goto_1

    #@100
    :catch_13
    move-exception v1

    #@101
    goto/16 :goto_0
.end method

.method private static synthetic -getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x19

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@1a
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@23
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@26
    move-result v1

    #@27
    const/16 v2, 0x1a

    #@29
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@2b
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x2

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@36
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/4 v2, 0x3

    #@3b
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3d
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@3f
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@42
    move-result v1

    #@43
    const/16 v2, 0x1b

    #@45
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@47
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@49
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, 0x4

    #@4e
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@50
    :goto_6
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@52
    return-object v0

    #@53
    :catch_0
    move-exception v1

    #@54
    goto :goto_6

    #@55
    :catch_1
    move-exception v1

    #@56
    goto :goto_5

    #@57
    :catch_2
    move-exception v1

    #@58
    goto :goto_4

    #@59
    :catch_3
    move-exception v1

    #@5a
    goto :goto_3

    #@5b
    :catch_4
    move-exception v1

    #@5c
    goto :goto_2

    #@5d
    :catch_5
    move-exception v1

    #@5e
    goto :goto_1

    #@5f
    :catch_6
    move-exception v1

    #@60
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    const-class v0, Landroid/icu/text/TimeZoneFormat;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    sput-boolean v0, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@10
    .line 359
    new-array v0, v8, [Ljava/lang/String;

    #@12
    const-string/jumbo v3, "GMT"

    #@15
    aput-object v3, v0, v1

    #@17
    const-string/jumbo v3, "UTC"

    #@1a
    aput-object v3, v0, v2

    #@1c
    const-string/jumbo v3, "UT"

    #@1f
    aput-object v3, v0, v7

    #@21
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    #@23
    .line 363
    const/16 v0, 0xa

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    const-string/jumbo v3, "0"

    #@2a
    aput-object v3, v0, v1

    #@2c
    const-string/jumbo v3, "1"

    #@2f
    aput-object v3, v0, v2

    #@31
    const-string/jumbo v3, "2"

    #@34
    aput-object v3, v0, v7

    #@36
    const-string/jumbo v3, "3"

    #@39
    aput-object v3, v0, v8

    #@3b
    const-string/jumbo v3, "4"

    #@3e
    aput-object v3, v0, v9

    #@40
    const-string/jumbo v3, "5"

    #@43
    const/4 v4, 0x5

    #@44
    aput-object v3, v0, v4

    #@46
    const-string/jumbo v3, "6"

    #@49
    const/4 v4, 0x6

    #@4a
    aput-object v3, v0, v4

    #@4c
    const-string/jumbo v3, "7"

    #@4f
    const/4 v4, 0x7

    #@50
    aput-object v3, v0, v4

    #@52
    const-string/jumbo v3, "8"

    #@55
    const/16 v4, 0x8

    #@57
    aput-object v3, v0, v4

    #@59
    const-string/jumbo v3, "9"

    #@5c
    const/16 v4, 0x9

    #@5e
    aput-object v3, v0, v4

    #@60
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    #@62
    .line 374
    const/4 v0, 0x6

    #@63
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@65
    .line 375
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@67
    aput-object v3, v0, v1

    #@69
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@6b
    aput-object v3, v0, v2

    #@6d
    .line 376
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@6f
    aput-object v3, v0, v7

    #@71
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@73
    aput-object v3, v0, v8

    #@75
    .line 377
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@77
    aput-object v3, v0, v9

    #@79
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@7b
    const/4 v4, 0x5

    #@7c
    aput-object v3, v0, v4

    #@7e
    .line 374
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@80
    .line 394
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    #@82
    const/4 v3, 0x0

    #@83
    invoke-direct {v0, v3}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;)V

    #@86
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    #@88
    .line 398
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@8a
    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@8c
    .line 399
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@8e
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@90
    .line 400
    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@92
    .line 397
    invoke-static {v0, v3, v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@95
    move-result-object v0

    #@96
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    #@98
    .line 405
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@9a
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@9c
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@9e
    .line 404
    invoke-static {v0, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    #@a4
    .line 3132
    const/4 v0, 0x7

    #@a5
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@a7
    .line 3133
    new-instance v3, Ljava/io/ObjectStreamField;

    #@a9
    const-string/jumbo v4, "_locale"

    #@ac
    const-class v5, Landroid/icu/util/ULocale;

    #@ae
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@b1
    aput-object v3, v0, v1

    #@b3
    .line 3134
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b5
    const-string/jumbo v3, "_tznames"

    #@b8
    const-class v4, Landroid/icu/text/TimeZoneNames;

    #@ba
    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bd
    aput-object v1, v0, v2

    #@bf
    .line 3135
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c1
    const-string/jumbo v2, "_gmtPattern"

    #@c4
    const-class v3, Ljava/lang/String;

    #@c6
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@c9
    aput-object v1, v0, v7

    #@cb
    .line 3136
    new-instance v1, Ljava/io/ObjectStreamField;

    #@cd
    const-string/jumbo v2, "_gmtOffsetPatterns"

    #@d0
    const-class v3, [Ljava/lang/String;

    #@d2
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d5
    aput-object v1, v0, v8

    #@d7
    .line 3137
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d9
    const-string/jumbo v2, "_gmtOffsetDigits"

    #@dc
    const-class v3, [Ljava/lang/String;

    #@de
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e1
    aput-object v1, v0, v9

    #@e3
    .line 3138
    new-instance v1, Ljava/io/ObjectStreamField;

    #@e5
    const-string/jumbo v2, "_gmtZeroFormat"

    #@e8
    const-class v3, Ljava/lang/String;

    #@ea
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ed
    const/4 v2, 0x5

    #@ee
    aput-object v1, v0, v2

    #@f0
    .line 3139
    new-instance v1, Ljava/io/ObjectStreamField;

    #@f2
    const-string/jumbo v2, "_parseAllStyles"

    #@f5
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@f7
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@fa
    const/4 v2, 0x6

    #@fb
    aput-object v1, v0, v2

    #@fd
    .line 3132
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@ff
    .line 65
    return-void

    #@100
    :cond_0
    move v0, v2

    #@101
    goto/16 :goto_0
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 13
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 416
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@5
    .line 417
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@7
    .line 418
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@a
    move-result-object v9

    #@b
    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@d
    .line 421
    const/4 v3, 0x0

    #@e
    .line 422
    .local v3, "gmtPattern":Ljava/lang/String;
    const/4 v4, 0x0

    #@f
    .line 423
    .local v4, "hourFormats":Ljava/lang/String;
    const-string/jumbo v9, "GMT"

    #@12
    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@14
    .line 427
    :try_start_0
    const-string/jumbo v9, "android/icu/impl/data/icudt55b/zone"

    #@17
    .line 426
    invoke-static {v9, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 429
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_1
    const-string/jumbo v9, "zoneStrings/gmtFormat"

    #@20
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    #@23
    move-result-object v3

    #@24
    .line 434
    .end local v3    # "gmtPattern":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string/jumbo v9, "zoneStrings/hourFormat"

    #@27
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    #@2a
    move-result-object v4

    #@2b
    .line 439
    .end local v4    # "hourFormats":Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string/jumbo v9, "zoneStrings/gmtZeroFormat"

    #@2e
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@34
    .line 447
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    if-nez v3, :cond_0

    #@36
    .line 448
    const-string/jumbo v3, "GMT{0}"

    #@39
    .line 450
    :cond_0
    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    #@3c
    .line 452
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@3f
    move-result-object v9

    #@40
    array-length v9, v9

    #@41
    new-array v2, v9, [Ljava/lang/String;

    #@43
    .line 453
    .local v2, "gmtOffsetPatterns":[Ljava/lang/String;
    if-eqz v4, :cond_3

    #@45
    .line 454
    const-string/jumbo v9, ";"

    #@48
    const/4 v10, 0x2

    #@49
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 455
    .local v5, "hourPatterns":[Ljava/lang/String;
    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@4f
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@52
    move-result v9

    #@53
    aget-object v10, v5, v8

    #@55
    invoke-static {v10}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v10

    #@59
    aput-object v10, v2, v9

    #@5b
    .line 456
    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@5d
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@60
    move-result v9

    #@61
    aget-object v10, v5, v8

    #@63
    aput-object v10, v2, v9

    #@65
    .line 457
    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@67
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@6a
    move-result v9

    #@6b
    aget-object v8, v5, v8

    #@6d
    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    aput-object v8, v2, v9

    #@73
    .line 458
    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@75
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@78
    move-result v8

    #@79
    aget-object v9, v5, v11

    #@7b
    invoke-static {v9}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    aput-object v9, v2, v8

    #@81
    .line 459
    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@83
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@86
    move-result v8

    #@87
    aget-object v9, v5, v11

    #@89
    aput-object v9, v2, v8

    #@8b
    .line 460
    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@8d
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@90
    move-result v8

    #@91
    aget-object v9, v5, v11

    #@93
    invoke-static {v9}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    aput-object v9, v2, v8

    #@99
    .line 466
    .end local v5    # "hourPatterns":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    #@9c
    .line 468
    sget-object v8, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    #@9e
    iput-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@a0
    .line 469
    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@a3
    move-result-object v6

    #@a4
    .line 470
    .local v6, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v6}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@a7
    move-result v8

    #@a8
    if-nez v8, :cond_2

    #@aa
    .line 472
    invoke-virtual {v6}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    #@b1
    move-result-object v8

    #@b2
    iput-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@b4
    .line 416
    :cond_2
    return-void

    #@b5
    .line 462
    .end local v6    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_3
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@b8
    move-result-object v9

    #@b9
    array-length v10, v9

    #@ba
    :goto_3
    if-ge v8, v10, :cond_1

    #@bc
    aget-object v7, v9, v8

    #@be
    .line 463
    .local v7, "patType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@c1
    move-result v11

    #@c2
    invoke-static {v7}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap1(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    aput-object v12, v2, v11

    #@c8
    .line 462
    add-int/lit8 v8, v8, 0x1

    #@ca
    goto :goto_3

    #@cb
    .line 443
    .end local v2    # "gmtOffsetPatterns":[Ljava/lang/String;
    .end local v7    # "patType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .restart local v3    # "gmtPattern":Ljava/lang/String;
    .restart local v4    # "hourFormats":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@cc
    .local v1, "e":Ljava/util/MissingResourceException;
    goto/16 :goto_2

    #@ce
    .line 440
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .end local v3    # "gmtPattern":Ljava/lang/String;
    .end local v4    # "hourFormats":Ljava/lang/String;
    .restart local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_1
    move-exception v1

    #@cf
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_2

    #@d1
    .line 435
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v4    # "hourFormats":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@d2
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_1

    #@d4
    .line 430
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v3    # "gmtPattern":Ljava/lang/String;
    :catch_3
    move-exception v1

    #@d5
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_0
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "n"    # I
    .param p3, "minDigits"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2162
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    if-ltz p2, :cond_0

    #@7
    const/16 v2, 0x3c

    #@9
    if-ge p2, v2, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :goto_0
    if-nez v2, :cond_1

    #@e
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v2

    #@14
    :cond_0
    move v2, v3

    #@15
    goto :goto_0

    #@16
    .line 2163
    :cond_1
    const/16 v2, 0xa

    #@18
    if-lt p2, v2, :cond_2

    #@1a
    const/4 v1, 0x2

    #@1b
    .line 2164
    .local v1, "numDigits":I
    :goto_1
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_2
    sub-int v2, p3, v1

    #@1e
    if-ge v0, v2, :cond_3

    #@20
    .line 2165
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@22
    aget-object v2, v2, v3

    #@24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 2164
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_2

    #@2a
    .line 2163
    .end local v0    # "i":I
    .end local v1    # "numDigits":I
    :cond_2
    const/4 v1, 0x1

    #@2b
    .restart local v1    # "numDigits":I
    goto :goto_1

    #@2c
    .line 2167
    .restart local v0    # "i":I
    :cond_3
    const/4 v2, 0x2

    #@2d
    if-ne v1, v2, :cond_4

    #@2f
    .line 2168
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@31
    div-int/lit8 v3, p2, 0xa

    #@33
    aget-object v2, v2, v3

    #@35
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 2170
    :cond_4
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@3a
    rem-int/lit8 v3, p2, 0xa

    #@3c
    aget-object v2, v2, v3

    #@3e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 2161
    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 12

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1959
    iput-boolean v5, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    #@3
    .line 1960
    iget-object v7, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@5
    array-length v8, v7

    #@6
    move v6, v5

    #@7
    :goto_0
    if-ge v6, v8, :cond_4

    #@9
    aget-object v3, v7, v6

    #@b
    .line 1961
    .local v3, "items":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@c
    .line 1962
    .local v0, "afterH":Z
    array-length v9, v3

    #@d
    move v4, v5

    #@e
    :goto_1
    if-ge v4, v9, :cond_3

    #@10
    aget-object v2, v3, v4

    #@12
    .line 1963
    .local v2, "item":Ljava/lang/Object;
    instance-of v10, v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@14
    if-eqz v10, :cond_2

    #@16
    move-object v1, v2

    #@17
    .line 1964
    check-cast v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@19
    .line 1965
    .local v1, "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    if-eqz v0, :cond_1

    #@1b
    .line 1966
    const/4 v10, 0x1

    #@1c
    iput-boolean v10, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    #@1e
    .line 1962
    .end local v1    # "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_1

    #@21
    .line 1967
    .restart local v1    # "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    :cond_1
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    #@24
    move-result v10

    #@25
    const/16 v11, 0x48

    #@27
    if-ne v10, v11, :cond_0

    #@29
    .line 1968
    const/4 v0, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 1970
    .end local v1    # "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    :cond_2
    if-eqz v0, :cond_0

    #@2d
    .line 1960
    .end local v2    # "item":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v4, v6, 0x1

    #@2f
    move v6, v4

    #@30
    goto :goto_0

    #@31
    .line 1958
    .end local v0    # "afterH":Z
    .end local v3    # "items":[Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "offsetHM"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2117
    const-string/jumbo v3, "mm"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 2118
    .local v1, "idx_mm":I
    if-gez v1, :cond_0

    #@a
    .line 2119
    new-instance v3, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v4, "Bad time zone hour pattern data"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 2121
    :cond_0
    const-string/jumbo v2, ":"

    #@16
    .line 2122
    .local v2, "sep":Ljava/lang/String;
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "H"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    .line 2123
    .local v0, "idx_H":I
    if-ltz v0, :cond_1

    #@23
    .line 2124
    add-int/lit8 v3, v0, 0x1

    #@25
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 2126
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    add-int/lit8 v4, v1, 0x2

    #@30
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, "ss"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    add-int/lit8 v4, v1, 0x2

    #@45
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    return-object v3
.end method

.method private formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 3
    .param p1, "tz"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 1801
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@3
    move-result-object v1

    #@4
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1802
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_0

    #@e
    .line 1804
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "Etc/Unknown"

    #@15
    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 1805
    if-nez v0, :cond_0

    #@1b
    .line 1807
    const-string/jumbo v0, "Unknown"

    #@1e
    .line 1810
    :cond_0
    return-object v0
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 12
    .param p1, "offset"    # I
    .param p2, "isBasic"    # Z
    .param p3, "useUtcIndicator"    # Z
    .param p4, "isShort"    # Z
    .param p5, "ignoreSeconds"    # Z

    #@0
    .prologue
    .line 1709
    if-gez p1, :cond_1

    #@2
    neg-int v0, p1

    #@3
    .line 1710
    .local v0, "absOffset":I
    :goto_0
    if-eqz p3, :cond_2

    #@5
    const/16 v9, 0x3e8

    #@7
    if-lt v0, v9, :cond_0

    #@9
    if-eqz p5, :cond_2

    #@b
    const v9, 0xea60

    #@e
    if-ge v0, v9, :cond_2

    #@10
    .line 1711
    :cond_0
    const-string/jumbo v9, "Z"

    #@13
    return-object v9

    #@14
    .line 1709
    .end local v0    # "absOffset":I
    :cond_1
    move v0, p1

    #@15
    .restart local v0    # "absOffset":I
    goto :goto_0

    #@16
    .line 1713
    :cond_2
    if-eqz p4, :cond_3

    #@18
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@1a
    .line 1714
    .local v6, "minFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :goto_1
    if-eqz p5, :cond_4

    #@1c
    sget-object v5, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@1e
    .line 1715
    .local v5, "maxFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :goto_2
    if-eqz p2, :cond_5

    #@20
    const/4 v7, 0x0

    #@21
    .line 1720
    :goto_3
    const v9, 0x5265c00

    #@24
    if-lt v0, v9, :cond_6

    #@26
    .line 1721
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v10, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v11, "Offset out of range :"

    #@30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v10

    #@3c
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v9

    #@40
    .line 1713
    .end local v5    # "maxFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .end local v6    # "minFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :cond_3
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@42
    .restart local v6    # "minFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    goto :goto_1

    #@43
    .line 1714
    :cond_4
    sget-object v5, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@45
    .restart local v5    # "maxFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    goto :goto_2

    #@46
    .line 1715
    :cond_5
    const/16 v9, 0x3a

    #@48
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@4b
    move-result-object v7

    #@4c
    .local v7, "sep":Ljava/lang/Character;
    goto :goto_3

    #@4d
    .line 1724
    .end local v7    # "sep":Ljava/lang/Character;
    :cond_6
    const/4 v9, 0x3

    #@4e
    new-array v2, v9, [I

    #@50
    .line 1725
    .local v2, "fields":[I
    const v9, 0x36ee80

    #@53
    div-int v9, v0, v9

    #@55
    const/4 v10, 0x0

    #@56
    aput v9, v2, v10

    #@58
    .line 1726
    const v9, 0x36ee80

    #@5b
    rem-int/2addr v0, v9

    #@5c
    .line 1727
    const v9, 0xea60

    #@5f
    div-int v9, v0, v9

    #@61
    const/4 v10, 0x1

    #@62
    aput v9, v2, v10

    #@64
    .line 1728
    const v9, 0xea60

    #@67
    rem-int/2addr v0, v9

    #@68
    .line 1729
    div-int/lit16 v9, v0, 0x3e8

    #@6a
    const/4 v10, 0x2

    #@6b
    aput v9, v2, v10

    #@6d
    .line 1731
    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@6f
    if-nez v9, :cond_8

    #@71
    const/4 v9, 0x0

    #@72
    aget v9, v2, v9

    #@74
    if-ltz v9, :cond_7

    #@76
    const/4 v9, 0x0

    #@77
    aget v9, v2, v9

    #@79
    const/16 v10, 0x17

    #@7b
    if-gt v9, v10, :cond_7

    #@7d
    const/4 v9, 0x1

    #@7e
    :goto_4
    if-nez v9, :cond_8

    #@80
    new-instance v9, Ljava/lang/AssertionError;

    #@82
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@85
    throw v9

    #@86
    :cond_7
    const/4 v9, 0x0

    #@87
    goto :goto_4

    #@88
    .line 1732
    :cond_8
    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@8a
    if-nez v9, :cond_a

    #@8c
    const/4 v9, 0x1

    #@8d
    aget v9, v2, v9

    #@8f
    if-ltz v9, :cond_9

    #@91
    const/4 v9, 0x1

    #@92
    aget v9, v2, v9

    #@94
    const/16 v10, 0x3b

    #@96
    if-gt v9, v10, :cond_9

    #@98
    const/4 v9, 0x1

    #@99
    :goto_5
    if-nez v9, :cond_a

    #@9b
    new-instance v9, Ljava/lang/AssertionError;

    #@9d
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@a0
    throw v9

    #@a1
    :cond_9
    const/4 v9, 0x0

    #@a2
    goto :goto_5

    #@a3
    .line 1733
    :cond_a
    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@a5
    if-nez v9, :cond_c

    #@a7
    const/4 v9, 0x2

    #@a8
    aget v9, v2, v9

    #@aa
    if-ltz v9, :cond_b

    #@ac
    const/4 v9, 0x2

    #@ad
    aget v9, v2, v9

    #@af
    const/16 v10, 0x3b

    #@b1
    if-gt v9, v10, :cond_b

    #@b3
    const/4 v9, 0x1

    #@b4
    :goto_6
    if-nez v9, :cond_c

    #@b6
    new-instance v9, Ljava/lang/AssertionError;

    #@b8
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@bb
    throw v9

    #@bc
    :cond_b
    const/4 v9, 0x0

    #@bd
    goto :goto_6

    #@be
    .line 1735
    :cond_c
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@c1
    move-result v4

    #@c2
    .line 1736
    .local v4, "lastIdx":I
    :goto_7
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@c5
    move-result v9

    #@c6
    if-le v4, v9, :cond_d

    #@c8
    .line 1737
    aget v9, v2, v4

    #@ca
    if-eqz v9, :cond_11

    #@cc
    .line 1743
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    .line 1744
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v8, 0x2b

    #@d3
    .line 1745
    .local v8, "sign":C
    if-gez p1, :cond_e

    #@d5
    .line 1747
    const/4 v3, 0x0

    #@d6
    .local v3, "idx":I
    :goto_8
    if-gt v3, v4, :cond_e

    #@d8
    .line 1748
    aget v9, v2, v3

    #@da
    if-eqz v9, :cond_12

    #@dc
    .line 1749
    const/16 v8, 0x2d

    #@de
    .line 1754
    .end local v3    # "idx":I
    :cond_e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e1
    .line 1756
    const/4 v3, 0x0

    #@e2
    .restart local v3    # "idx":I
    :goto_9
    if-gt v3, v4, :cond_13

    #@e4
    .line 1757
    if-eqz v7, :cond_f

    #@e6
    if-eqz v3, :cond_f

    #@e8
    .line 1758
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    .line 1760
    :cond_f
    aget v9, v2, v3

    #@ed
    const/16 v10, 0xa

    #@ef
    if-ge v9, v10, :cond_10

    #@f1
    .line 1761
    const/16 v9, 0x30

    #@f3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f6
    .line 1763
    :cond_10
    aget v9, v2, v3

    #@f8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    .line 1756
    add-int/lit8 v3, v3, 0x1

    #@fd
    goto :goto_9

    #@fe
    .line 1740
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "idx":I
    .end local v8    # "sign":C
    :cond_11
    add-int/lit8 v4, v4, -0x1

    #@100
    goto :goto_7

    #@101
    .line 1747
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v3    # "idx":I
    .restart local v8    # "sign":C
    :cond_12
    add-int/lit8 v3, v3, 0x1

    #@103
    goto :goto_8

    #@104
    .line 1765
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v9

    #@108
    return-object v9
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 13
    .param p1, "offset"    # I
    .param p2, "isShort"    # Z

    #@0
    .prologue
    const v12, 0x36ee80

    #@3
    const v10, 0xea60

    #@6
    const/16 v11, 0x3b

    #@8
    const/4 v9, 0x2

    #@9
    const/4 v8, 0x0

    #@a
    .line 1634
    if-nez p1, :cond_0

    #@c
    .line 1635
    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@e
    return-object v8

    #@f
    .line 1638
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 1639
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    #@15
    .line 1640
    .local v7, "positive":Z
    if-gez p1, :cond_1

    #@17
    .line 1641
    neg-int p1, p1

    #@18
    .line 1642
    const/4 v7, 0x0

    #@19
    .line 1645
    :cond_1
    div-int v3, p1, v12

    #@1b
    .line 1646
    .local v3, "offsetH":I
    rem-int/2addr p1, v12

    #@1c
    .line 1647
    div-int v4, p1, v10

    #@1e
    .line 1648
    .local v4, "offsetM":I
    rem-int/2addr p1, v10

    #@1f
    .line 1649
    div-int/lit16 v6, p1, 0x3e8

    #@21
    .line 1651
    .local v6, "offsetS":I
    const/16 v10, 0x17

    #@23
    if-gt v3, v10, :cond_2

    #@25
    if-le v4, v11, :cond_3

    #@27
    .line 1652
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v9, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v10, "Offset out of range :"

    #@31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v8

    #@41
    .line 1651
    :cond_3
    if-gt v6, v11, :cond_2

    #@43
    .line 1656
    if-eqz v7, :cond_7

    #@45
    .line 1657
    if-eqz v6, :cond_5

    #@47
    .line 1658
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@49
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@4b
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@4e
    move-result v11

    #@4f
    aget-object v5, v10, v11

    #@51
    .line 1675
    .local v5, "offsetPatternItems":[Ljava/lang/Object;
    :goto_0
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    #@53
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1677
    array-length v11, v5

    #@57
    move v10, v8

    #@58
    :goto_1
    if-ge v10, v11, :cond_c

    #@5a
    aget-object v2, v5, v10

    #@5c
    .line 1678
    .local v2, "item":Ljava/lang/Object;
    instance-of v8, v2, Ljava/lang/String;

    #@5e
    if-eqz v8, :cond_a

    #@60
    .line 1680
    check-cast v2, Ljava/lang/String;

    #@62
    .end local v2    # "item":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 1677
    :cond_4
    :goto_2
    add-int/lit8 v8, v10, 0x1

    #@67
    move v10, v8

    #@68
    goto :goto_1

    #@69
    .line 1659
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_5
    if-nez v4, :cond_6

    #@6b
    if-eqz p2, :cond_6

    #@6d
    .line 1662
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@6f
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@71
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@74
    move-result v11

    #@75
    aget-object v5, v10, v11

    #@77
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_0

    #@78
    .line 1660
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_6
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@7a
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@7c
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@7f
    move-result v11

    #@80
    aget-object v5, v10, v11

    #@82
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_0

    #@83
    .line 1665
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_7
    if-eqz v6, :cond_8

    #@85
    .line 1666
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@87
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@89
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@8c
    move-result v11

    #@8d
    aget-object v5, v10, v11

    #@8f
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_0

    #@90
    .line 1667
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_8
    if-nez v4, :cond_9

    #@92
    if-eqz p2, :cond_9

    #@94
    .line 1670
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@96
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@98
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@9b
    move-result v11

    #@9c
    aget-object v5, v10, v11

    #@9e
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_0

    #@9f
    .line 1668
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@a1
    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@a3
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@a6
    move-result v11

    #@a7
    aget-object v5, v10, v11

    #@a9
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_0

    #@aa
    .line 1681
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_a
    instance-of v8, v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@ac
    if-eqz v8, :cond_4

    #@ae
    move-object v1, v2

    #@af
    .line 1683
    check-cast v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@b1
    .line 1684
    .local v1, "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    #@b4
    move-result v8

    #@b5
    sparse-switch v8, :sswitch_data_0

    #@b8
    goto :goto_2

    #@b9
    .line 1686
    :sswitch_0
    if-eqz p2, :cond_b

    #@bb
    const/4 v8, 0x1

    #@bc
    :goto_3
    invoke-direct {p0, v0, v3, v8}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    #@bf
    goto :goto_2

    #@c0
    :cond_b
    move v8, v9

    #@c1
    goto :goto_3

    #@c2
    .line 1689
    :sswitch_1
    invoke-direct {p0, v0, v4, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    #@c5
    goto :goto_2

    #@c6
    .line 1692
    :sswitch_2
    invoke-direct {p0, v0, v6, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    #@c9
    goto :goto_2

    #@ca
    .line 1697
    .end local v1    # "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    .end local v2    # "item":Ljava/lang/Object;
    :cond_c
    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    #@cc
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 1698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v8

    #@d3
    return-object v8

    #@d4
    .line 1684
    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 6
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "stdType"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "dstType"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p4, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "J",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p6, "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1779
    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@4
    if-nez v4, :cond_2

    #@6
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@8
    if-eq p2, v4, :cond_0

    #@a
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@c
    if-ne p2, v4, :cond_1

    #@e
    :cond_0
    move v4, v2

    #@f
    :goto_0
    if-nez v4, :cond_2

    #@11
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v2

    #@17
    :cond_1
    move v4, v3

    #@18
    goto :goto_0

    #@19
    .line 1780
    :cond_2
    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@1b
    if-nez v4, :cond_5

    #@1d
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@1f
    if-eq p3, v4, :cond_3

    #@21
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@23
    if-ne p3, v4, :cond_4

    #@25
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    #@27
    new-instance v2, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v2

    #@2d
    :cond_4
    move v2, v3

    #@2e
    goto :goto_1

    #@2f
    .line 1782
    :cond_5
    new-instance v2, Ljava/util/Date;

    #@31
    invoke-direct {v2, p4, p5}, Ljava/util/Date;-><init>(J)V

    #@34
    invoke-virtual {p1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@37
    move-result v0

    #@38
    .line 1783
    .local v0, "isDaylight":Z
    if-eqz v0, :cond_7

    #@3a
    .line 1784
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v2, v3, p3, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 1787
    .local v1, "name":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_6

    #@48
    if-eqz p6, :cond_6

    #@4a
    .line 1788
    if-eqz v0, :cond_8

    #@4c
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@4e
    :goto_3
    iput-object v2, p6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@50
    .line 1790
    :cond_6
    return-object v1

    #@51
    .line 1785
    .end local v1    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@54
    move-result-object v2

    #@55
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2, v3, p2, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    #@5e
    .line 1788
    :cond_8
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@60
    goto :goto_3
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 487
    if-nez p0, :cond_0

    #@2
    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 490
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    #@d
    invoke-virtual {v0, p0, p0}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    #@13
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 505
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 2

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 547
    monitor-enter p0

    #@5
    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 549
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    #@b
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@d
    invoke-direct {v0, v1}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    #@10
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 553
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    #@15
    return-object v0

    #@16
    .line 547
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1847
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1848
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@7
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@d
    .line 1849
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1850
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@17
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@1a
    move-result-object v0

    #@1b
    .line 1851
    .local v0, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@21
    .line 1852
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_0

    #@29
    .line 1853
    const-string/jumbo v1, "001"

    #@2c
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    #@2e
    .line 1857
    .end local v0    # "tmp":Landroid/icu/util/ULocale;
    :cond_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit p0

    #@31
    return-object v1

    #@32
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method private getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 2
    .param p1, "nameType"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    .line 1866
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 1876
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@f
    return-object v0

    #@10
    .line 1869
    :pswitch_0
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@12
    return-object v0

    #@13
    .line 1873
    :pswitch_1
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@15
    return-object v0

    #@16
    .line 1866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 2179
    if-nez p1, :cond_0

    #@2
    .line 2181
    const-string/jumbo v0, "Etc/GMT"

    #@5
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 2183
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(I)Landroid/icu/util/TimeZone;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 530
    monitor-enter p0

    #@5
    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 532
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@b
    invoke-static {v0}, Landroid/icu/impl/TimeZoneGenericNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 536
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@14
    return-object v0

    #@15
    .line 530
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "mzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1827
    move-object v0, p1

    #@1
    .line 1828
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_2

    #@3
    .line 1829
    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@5
    if-nez v1, :cond_1

    #@7
    if-eqz p2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    if-nez v1, :cond_1

    #@c
    new-instance v1, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v1

    #@12
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0

    #@14
    .line 1830
    :cond_1
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@16
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, p2, v2}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1831
    if-nez v0, :cond_2

    #@20
    .line 1832
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Invalid mzID: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 1835
    :cond_2
    return-object v0
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 11
    .param p1, "gmtOffsetPatterns"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1939
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@4
    move-result-object v5

    #@5
    array-length v3, v5

    #@6
    .line 1940
    .local v3, "size":I
    array-length v5, p1

    #@7
    if-ge v5, v3, :cond_0

    #@9
    .line 1941
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v6, "Insufficient number of elements in gmtOffsetPatterns"

    #@e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 1943
    :cond_0
    new-array v0, v3, [[Ljava/lang/Object;

    #@14
    .line 1944
    .local v0, "gmtOffsetPatternItems":[[Ljava/lang/Object;
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@17
    move-result-object v7

    #@18
    array-length v8, v7

    #@19
    move v5, v6

    #@1a
    :goto_0
    if-ge v5, v8, :cond_1

    #@1c
    aget-object v4, v7, v5

    #@1e
    .line 1945
    .local v4, "t":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@21
    move-result v1

    #@22
    .line 1948
    .local v1, "idx":I
    aget-object v9, p1, v1

    #@24
    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap2(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    invoke-static {v9, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 1949
    .local v2, "parsedItems":[Ljava/lang/Object;
    aput-object v2, v0, v1

    #@2e
    .line 1944
    add-int/lit8 v5, v5, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1952
    .end local v1    # "idx":I
    .end local v2    # "parsedItems":[Ljava/lang/Object;
    .end local v4    # "t":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_1
    new-array v5, v3, [Ljava/lang/String;

    #@33
    iput-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@35
    .line 1953
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@37
    invoke-static {p1, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 1954
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@3c
    .line 1955
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    #@3f
    .line 1938
    return-void
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 4
    .param p1, "gmtPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1890
    const-string/jumbo v1, "{0}"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 1891
    .local v0, "idx":I
    if-gez v0, :cond_0

    #@a
    .line 1892
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Bad localized GMT pattern: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1894
    :cond_0
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@26
    .line 1895
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    #@30
    .line 1896
    add-int/lit8 v1, v0, 0x3

    #@32
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    #@3c
    .line 1888
    return-void
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "minFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p3, "maxFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p4, "fixedHourWidth"    # Z

    #@0
    .prologue
    .line 2816
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v10

    #@4
    .line 2818
    .local v10, "start":I
    invoke-virtual {p2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@7
    move-result v11

    #@8
    add-int/lit8 v11, v11, 0x1

    #@a
    mul-int/lit8 v12, v11, 0x2

    #@c
    if-eqz p4, :cond_2

    #@e
    const/4 v11, 0x0

    #@f
    :goto_0
    sub-int v7, v12, v11

    #@11
    .line 2819
    .local v7, "minDigits":I
    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@14
    move-result v11

    #@15
    add-int/lit8 v11, v11, 0x1

    #@17
    mul-int/lit8 v5, v11, 0x2

    #@19
    .line 2821
    .local v5, "maxDigits":I
    new-array v2, v5, [I

    #@1b
    .line 2822
    .local v2, "digits":[I
    const/4 v8, 0x0

    #@1c
    .line 2823
    .local v8, "numDigits":I
    move v4, v10

    #@1d
    .line 2824
    .local v4, "idx":I
    :goto_1
    array-length v11, v2

    #@1e
    if-ge v8, v11, :cond_0

    #@20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v11

    #@24
    if-ge v4, v11, :cond_0

    #@26
    .line 2825
    const-string/jumbo v11, "0123456789"

    #@29
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v12

    #@2d
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    #@30
    move-result v1

    #@31
    .line 2826
    .local v1, "digit":I
    if-gez v1, :cond_3

    #@33
    .line 2834
    .end local v1    # "digit":I
    :cond_0
    if-eqz p4, :cond_1

    #@35
    and-int/lit8 v11, v8, 0x1

    #@37
    if-eqz v11, :cond_1

    #@39
    .line 2836
    add-int/lit8 v8, v8, -0x1

    #@3b
    .line 2839
    :cond_1
    if-ge v8, v7, :cond_4

    #@3d
    .line 2840
    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@40
    .line 2841
    const/4 v11, 0x0

    #@41
    return v11

    #@42
    .line 2818
    .end local v2    # "digits":[I
    .end local v4    # "idx":I
    .end local v5    # "maxDigits":I
    .end local v7    # "minDigits":I
    .end local v8    # "numDigits":I
    :cond_2
    const/4 v11, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2829
    .restart local v1    # "digit":I
    .restart local v2    # "digits":[I
    .restart local v4    # "idx":I
    .restart local v5    # "maxDigits":I
    .restart local v7    # "minDigits":I
    .restart local v8    # "numDigits":I
    :cond_3
    aput v1, v2, v8

    #@46
    .line 2830
    add-int/lit8 v8, v8, 0x1

    #@48
    .line 2831
    add-int/lit8 v4, v4, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 2844
    .end local v1    # "digit":I
    :cond_4
    const/4 v3, 0x0

    #@4c
    .local v3, "hour":I
    const/4 v6, 0x0

    #@4d
    .local v6, "min":I
    const/4 v9, 0x0

    #@4e
    .line 2845
    .local v9, "sec":I
    const/4 v0, 0x0

    #@4f
    .line 2846
    .local v0, "bParsed":Z
    :goto_2
    if-lt v8, v7, :cond_5

    #@51
    .line 2847
    packed-switch v8, :pswitch_data_0

    #@54
    .line 2874
    :goto_3
    const/16 v11, 0x17

    #@56
    if-gt v3, v11, :cond_6

    #@58
    const/16 v11, 0x3b

    #@5a
    if-gt v6, v11, :cond_6

    #@5c
    const/16 v11, 0x3b

    #@5e
    if-gt v9, v11, :cond_6

    #@60
    .line 2876
    const/4 v0, 0x1

    #@61
    .line 2885
    :cond_5
    if-nez v0, :cond_8

    #@63
    .line 2886
    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@66
    .line 2887
    const/4 v11, 0x0

    #@67
    return v11

    #@68
    .line 2849
    :pswitch_0
    const/4 v11, 0x0

    #@69
    aget v3, v2, v11

    #@6b
    goto :goto_3

    #@6c
    .line 2852
    :pswitch_1
    const/4 v11, 0x0

    #@6d
    aget v11, v2, v11

    #@6f
    mul-int/lit8 v11, v11, 0xa

    #@71
    const/4 v12, 0x1

    #@72
    aget v12, v2, v12

    #@74
    add-int v3, v11, v12

    #@76
    .line 2853
    goto :goto_3

    #@77
    .line 2855
    :pswitch_2
    const/4 v11, 0x0

    #@78
    aget v3, v2, v11

    #@7a
    .line 2856
    const/4 v11, 0x1

    #@7b
    aget v11, v2, v11

    #@7d
    mul-int/lit8 v11, v11, 0xa

    #@7f
    const/4 v12, 0x2

    #@80
    aget v12, v2, v12

    #@82
    add-int v6, v11, v12

    #@84
    .line 2857
    goto :goto_3

    #@85
    .line 2859
    :pswitch_3
    const/4 v11, 0x0

    #@86
    aget v11, v2, v11

    #@88
    mul-int/lit8 v11, v11, 0xa

    #@8a
    const/4 v12, 0x1

    #@8b
    aget v12, v2, v12

    #@8d
    add-int v3, v11, v12

    #@8f
    .line 2860
    const/4 v11, 0x2

    #@90
    aget v11, v2, v11

    #@92
    mul-int/lit8 v11, v11, 0xa

    #@94
    const/4 v12, 0x3

    #@95
    aget v12, v2, v12

    #@97
    add-int v6, v11, v12

    #@99
    .line 2861
    goto :goto_3

    #@9a
    .line 2863
    :pswitch_4
    const/4 v11, 0x0

    #@9b
    aget v3, v2, v11

    #@9d
    .line 2864
    const/4 v11, 0x1

    #@9e
    aget v11, v2, v11

    #@a0
    mul-int/lit8 v11, v11, 0xa

    #@a2
    const/4 v12, 0x2

    #@a3
    aget v12, v2, v12

    #@a5
    add-int v6, v11, v12

    #@a7
    .line 2865
    const/4 v11, 0x3

    #@a8
    aget v11, v2, v11

    #@aa
    mul-int/lit8 v11, v11, 0xa

    #@ac
    const/4 v12, 0x4

    #@ad
    aget v12, v2, v12

    #@af
    add-int v9, v11, v12

    #@b1
    .line 2866
    goto :goto_3

    #@b2
    .line 2868
    :pswitch_5
    const/4 v11, 0x0

    #@b3
    aget v11, v2, v11

    #@b5
    mul-int/lit8 v11, v11, 0xa

    #@b7
    const/4 v12, 0x1

    #@b8
    aget v12, v2, v12

    #@ba
    add-int v3, v11, v12

    #@bc
    .line 2869
    const/4 v11, 0x2

    #@bd
    aget v11, v2, v11

    #@bf
    mul-int/lit8 v11, v11, 0xa

    #@c1
    const/4 v12, 0x3

    #@c2
    aget v12, v2, v12

    #@c4
    add-int v6, v11, v12

    #@c6
    .line 2870
    const/4 v11, 0x4

    #@c7
    aget v11, v2, v11

    #@c9
    mul-int/lit8 v11, v11, 0xa

    #@cb
    const/4 v12, 0x5

    #@cc
    aget v12, v2, v12

    #@ce
    add-int v9, v11, v12

    #@d0
    .line 2871
    goto :goto_3

    #@d1
    .line 2881
    :cond_6
    if-eqz p4, :cond_7

    #@d3
    const/4 v11, 0x2

    #@d4
    :goto_4
    sub-int/2addr v8, v11

    #@d5
    .line 2882
    const/4 v9, 0x0

    #@d6
    const/4 v6, 0x0

    #@d7
    const/4 v3, 0x0

    #@d8
    goto/16 :goto_2

    #@da
    .line 2881
    :cond_7
    const/4 v11, 0x1

    #@db
    goto :goto_4

    #@dc
    .line 2889
    :cond_8
    add-int v11, v10, v8

    #@de
    invoke-virtual {p1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    #@e1
    .line 2890
    mul-int/lit8 v11, v3, 0x3c

    #@e3
    add-int/2addr v11, v6

    #@e4
    mul-int/lit8 v11, v11, 0x3c

    #@e6
    add-int/2addr v11, v9

    #@e7
    mul-int/lit16 v11, v11, 0x3e8

    #@e9
    return v11

    #@ea
    .line 2847
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "parsedLen"    # [I

    #@0
    .prologue
    .line 2561
    const/4 v0, 0x6

    #@1
    .line 2562
    .local v0, "MAXDIGITS":I
    const/4 v11, 0x6

    #@2
    new-array v1, v11, [I

    #@4
    .line 2563
    .local v1, "digits":[I
    const/4 v11, 0x6

    #@5
    new-array v9, v11, [I

    #@7
    .line 2566
    .local v9, "parsed":[I
    move v4, p2

    #@8
    .line 2567
    .local v4, "idx":I
    const/4 v11, 0x1

    #@9
    new-array v5, v11, [I

    #@b
    const/4 v11, 0x0

    #@c
    const/4 v12, 0x0

    #@d
    aput v11, v5, v12

    #@f
    .line 2568
    .local v5, "len":[I
    const/4 v7, 0x0

    #@10
    .line 2569
    .local v7, "numDigits":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    const/4 v11, 0x6

    #@12
    if-ge v3, v11, :cond_0

    #@14
    .line 2570
    invoke-direct {p0, p1, v4, v5}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    #@17
    move-result v11

    #@18
    aput v11, v1, v3

    #@1a
    .line 2571
    aget v11, v1, v3

    #@1c
    if-gez v11, :cond_1

    #@1e
    .line 2579
    :cond_0
    if-nez v7, :cond_2

    #@20
    .line 2580
    const/4 v11, 0x0

    #@21
    const/4 v12, 0x0

    #@22
    aput v11, p3, v12

    #@24
    .line 2581
    const/4 v11, 0x0

    #@25
    return v11

    #@26
    .line 2574
    :cond_1
    const/4 v11, 0x0

    #@27
    aget v11, v5, v11

    #@29
    add-int/2addr v4, v11

    #@2a
    .line 2575
    sub-int v11, v4, p2

    #@2c
    aput v11, v9, v3

    #@2e
    .line 2576
    add-int/lit8 v7, v7, 0x1

    #@30
    .line 2569
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 2584
    :cond_2
    const/4 v8, 0x0

    #@34
    .line 2585
    .local v8, "offset":I
    :goto_1
    if-lez v7, :cond_5

    #@36
    .line 2586
    const/4 v2, 0x0

    #@37
    .line 2587
    .local v2, "hour":I
    const/4 v6, 0x0

    #@38
    .line 2588
    .local v6, "min":I
    const/4 v10, 0x0

    #@39
    .line 2590
    .local v10, "sec":I
    sget-boolean v11, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@3b
    if-nez v11, :cond_4

    #@3d
    if-lez v7, :cond_3

    #@3f
    const/4 v11, 0x6

    #@40
    if-gt v7, v11, :cond_3

    #@42
    const/4 v11, 0x1

    #@43
    :goto_2
    if-nez v11, :cond_4

    #@45
    new-instance v11, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v11

    #@4b
    :cond_3
    const/4 v11, 0x0

    #@4c
    goto :goto_2

    #@4d
    .line 2591
    :cond_4
    packed-switch v7, :pswitch_data_0

    #@50
    .line 2617
    :goto_3
    const/16 v11, 0x17

    #@52
    if-gt v2, v11, :cond_6

    #@54
    const/16 v11, 0x3b

    #@56
    if-gt v6, v11, :cond_6

    #@58
    const/16 v11, 0x3b

    #@5a
    if-gt v10, v11, :cond_6

    #@5c
    .line 2619
    const v11, 0x36ee80

    #@5f
    mul-int/2addr v11, v2

    #@60
    const v12, 0xea60

    #@63
    mul-int/2addr v12, v6

    #@64
    add-int/2addr v11, v12

    #@65
    mul-int/lit16 v12, v10, 0x3e8

    #@67
    add-int v8, v11, v12

    #@69
    .line 2620
    add-int/lit8 v11, v7, -0x1

    #@6b
    aget v11, v9, v11

    #@6d
    const/4 v12, 0x0

    #@6e
    aput v11, p3, v12

    #@70
    .line 2625
    .end local v2    # "hour":I
    .end local v6    # "min":I
    .end local v10    # "sec":I
    :cond_5
    return v8

    #@71
    .line 2593
    .restart local v2    # "hour":I
    .restart local v6    # "min":I
    .restart local v10    # "sec":I
    :pswitch_0
    const/4 v11, 0x0

    #@72
    aget v2, v1, v11

    #@74
    goto :goto_3

    #@75
    .line 2596
    :pswitch_1
    const/4 v11, 0x0

    #@76
    aget v11, v1, v11

    #@78
    mul-int/lit8 v11, v11, 0xa

    #@7a
    const/4 v12, 0x1

    #@7b
    aget v12, v1, v12

    #@7d
    add-int v2, v11, v12

    #@7f
    .line 2597
    goto :goto_3

    #@80
    .line 2599
    :pswitch_2
    const/4 v11, 0x0

    #@81
    aget v2, v1, v11

    #@83
    .line 2600
    const/4 v11, 0x1

    #@84
    aget v11, v1, v11

    #@86
    mul-int/lit8 v11, v11, 0xa

    #@88
    const/4 v12, 0x2

    #@89
    aget v12, v1, v12

    #@8b
    add-int v6, v11, v12

    #@8d
    .line 2601
    goto :goto_3

    #@8e
    .line 2603
    :pswitch_3
    const/4 v11, 0x0

    #@8f
    aget v11, v1, v11

    #@91
    mul-int/lit8 v11, v11, 0xa

    #@93
    const/4 v12, 0x1

    #@94
    aget v12, v1, v12

    #@96
    add-int v2, v11, v12

    #@98
    .line 2604
    const/4 v11, 0x2

    #@99
    aget v11, v1, v11

    #@9b
    mul-int/lit8 v11, v11, 0xa

    #@9d
    const/4 v12, 0x3

    #@9e
    aget v12, v1, v12

    #@a0
    add-int v6, v11, v12

    #@a2
    .line 2605
    goto :goto_3

    #@a3
    .line 2607
    :pswitch_4
    const/4 v11, 0x0

    #@a4
    aget v2, v1, v11

    #@a6
    .line 2608
    const/4 v11, 0x1

    #@a7
    aget v11, v1, v11

    #@a9
    mul-int/lit8 v11, v11, 0xa

    #@ab
    const/4 v12, 0x2

    #@ac
    aget v12, v1, v12

    #@ae
    add-int v6, v11, v12

    #@b0
    .line 2609
    const/4 v11, 0x3

    #@b1
    aget v11, v1, v11

    #@b3
    mul-int/lit8 v11, v11, 0xa

    #@b5
    const/4 v12, 0x4

    #@b6
    aget v12, v1, v12

    #@b8
    add-int v10, v11, v12

    #@ba
    .line 2610
    goto :goto_3

    #@bb
    .line 2612
    :pswitch_5
    const/4 v11, 0x0

    #@bc
    aget v11, v1, v11

    #@be
    mul-int/lit8 v11, v11, 0xa

    #@c0
    const/4 v12, 0x1

    #@c1
    aget v12, v1, v12

    #@c3
    add-int v2, v11, v12

    #@c5
    .line 2613
    const/4 v11, 0x2

    #@c6
    aget v11, v1, v11

    #@c8
    mul-int/lit8 v11, v11, 0xa

    #@ca
    const/4 v12, 0x3

    #@cb
    aget v12, v1, v12

    #@cd
    add-int v6, v11, v12

    #@cf
    .line 2614
    const/4 v11, 0x4

    #@d0
    aget v11, v1, v11

    #@d2
    mul-int/lit8 v11, v11, 0xa

    #@d4
    const/4 v12, 0x5

    #@d5
    aget v12, v1, v12

    #@d7
    add-int v10, v11, v12

    #@d9
    .line 2615
    goto/16 :goto_3

    #@db
    .line 2623
    :cond_6
    add-int/lit8 v7, v7, -0x1

    #@dd
    goto/16 :goto_1

    #@df
    .line 2591
    nop

    #@e0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "sep"    # C
    .param p3, "minFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p4, "maxFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@0
    .prologue
    .line 2908
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v9

    #@4
    .line 2909
    .local v9, "start":I
    const/4 v10, 0x0

    #@5
    const/4 v11, 0x0

    #@6
    const/4 v12, 0x0

    #@7
    filled-new-array {v10, v11, v12}, [I

    #@a
    move-result-object v4

    #@b
    .line 2910
    .local v4, "fieldVal":[I
    const/4 v10, 0x0

    #@c
    const/4 v11, -0x1

    #@d
    const/4 v12, -0x1

    #@e
    filled-new-array {v10, v11, v12}, [I

    #@11
    move-result-object v3

    #@12
    .line 2911
    .local v3, "fieldLen":[I
    move v5, v9

    #@13
    .local v5, "idx":I
    const/4 v2, 0x0

    #@14
    .local v2, "fieldIdx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v10

    #@18
    if-ge v5, v10, :cond_0

    #@1a
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@1d
    move-result v10

    #@1e
    if-gt v2, v10, :cond_0

    #@20
    .line 2912
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 2913
    .local v0, "c":C
    if-ne v0, p2, :cond_6

    #@26
    .line 2914
    if-nez v2, :cond_5

    #@28
    .line 2915
    const/4 v10, 0x0

    #@29
    aget v10, v3, v10

    #@2b
    if-nez v10, :cond_3

    #@2d
    .line 2946
    .end local v0    # "c":C
    :cond_0
    const/4 v6, 0x0

    #@2e
    .line 2947
    .local v6, "offset":I
    const/4 v8, 0x0

    #@2f
    .line 2948
    .local v8, "parsedLen":I
    const/4 v7, 0x0

    #@30
    .line 2951
    .local v7, "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    const/4 v10, 0x0

    #@31
    aget v10, v3, v10

    #@33
    if-nez v10, :cond_7

    #@35
    .line 2981
    .end local v7    # "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    #@37
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@3a
    move-result v10

    #@3b
    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    #@3e
    move-result v11

    #@3f
    if-ge v10, v11, :cond_9

    #@41
    .line 2982
    :cond_2
    invoke-virtual {p1, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@44
    .line 2983
    const/4 v10, 0x0

    #@45
    return v10

    #@46
    .line 2920
    .end local v6    # "offset":I
    .end local v8    # "parsedLen":I
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@48
    .line 2911
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 2922
    :cond_5
    aget v10, v3, v2

    #@4d
    const/4 v11, -0x1

    #@4e
    if-ne v10, v11, :cond_0

    #@50
    .line 2926
    const/4 v10, 0x0

    #@51
    aput v10, v3, v2

    #@53
    goto :goto_2

    #@54
    .line 2929
    :cond_6
    aget v10, v3, v2

    #@56
    const/4 v11, -0x1

    #@57
    if-eq v10, v11, :cond_0

    #@59
    .line 2933
    const-string/jumbo v10, "0123456789"

    #@5c
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    #@5f
    move-result v1

    #@60
    .line 2934
    .local v1, "digit":I
    if-ltz v1, :cond_0

    #@62
    .line 2938
    aget v10, v4, v2

    #@64
    mul-int/lit8 v10, v10, 0xa

    #@66
    add-int/2addr v10, v1

    #@67
    aput v10, v4, v2

    #@69
    .line 2939
    aget v10, v3, v2

    #@6b
    add-int/lit8 v10, v10, 0x1

    #@6d
    aput v10, v3, v2

    #@6f
    .line 2940
    aget v10, v3, v2

    #@71
    const/4 v11, 0x2

    #@72
    if-lt v10, v11, :cond_4

    #@74
    .line 2942
    add-int/lit8 v2, v2, 0x1

    #@76
    goto :goto_2

    #@77
    .line 2954
    .end local v0    # "c":C
    .end local v1    # "digit":I
    .restart local v6    # "offset":I
    .restart local v7    # "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .restart local v8    # "parsedLen":I
    :cond_7
    const/4 v10, 0x0

    #@78
    aget v10, v4, v10

    #@7a
    const/16 v11, 0x17

    #@7c
    if-le v10, v11, :cond_8

    #@7e
    .line 2955
    const/4 v10, 0x0

    #@7f
    aget v10, v4, v10

    #@81
    div-int/lit8 v10, v10, 0xa

    #@83
    const v11, 0x36ee80

    #@86
    mul-int v6, v10, v11

    #@88
    .line 2956
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@8a
    .line 2957
    .local v7, "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    const/4 v8, 0x1

    #@8b
    .line 2958
    goto :goto_1

    #@8c
    .line 2960
    .local v7, "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :cond_8
    const/4 v10, 0x0

    #@8d
    aget v10, v4, v10

    #@8f
    const v11, 0x36ee80

    #@92
    mul-int v6, v10, v11

    #@94
    .line 2961
    const/4 v10, 0x0

    #@95
    aget v8, v3, v10

    #@97
    .line 2962
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@99
    .line 2965
    .local v7, "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    const/4 v10, 0x1

    #@9a
    aget v10, v3, v10

    #@9c
    const/4 v11, 0x2

    #@9d
    if-ne v10, v11, :cond_1

    #@9f
    const/4 v10, 0x1

    #@a0
    aget v10, v4, v10

    #@a2
    const/16 v11, 0x3b

    #@a4
    if-gt v10, v11, :cond_1

    #@a6
    .line 2968
    const/4 v10, 0x1

    #@a7
    aget v10, v4, v10

    #@a9
    const v11, 0xea60

    #@ac
    mul-int/2addr v10, v11

    #@ad
    add-int/2addr v6, v10

    #@ae
    .line 2969
    const/4 v10, 0x1

    #@af
    aget v10, v3, v10

    #@b1
    add-int/lit8 v10, v10, 0x1

    #@b3
    add-int/2addr v8, v10

    #@b4
    .line 2970
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@b6
    .line 2973
    const/4 v10, 0x2

    #@b7
    aget v10, v3, v10

    #@b9
    const/4 v11, 0x2

    #@ba
    if-ne v10, v11, :cond_1

    #@bc
    const/4 v10, 0x2

    #@bd
    aget v10, v4, v10

    #@bf
    const/16 v11, 0x3b

    #@c1
    if-gt v10, v11, :cond_1

    #@c3
    .line 2976
    const/4 v10, 0x2

    #@c4
    aget v10, v4, v10

    #@c6
    mul-int/lit16 v10, v10, 0x3e8

    #@c8
    add-int/2addr v6, v10

    #@c9
    .line 2977
    const/4 v10, 0x2

    #@ca
    aget v10, v3, v10

    #@cc
    add-int/lit8 v10, v10, 0x1

    #@ce
    add-int/2addr v8, v10

    #@cf
    .line 2978
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@d1
    goto/16 :goto_1

    #@d3
    .line 2986
    .end local v7    # "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :cond_9
    add-int v10, v9, v8

    #@d5
    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@d8
    .line 2987
    return v6
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "separator"    # C
    .param p4, "parsedLen"    # [I

    #@0
    .prologue
    .line 2515
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v18

    #@4
    .line 2516
    .local v18, "max":I
    move/from16 v3, p2

    #@6
    .line 2517
    .local v3, "idx":I
    const/4 v1, 0x1

    #@7
    new-array v8, v1, [I

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v8, v2

    #@d
    .line 2518
    .local v8, "len":[I
    const/16 v17, 0x0

    #@f
    .local v17, "hour":I
    const/16 v19, 0x0

    #@11
    .local v19, "min":I
    const/16 v20, 0x0

    #@13
    .line 2521
    .local v20, "sec":I
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x2

    #@15
    const/4 v6, 0x0

    #@16
    const/16 v7, 0x17

    #@18
    move-object/from16 v1, p0

    #@1a
    move-object/from16 v2, p1

    #@1c
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@1f
    move-result v17

    #@20
    .line 2522
    const/4 v1, 0x0

    #@21
    aget v1, v8, v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 2544
    :cond_0
    :goto_0
    move/from16 v0, p2

    #@27
    if-ne v3, v0, :cond_2

    #@29
    .line 2545
    const/4 v1, 0x0

    #@2a
    const/4 v2, 0x0

    #@2b
    aput v1, p4, v2

    #@2d
    .line 2546
    const/4 v1, 0x0

    #@2e
    return v1

    #@2f
    .line 2525
    :cond_1
    const/4 v1, 0x0

    #@30
    aget v1, v8, v1

    #@32
    add-int/2addr v3, v1

    #@33
    .line 2527
    add-int/lit8 v1, v3, 0x1

    #@35
    move/from16 v0, v18

    #@37
    if-ge v1, v0, :cond_0

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    move/from16 v0, p3

    #@41
    if-ne v1, v0, :cond_0

    #@43
    .line 2528
    add-int/lit8 v11, v3, 0x1

    #@45
    const/4 v12, 0x2

    #@46
    const/4 v13, 0x2

    #@47
    const/4 v14, 0x0

    #@48
    const/16 v15, 0x3b

    #@4a
    move-object/from16 v9, p0

    #@4c
    move-object/from16 v10, p1

    #@4e
    move-object/from16 v16, v8

    #@50
    invoke-direct/range {v9 .. v16}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@53
    move-result v19

    #@54
    .line 2529
    const/4 v1, 0x0

    #@55
    aget v1, v8, v1

    #@57
    if-eqz v1, :cond_0

    #@59
    .line 2532
    const/4 v1, 0x0

    #@5a
    aget v1, v8, v1

    #@5c
    add-int/lit8 v1, v1, 0x1

    #@5e
    add-int/2addr v3, v1

    #@5f
    .line 2534
    add-int/lit8 v1, v3, 0x1

    #@61
    move/from16 v0, v18

    #@63
    if-ge v1, v0, :cond_0

    #@65
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v1

    #@6b
    move/from16 v0, p3

    #@6d
    if-ne v1, v0, :cond_0

    #@6f
    .line 2535
    add-int/lit8 v11, v3, 0x1

    #@71
    const/4 v12, 0x2

    #@72
    const/4 v13, 0x2

    #@73
    const/4 v14, 0x0

    #@74
    const/16 v15, 0x3b

    #@76
    move-object/from16 v9, p0

    #@78
    move-object/from16 v10, p1

    #@7a
    move-object/from16 v16, v8

    #@7c
    invoke-direct/range {v9 .. v16}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@7f
    move-result v20

    #@80
    .line 2536
    const/4 v1, 0x0

    #@81
    aget v1, v8, v1

    #@83
    if-eqz v1, :cond_0

    #@85
    .line 2539
    const/4 v1, 0x0

    #@86
    aget v1, v8, v1

    #@88
    add-int/lit8 v1, v1, 0x1

    #@8a
    add-int/2addr v3, v1

    #@8b
    goto :goto_0

    #@8c
    .line 2549
    :cond_2
    sub-int v1, v3, p2

    #@8e
    const/4 v2, 0x0

    #@8f
    aput v1, p4, v2

    #@91
    .line 2550
    const v1, 0x36ee80

    #@94
    mul-int v1, v1, v17

    #@96
    const v2, 0xea60

    #@99
    mul-int v2, v2, v19

    #@9b
    add-int/2addr v1, v2

    #@9c
    move/from16 v0, v20

    #@9e
    mul-int/lit16 v2, v0, 0x3e8

    #@a0
    add-int/2addr v1, v2

    #@a1
    return v1
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 3074
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v6

    #@4
    .line 3075
    .local v6, "startIdx":I
    const/4 v5, -0x1

    #@5
    .line 3076
    .local v5, "parsedPos":I
    const/4 v7, 0x0

    #@6
    .line 3078
    .local v7, "tzID":Ljava/lang/String;
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@8
    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@b
    move-result-object v4

    #@c
    .line 3079
    .local v4, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@e
    invoke-virtual {v8, p1, v6, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@11
    move-result-object v1

    #@12
    .line 3080
    .local v1, "exemplarMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v1, :cond_2

    #@14
    .line 3081
    const/4 v0, 0x0

    #@15
    .line 3082
    .local v0, "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .end local v0    # "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v3, "match$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_1

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@25
    .line 3083
    .local v2, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@28
    move-result v8

    #@29
    add-int/2addr v8, v6

    #@2a
    if-le v8, v5, :cond_0

    #@2c
    .line 3084
    move-object v0, v2

    #@2d
    .line 3085
    .local v0, "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@30
    move-result v8

    #@31
    add-int v5, v6, v8

    #@33
    goto :goto_0

    #@34
    .line 3088
    .end local v0    # "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v2    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_1
    if-eqz v0, :cond_2

    #@36
    .line 3089
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-direct {p0, v8, v9}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 3090
    .local v7, "tzID":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    #@45
    .line 3093
    .end local v3    # "match$iterator":Ljava/util/Iterator;
    .end local v7    # "tzID":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_3

    #@47
    .line 3094
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@4a
    .line 3097
    :cond_3
    return-object v7
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "parsedLen"    # [I

    #@0
    .prologue
    .line 2443
    move/from16 v4, p2

    #@2
    .line 2444
    .local v4, "idx":I
    const/4 v12, 0x0

    #@3
    .line 2445
    .local v12, "offset":I
    const/4 v15, 0x0

    #@4
    .line 2448
    .local v15, "parsed":I
    const/4 v9, 0x0

    #@5
    .line 2449
    .local v9, "gmtLen":I
    sget-object v18, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    #@7
    const/4 v2, 0x0

    #@8
    move-object/from16 v0, v18

    #@a
    array-length v0, v0

    #@b
    move/from16 v19, v0

    #@d
    move/from16 v17, v2

    #@f
    :goto_0
    move/from16 v0, v17

    #@11
    move/from16 v1, v19

    #@13
    if-ge v0, v1, :cond_0

    #@15
    aget-object v5, v18, v17

    #@17
    .line 2450
    .local v5, "gmt":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1a
    move-result v7

    #@1b
    .line 2451
    .local v7, "len":I
    const/4 v3, 0x1

    #@1c
    const/4 v6, 0x0

    #@1d
    move-object/from16 v2, p1

    #@1f
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 2452
    move v9, v7

    #@26
    .line 2456
    .end local v5    # "gmt":Ljava/lang/String;
    .end local v7    # "len":I
    :cond_0
    if-nez v9, :cond_3

    #@28
    .line 2502
    :cond_1
    :goto_1
    const/4 v2, 0x0

    #@29
    aput v15, p3, v2

    #@2b
    .line 2503
    return v12

    #@2c
    .line 2449
    .restart local v5    # "gmt":Ljava/lang/String;
    .restart local v7    # "len":I
    :cond_2
    add-int/lit8 v2, v17, 0x1

    #@2e
    move/from16 v17, v2

    #@30
    goto :goto_0

    #@31
    .line 2459
    .end local v5    # "gmt":Ljava/lang/String;
    .end local v7    # "len":I
    :cond_3
    add-int/2addr v4, v9

    #@32
    .line 2462
    add-int/lit8 v2, v4, 0x1

    #@34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@37
    move-result v3

    #@38
    if-ge v2, v3, :cond_1

    #@3a
    .line 2467
    const/16 v16, 0x1

    #@3c
    .line 2468
    .local v16, "sign":I
    move-object/from16 v0, p1

    #@3e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v8

    #@42
    .line 2469
    .local v8, "c":C
    const/16 v2, 0x2b

    #@44
    if-ne v8, v2, :cond_4

    #@46
    .line 2470
    const/16 v16, 0x1

    #@48
    .line 2476
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@4a
    .line 2480
    const/4 v2, 0x1

    #@4b
    new-array v11, v2, [I

    #@4d
    const/4 v2, 0x0

    #@4e
    const/4 v3, 0x0

    #@4f
    aput v2, v11, v3

    #@51
    .line 2481
    .local v11, "lenWithSep":[I
    const/16 v2, 0x3a

    #@53
    move-object/from16 v0, p0

    #@55
    move-object/from16 v1, p1

    #@57
    invoke-direct {v0, v1, v4, v2, v11}, Landroid/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    #@5a
    move-result v14

    #@5b
    .line 2482
    .local v14, "offsetWithSep":I
    const/4 v2, 0x0

    #@5c
    aget v2, v11, v2

    #@5e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@61
    move-result v3

    #@62
    sub-int/2addr v3, v4

    #@63
    if-ne v2, v3, :cond_5

    #@65
    .line 2484
    mul-int v12, v14, v16

    #@67
    .line 2485
    const/4 v2, 0x0

    #@68
    aget v2, v11, v2

    #@6a
    add-int/2addr v4, v2

    #@6b
    .line 2499
    :goto_3
    sub-int v15, v4, p2

    #@6d
    goto :goto_1

    #@6e
    .line 2471
    .end local v11    # "lenWithSep":[I
    .end local v14    # "offsetWithSep":I
    :cond_4
    const/16 v2, 0x2d

    #@70
    if-ne v8, v2, :cond_1

    #@72
    .line 2472
    const/16 v16, -0x1

    #@74
    goto :goto_2

    #@75
    .line 2488
    .restart local v11    # "lenWithSep":[I
    .restart local v14    # "offsetWithSep":I
    :cond_5
    const/4 v2, 0x1

    #@76
    new-array v10, v2, [I

    #@78
    const/4 v2, 0x0

    #@79
    const/4 v3, 0x0

    #@7a
    aput v2, v10, v3

    #@7c
    .line 2489
    .local v10, "lenAbut":[I
    move-object/from16 v0, p0

    #@7e
    move-object/from16 v1, p1

    #@80
    invoke-direct {v0, v1, v4, v10}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    #@83
    move-result v13

    #@84
    .line 2491
    .local v13, "offsetAbut":I
    const/4 v2, 0x0

    #@85
    aget v2, v11, v2

    #@87
    const/4 v3, 0x0

    #@88
    aget v3, v10, v3

    #@8a
    if-le v2, v3, :cond_6

    #@8c
    .line 2492
    mul-int v12, v14, v16

    #@8e
    .line 2493
    const/4 v2, 0x0

    #@8f
    aget v2, v11, v2

    #@91
    add-int/2addr v4, v2

    #@92
    goto :goto_3

    #@93
    .line 2495
    :cond_6
    mul-int v12, v13, v16

    #@95
    .line 2496
    const/4 v2, 0x0

    #@96
    aget v2, v10, v2

    #@98
    add-int/2addr v4, v2

    #@99
    goto :goto_3
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I
    .param p5, "minVal"    # I
    .param p6, "maxVal"    # I
    .param p7, "parsedLen"    # [I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2645
    aput v7, p7, v7

    #@3
    .line 2647
    const/4 v0, 0x0

    #@4
    .line 2648
    .local v0, "decVal":I
    const/4 v4, 0x0

    #@5
    .line 2649
    .local v4, "numDigits":I
    move v3, p2

    #@6
    .line 2650
    .local v3, "idx":I
    const/4 v6, 0x1

    #@7
    new-array v2, v6, [I

    #@9
    aput v7, v2, v7

    #@b
    .line 2651
    .local v2, "digitLen":[I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v6

    #@f
    if-ge v3, v6, :cond_0

    #@11
    if-ge v4, p4, :cond_0

    #@13
    .line 2652
    invoke-direct {p0, p1, v3, v2}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    #@16
    move-result v1

    #@17
    .line 2653
    .local v1, "digit":I
    if-gez v1, :cond_2

    #@19
    .line 2666
    .end local v1    # "digit":I
    :cond_0
    if-lt v4, p3, :cond_1

    #@1b
    if-ge v0, p5, :cond_3

    #@1d
    .line 2667
    :cond_1
    const/4 v0, -0x1

    #@1e
    .line 2668
    const/4 v4, 0x0

    #@1f
    .line 2674
    :goto_1
    return v0

    #@20
    .line 2656
    .restart local v1    # "digit":I
    :cond_2
    mul-int/lit8 v6, v0, 0xa

    #@22
    add-int v5, v6, v1

    #@24
    .line 2657
    .local v5, "tmpVal":I
    if-gt v5, p6, :cond_0

    #@26
    .line 2660
    move v0, v5

    #@27
    .line 2661
    add-int/lit8 v4, v4, 0x1

    #@29
    .line 2662
    aget v6, v2, v7

    #@2b
    add-int/2addr v3, v6

    #@2c
    goto :goto_0

    #@2d
    .line 2670
    .end local v1    # "digit":I
    .end local v5    # "tmpVal":I
    :cond_3
    sub-int v6, v3, p2

    #@2f
    aput v6, p7, v7

    #@31
    goto :goto_1
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "isShort"    # Z
    .param p4, "parsedLen"    # [I

    #@0
    .prologue
    .line 2311
    const/4 v13, 0x0

    #@1
    .line 2312
    .local v13, "outLen":I
    const/4 v9, 0x0

    #@2
    .line 2313
    .local v9, "offset":I
    const/4 v14, 0x1

    #@3
    .line 2315
    .local v14, "sign":I
    if-eqz p4, :cond_0

    #@5
    move-object/from16 v0, p4

    #@7
    array-length v2, v0

    #@8
    const/4 v3, 0x1

    #@9
    if-lt v2, v3, :cond_0

    #@b
    .line 2316
    const/4 v2, 0x0

    #@c
    const/4 v3, 0x0

    #@d
    aput v2, p4, v3

    #@f
    .line 2320
    :cond_0
    const/4 v12, 0x0

    #@10
    .local v12, "offsetS":I
    const/4 v11, 0x0

    #@11
    .local v11, "offsetM":I
    const/4 v10, 0x0

    #@12
    .line 2322
    .local v10, "offsetH":I
    const/4 v2, 0x0

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    filled-new-array {v2, v3, v4}, [I

    #@18
    move-result-object v7

    #@19
    .line 2323
    .local v7, "fields":[I
    sget-object v18, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@1b
    const/4 v2, 0x0

    #@1c
    move-object/from16 v0, v18

    #@1e
    array-length v0, v0

    #@1f
    move/from16 v19, v0

    #@21
    move/from16 v17, v2

    #@23
    :goto_0
    move/from16 v0, v17

    #@25
    move/from16 v1, v19

    #@27
    if-ge v0, v1, :cond_3

    #@29
    aget-object v8, v18, v17

    #@2b
    .line 2324
    .local v8, "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@2f
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@32
    move-result v3

    #@33
    aget-object v5, v2, v3

    #@35
    .line 2325
    .local v5, "items":[Ljava/lang/Object;
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@37
    if-nez v2, :cond_2

    #@39
    if-eqz v5, :cond_1

    #@3b
    const/4 v2, 0x1

    #@3c
    :goto_1
    if-nez v2, :cond_2

    #@3e
    new-instance v2, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v2

    #@44
    :cond_1
    const/4 v2, 0x0

    #@45
    goto :goto_1

    #@46
    .line 2327
    :cond_2
    const/4 v6, 0x0

    #@47
    move-object/from16 v2, p0

    #@49
    move-object/from16 v3, p1

    #@4b
    move/from16 v4, p2

    #@4d
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    #@50
    move-result v13

    #@51
    .line 2328
    if-lez v13, :cond_5

    #@53
    .line 2329
    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap0(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_4

    #@59
    const/4 v14, 0x1

    #@5a
    .line 2330
    :goto_2
    const/4 v2, 0x0

    #@5b
    aget v10, v7, v2

    #@5d
    .line 2331
    const/4 v2, 0x1

    #@5e
    aget v11, v7, v2

    #@60
    .line 2332
    const/4 v2, 0x2

    #@61
    aget v12, v7, v2

    #@63
    .line 2336
    .end local v5    # "items":[Ljava/lang/Object;
    .end local v8    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_3
    if-lez v13, :cond_9

    #@65
    move-object/from16 v0, p0

    #@67
    iget-boolean v2, v0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    #@69
    if-eqz v2, :cond_9

    #@6b
    .line 2341
    const/4 v15, 0x0

    #@6c
    .line 2342
    .local v15, "tmpLen":I
    const/16 v16, 0x1

    #@6e
    .line 2343
    .local v16, "tmpSign":I
    sget-object v18, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@70
    const/4 v2, 0x0

    #@71
    move-object/from16 v0, v18

    #@73
    array-length v0, v0

    #@74
    move/from16 v19, v0

    #@76
    move/from16 v17, v2

    #@78
    :goto_3
    move/from16 v0, v17

    #@7a
    move/from16 v1, v19

    #@7c
    if-ge v0, v1, :cond_8

    #@7e
    aget-object v8, v18, v17

    #@80
    .line 2344
    .restart local v8    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@84
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@87
    move-result v3

    #@88
    aget-object v5, v2, v3

    #@8a
    .line 2345
    .restart local v5    # "items":[Ljava/lang/Object;
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@8c
    if-nez v2, :cond_7

    #@8e
    if-eqz v5, :cond_6

    #@90
    const/4 v2, 0x1

    #@91
    :goto_4
    if-nez v2, :cond_7

    #@93
    new-instance v2, Ljava/lang/AssertionError;

    #@95
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@98
    throw v2

    #@99
    .line 2329
    .end local v15    # "tmpLen":I
    .end local v16    # "tmpSign":I
    :cond_4
    const/4 v14, -0x1

    #@9a
    goto :goto_2

    #@9b
    .line 2323
    :cond_5
    add-int/lit8 v2, v17, 0x1

    #@9d
    move/from16 v17, v2

    #@9f
    goto :goto_0

    #@a0
    .line 2345
    .restart local v15    # "tmpLen":I
    .restart local v16    # "tmpSign":I
    :cond_6
    const/4 v2, 0x0

    #@a1
    goto :goto_4

    #@a2
    .line 2348
    :cond_7
    const/4 v6, 0x1

    #@a3
    move-object/from16 v2, p0

    #@a5
    move-object/from16 v3, p1

    #@a7
    move/from16 v4, p2

    #@a9
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    #@ac
    move-result v15

    #@ad
    .line 2349
    if-lez v15, :cond_d

    #@af
    .line 2350
    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap0(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_c

    #@b5
    const/16 v16, 0x1

    #@b7
    .line 2354
    .end local v5    # "items":[Ljava/lang/Object;
    .end local v8    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_8
    :goto_5
    if-le v15, v13, :cond_9

    #@b9
    .line 2356
    move v13, v15

    #@ba
    .line 2357
    move/from16 v14, v16

    #@bc
    .line 2358
    const/4 v2, 0x0

    #@bd
    aget v10, v7, v2

    #@bf
    .line 2359
    const/4 v2, 0x1

    #@c0
    aget v11, v7, v2

    #@c2
    .line 2360
    const/4 v2, 0x2

    #@c3
    aget v12, v7, v2

    #@c5
    .line 2364
    .end local v15    # "tmpLen":I
    .end local v16    # "tmpSign":I
    :cond_9
    if-eqz p4, :cond_a

    #@c7
    move-object/from16 v0, p4

    #@c9
    array-length v2, v0

    #@ca
    const/4 v3, 0x1

    #@cb
    if-lt v2, v3, :cond_a

    #@cd
    .line 2365
    const/4 v2, 0x0

    #@ce
    aput v13, p4, v2

    #@d0
    .line 2368
    :cond_a
    if-lez v13, :cond_b

    #@d2
    .line 2369
    mul-int/lit8 v2, v10, 0x3c

    #@d4
    add-int/2addr v2, v11

    #@d5
    mul-int/lit8 v2, v2, 0x3c

    #@d7
    add-int/2addr v2, v12

    #@d8
    mul-int/lit16 v2, v2, 0x3e8

    #@da
    mul-int v9, v2, v14

    #@dc
    .line 2372
    :cond_b
    return v9

    #@dd
    .line 2350
    .restart local v5    # "items":[Ljava/lang/Object;
    .restart local v8    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .restart local v15    # "tmpLen":I
    .restart local v16    # "tmpSign":I
    :cond_c
    const/16 v16, -0x1

    #@df
    goto :goto_5

    #@e0
    .line 2343
    :cond_d
    add-int/lit8 v2, v17, 0x1

    #@e2
    move/from16 v17, v2

    #@e4
    goto :goto_3
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 30
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternItems"    # [Ljava/lang/Object;
    .param p4, "forceSingleHourDigit"    # Z
    .param p5, "fields"    # [I

    #@0
    .prologue
    .line 2386
    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    if-eqz p5, :cond_0

    #@6
    move-object/from16 v0, p5

    #@8
    array-length v1, v0

    #@9
    const/4 v2, 0x3

    #@a
    if-lt v1, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    if-nez v1, :cond_1

    #@f
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0

    #@17
    .line 2387
    :cond_1
    const/4 v1, 0x0

    #@18
    const/4 v2, 0x2

    #@19
    aput v1, p5, v2

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x1

    #@1d
    aput v1, p5, v2

    #@1f
    const/4 v1, 0x0

    #@20
    const/4 v2, 0x0

    #@21
    aput v1, p5, v2

    #@23
    .line 2389
    const/16 v23, 0x0

    #@25
    .line 2391
    .local v23, "failed":Z
    const/16 v29, 0x0

    #@27
    .local v29, "offsetS":I
    const/16 v28, 0x0

    #@29
    .local v28, "offsetM":I
    const/16 v27, 0x0

    #@2b
    .line 2392
    .local v27, "offsetH":I
    move/from16 v3, p2

    #@2d
    .line 2393
    .local v3, "idx":I
    const/4 v1, 0x1

    #@2e
    new-array v14, v1, [I

    #@30
    const/4 v1, 0x0

    #@31
    const/4 v2, 0x0

    #@32
    aput v1, v14, v2

    #@34
    .line 2394
    .local v14, "tmpParsedLen":[I
    const/16 v26, 0x0

    #@36
    .local v26, "i":I
    :goto_1
    move-object/from16 v0, p3

    #@38
    array-length v1, v0

    #@39
    move/from16 v0, v26

    #@3b
    if-ge v0, v1, :cond_2

    #@3d
    .line 2395
    aget-object v1, p3, v26

    #@3f
    instance-of v1, v1, Ljava/lang/String;

    #@41
    if-eqz v1, :cond_4

    #@43
    .line 2396
    aget-object v4, p3, v26

    #@45
    check-cast v4, Ljava/lang/String;

    #@47
    .line 2397
    .local v4, "patStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4a
    move-result v6

    #@4b
    .line 2398
    .local v6, "len":I
    const/4 v2, 0x1

    #@4c
    const/4 v5, 0x0

    #@4d
    move-object/from16 v1, p1

    #@4f
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@52
    move-result v1

    #@53
    if-nez v1, :cond_3

    #@55
    .line 2399
    const/16 v23, 0x1

    #@57
    .line 2424
    .end local v4    # "patStr":Ljava/lang/String;
    .end local v6    # "len":I
    :cond_2
    :goto_2
    if-eqz v23, :cond_b

    #@59
    .line 2425
    const/4 v1, 0x0

    #@5a
    return v1

    #@5b
    .line 2402
    .restart local v4    # "patStr":Ljava/lang/String;
    .restart local v6    # "len":I
    :cond_3
    add-int/2addr v3, v6

    #@5c
    .line 2394
    .end local v4    # "patStr":Ljava/lang/String;
    .end local v6    # "len":I
    :goto_3
    add-int/lit8 v26, v26, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 2404
    :cond_4
    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@61
    if-nez v1, :cond_5

    #@63
    aget-object v1, p3, v26

    #@65
    instance-of v1, v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@67
    if-nez v1, :cond_5

    #@69
    new-instance v1, Ljava/lang/AssertionError;

    #@6b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@6e
    throw v1

    #@6f
    .line 2405
    :cond_5
    aget-object v24, p3, v26

    #@71
    check-cast v24, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@73
    .line 2406
    .local v24, "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    #@76
    move-result v25

    #@77
    .line 2407
    .local v25, "fieldType":C
    const/16 v1, 0x48

    #@79
    move/from16 v0, v25

    #@7b
    if-ne v0, v1, :cond_8

    #@7d
    .line 2408
    if-eqz p4, :cond_7

    #@7f
    const/4 v11, 0x1

    #@80
    .line 2409
    .local v11, "maxDigits":I
    :goto_4
    const/4 v10, 0x1

    #@81
    const/4 v12, 0x0

    #@82
    const/16 v13, 0x17

    #@84
    move-object/from16 v7, p0

    #@86
    move-object/from16 v8, p1

    #@88
    move v9, v3

    #@89
    invoke-direct/range {v7 .. v14}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@8c
    move-result v27

    #@8d
    .line 2416
    .end local v11    # "maxDigits":I
    :cond_6
    :goto_5
    const/4 v1, 0x0

    #@8e
    aget v1, v14, v1

    #@90
    if-nez v1, :cond_a

    #@92
    .line 2417
    const/16 v23, 0x1

    #@94
    .line 2418
    goto :goto_2

    #@95
    .line 2408
    :cond_7
    const/4 v11, 0x2

    #@96
    .restart local v11    # "maxDigits":I
    goto :goto_4

    #@97
    .line 2410
    .end local v11    # "maxDigits":I
    :cond_8
    const/16 v1, 0x6d

    #@99
    move/from16 v0, v25

    #@9b
    if-ne v0, v1, :cond_9

    #@9d
    .line 2411
    const/16 v18, 0x2

    #@9f
    const/16 v19, 0x2

    #@a1
    const/16 v20, 0x0

    #@a3
    const/16 v21, 0x3b

    #@a5
    move-object/from16 v15, p0

    #@a7
    move-object/from16 v16, p1

    #@a9
    move/from16 v17, v3

    #@ab
    move-object/from16 v22, v14

    #@ad
    invoke-direct/range {v15 .. v22}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@b0
    move-result v28

    #@b1
    goto :goto_5

    #@b2
    .line 2412
    :cond_9
    const/16 v1, 0x73

    #@b4
    move/from16 v0, v25

    #@b6
    if-ne v0, v1, :cond_6

    #@b8
    .line 2413
    const/16 v18, 0x2

    #@ba
    const/16 v19, 0x2

    #@bc
    const/16 v20, 0x0

    #@be
    const/16 v21, 0x3b

    #@c0
    move-object/from16 v15, p0

    #@c2
    move-object/from16 v16, p1

    #@c4
    move/from16 v17, v3

    #@c6
    move-object/from16 v22, v14

    #@c8
    invoke-direct/range {v15 .. v22}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    #@cb
    move-result v29

    #@cc
    goto :goto_5

    #@cd
    .line 2420
    :cond_a
    const/4 v1, 0x0

    #@ce
    aget v1, v14, v1

    #@d0
    add-int/2addr v3, v1

    #@d1
    goto :goto_3

    #@d2
    .line 2428
    .end local v24    # "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    .end local v25    # "fieldType":C
    :cond_b
    const/4 v1, 0x0

    #@d3
    aput v27, p5, v1

    #@d5
    .line 2429
    const/4 v1, 0x1

    #@d6
    aput v28, p5, v1

    #@d8
    .line 2430
    const/4 v1, 0x2

    #@d9
    aput v29, p5, v1

    #@db
    .line 2432
    sub-int v1, v3, p2

    #@dd
    return v1
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "extendedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v11, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2749
    if-eqz p3, :cond_0

    #@4
    .line 2750
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v7

    #@8
    iput-object v7, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@a
    .line 2752
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v5

    #@e
    .line 2753
    .local v5, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v7

    #@12
    if-lt v5, v7, :cond_1

    #@14
    .line 2754
    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@17
    .line 2755
    return v10

    #@18
    .line 2758
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 2759
    .local v0, "firstChar":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@1f
    move-result v7

    #@20
    const-string/jumbo v8, "Z"

    #@23
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v8

    #@27
    if-ne v7, v8, :cond_2

    #@29
    .line 2761
    add-int/lit8 v7, v5, 0x1

    #@2b
    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@2e
    .line 2762
    return v10

    #@2f
    .line 2766
    :cond_2
    const/16 v7, 0x2b

    #@31
    if-ne v0, v7, :cond_4

    #@33
    .line 2767
    const/4 v4, 0x1

    #@34
    .line 2775
    .local v4, "sign":I
    :goto_0
    new-instance v3, Ljava/text/ParsePosition;

    #@36
    add-int/lit8 v7, v5, 0x1

    #@38
    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@3b
    .line 2776
    .local v3, "posOffset":Ljava/text/ParsePosition;
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@3d
    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@3f
    const/16 v9, 0x3a

    #@41
    invoke-static {p0, v3, v9, v7, v8}, Landroid/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I

    #@44
    move-result v1

    #@45
    .line 2777
    .local v1, "offset":I
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@48
    move-result v7

    #@49
    if-ne v7, v11, :cond_3

    #@4b
    if-eqz p2, :cond_6

    #@4d
    .line 2789
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@50
    move-result v7

    #@51
    if-eq v7, v11, :cond_7

    #@53
    .line 2790
    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@56
    .line 2791
    return v10

    #@57
    .line 2768
    .end local v1    # "offset":I
    .end local v3    # "posOffset":Ljava/text/ParsePosition;
    .end local v4    # "sign":I
    :cond_4
    const/16 v7, 0x2d

    #@59
    if-ne v0, v7, :cond_5

    #@5b
    .line 2769
    const/4 v4, -0x1

    #@5c
    .restart local v4    # "sign":I
    goto :goto_0

    #@5d
    .line 2772
    .end local v4    # "sign":I
    :cond_5
    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@60
    .line 2773
    return v10

    #@61
    .line 2777
    .restart local v1    # "offset":I
    .restart local v3    # "posOffset":Ljava/text/ParsePosition;
    .restart local v4    # "sign":I
    :cond_6
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@64
    move-result v7

    #@65
    sub-int/2addr v7, v5

    #@66
    const/4 v8, 0x3

    #@67
    if-gt v7, v8, :cond_3

    #@69
    .line 2781
    new-instance v2, Ljava/text/ParsePosition;

    #@6b
    add-int/lit8 v7, v5, 0x1

    #@6d
    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@70
    .line 2782
    .local v2, "posBasic":Ljava/text/ParsePosition;
    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@72
    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@74
    invoke-static {p0, v2, v7, v8, v10}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I

    #@77
    move-result v6

    #@78
    .line 2783
    .local v6, "tmpOffset":I
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@7b
    move-result v7

    #@7c
    if-ne v7, v11, :cond_3

    #@7e
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    #@81
    move-result v7

    #@82
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@85
    move-result v8

    #@86
    if-le v7, v8, :cond_3

    #@88
    .line 2784
    move v1, v6

    #@89
    .line 2785
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    #@8c
    move-result v7

    #@8d
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@90
    goto :goto_1

    #@91
    .line 2794
    .end local v2    # "posBasic":Ljava/text/ParsePosition;
    .end local v6    # "tmpOffset":I
    :cond_7
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@94
    move-result v7

    #@95
    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@98
    .line 2795
    if-eqz p3, :cond_8

    #@9a
    .line 2796
    const/4 v7, 0x1

    #@9b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9e
    move-result-object v7

    #@9f
    iput-object v7, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@a1
    .line 2798
    :cond_8
    mul-int v7, v4, v1

    #@a3
    return v7
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "isShort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2200
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@5
    move-result v2

    #@6
    .line 2201
    .local v2, "start":I
    const/4 v6, 0x0

    #@7
    .line 2202
    .local v6, "offset":I
    new-array v7, v1, [I

    #@9
    aput v4, v7, v4

    #@b
    .line 2204
    .local v7, "parsedLength":[I
    if-eqz p4, :cond_0

    #@d
    .line 2205
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@13
    .line 2208
    :cond_0
    invoke-direct {p0, p1, v2, p3, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    #@16
    move-result v6

    #@17
    .line 2218
    aget v0, v7, v4

    #@19
    if-lez v0, :cond_2

    #@1b
    .line 2219
    if-eqz p4, :cond_1

    #@1d
    .line 2220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@23
    .line 2222
    :cond_1
    aget v0, v7, v4

    #@25
    add-int/2addr v0, v2

    #@26
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@29
    .line 2223
    return v6

    #@2a
    .line 2227
    :cond_2
    invoke-direct {p0, p1, v2, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    #@2d
    move-result v6

    #@2e
    .line 2228
    aget v0, v7, v4

    #@30
    if-lez v0, :cond_4

    #@32
    .line 2229
    if-eqz p4, :cond_3

    #@34
    .line 2230
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@3a
    .line 2232
    :cond_3
    aget v0, v7, v4

    #@3c
    add-int/2addr v0, v2

    #@3d
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@40
    .line 2233
    return v6

    #@41
    .line 2237
    :cond_4
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@43
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@48
    move-result v5

    #@49
    move-object v0, p1

    #@4a
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_5

    #@50
    .line 2238
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@55
    move-result v0

    #@56
    add-int/2addr v0, v2

    #@57
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5a
    .line 2239
    return v4

    #@5b
    .line 2243
    :cond_5
    sget-object v9, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    #@5d
    array-length v10, v9

    #@5e
    move v8, v4

    #@5f
    :goto_0
    if-ge v8, v10, :cond_7

    #@61
    aget-object v3, v9, v8

    #@63
    .line 2244
    .local v3, "defGMTZero":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@66
    move-result v5

    #@67
    move-object v0, p1

    #@68
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_6

    #@6e
    .line 2245
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@71
    move-result v0

    #@72
    add-int/2addr v0, v2

    #@73
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@76
    .line 2246
    return v4

    #@77
    .line 2243
    :cond_6
    add-int/lit8 v0, v8, 0x1

    #@79
    move v8, v0

    #@7a
    goto :goto_0

    #@7b
    .line 2251
    .end local v3    # "defGMTZero":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@7e
    .line 2252
    return v4
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "isShort"    # Z
    .param p4, "parsedLen"    # [I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2265
    move v2, p2

    #@3
    .line 2266
    .local v2, "idx":I
    const/4 v6, 0x0

    #@4
    .line 2267
    .local v6, "offset":I
    const/4 v8, 0x0

    #@5
    .line 2271
    .local v8, "parsed":Z
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    .line 2272
    .local v5, "len":I
    if-lez v5, :cond_0

    #@d
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    #@f
    move-object v0, p1

    #@10
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2276
    :cond_0
    add-int/2addr v2, v5

    #@17
    .line 2279
    new-array v7, v1, [I

    #@19
    .line 2280
    .local v7, "offsetLen":[I
    invoke-direct {p0, p1, v2, v4, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    #@1c
    move-result v6

    #@1d
    .line 2281
    aget v0, v7, v4

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 2297
    .end local v7    # "offsetLen":[I
    :cond_1
    :goto_0
    if-eqz v8, :cond_4

    #@23
    sub-int v0, v2, p2

    #@25
    :goto_1
    aput v0, p4, v4

    #@27
    .line 2298
    return v6

    #@28
    .line 2285
    .restart local v7    # "offsetLen":[I
    :cond_2
    aget v0, v7, v4

    #@2a
    add-int/2addr v2, v0

    #@2b
    .line 2288
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    #@2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@30
    move-result v5

    #@31
    .line 2289
    if-lez v5, :cond_3

    #@33
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    #@35
    move-object v0, p1

    #@36
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_1

    #@3c
    .line 2293
    :cond_3
    add-int/2addr v2, v5

    #@3d
    .line 2294
    const/4 v8, 0x1

    #@3e
    goto :goto_0

    #@3f
    .end local v7    # "offsetLen":[I
    :cond_4
    move v0, v4

    #@40
    .line 2297
    goto :goto_1
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "letters"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x27

    #@2
    const/4 v12, 0x0

    #@3
    .line 2013
    const/4 v5, 0x0

    #@4
    .line 2014
    .local v5, "isPrevQuote":Z
    const/4 v3, 0x0

    #@5
    .line 2015
    .local v3, "inQuote":Z
    new-instance v10, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 2016
    .local v10, "text":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    #@b
    .line 2017
    .local v7, "itemType":C
    const/4 v6, 0x1

    #@c
    .line 2018
    .local v6, "itemLength":I
    const/4 v4, 0x0

    #@d
    .line 2020
    .local v4, "invalidPattern":Z
    new-instance v8, Ljava/util/ArrayList;

    #@f
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 2021
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/BitSet;

    #@14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v11

    #@18
    invoke-direct {v1, v11}, Ljava/util/BitSet;-><init>(I)V

    #@1b
    .line 2023
    .local v1, "checkBits":Ljava/util/BitSet;
    const/4 v2, 0x0

    #@1c
    .end local v7    # "itemType":C
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1f
    move-result v11

    #@20
    if-ge v2, v11, :cond_3

    #@22
    .line 2024
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v0

    #@26
    .line 2025
    .local v0, "ch":C
    if-ne v0, v13, :cond_7

    #@28
    .line 2026
    if-eqz v5, :cond_1

    #@2a
    .line 2027
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 2028
    const/4 v5, 0x0

    #@2e
    .line 2041
    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    #@30
    const/4 v3, 0x0

    #@31
    .line 2023
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2030
    :cond_1
    const/4 v5, 0x1

    #@35
    .line 2031
    if-eqz v7, :cond_0

    #@37
    .line 2032
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    #@3a
    move-result v11

    #@3b
    if-eqz v11, :cond_2

    #@3d
    .line 2033
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@3f
    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    #@42
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 2038
    const/4 v7, 0x0

    #@46
    .restart local v7    # "itemType":C
    goto :goto_1

    #@47
    .line 2035
    .end local v7    # "itemType":C
    :cond_2
    const/4 v4, 0x1

    #@48
    .line 2087
    .end local v0    # "ch":C
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    #@4a
    .line 2088
    if-nez v7, :cond_10

    #@4c
    .line 2089
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@4f
    move-result v11

    #@50
    if-lez v11, :cond_4

    #@52
    .line 2090
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@59
    .line 2091
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    #@5c
    .line 2102
    :cond_4
    :goto_4
    if-nez v4, :cond_5

    #@5e
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@61
    move-result v11

    #@62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@65
    move-result v12

    #@66
    if-eq v11, v12, :cond_12

    #@68
    .line 2103
    :cond_5
    new-instance v11, Ljava/lang/IllegalStateException;

    #@6a
    new-instance v12, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v13, "Bad localized GMT offset pattern: "

    #@72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v12

    #@76
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v12

    #@7a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v12

    #@7e
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v11

    #@82
    .line 2041
    .restart local v0    # "ch":C
    :cond_6
    const/4 v3, 0x1

    #@83
    goto :goto_2

    #@84
    .line 2043
    :cond_7
    const/4 v5, 0x0

    #@85
    .line 2044
    if-eqz v3, :cond_8

    #@87
    .line 2045
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_2

    #@8b
    .line 2047
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@8e
    move-result v9

    #@8f
    .line 2048
    .local v9, "patFieldIdx":I
    if-ltz v9, :cond_d

    #@91
    .line 2050
    if-ne v0, v7, :cond_9

    #@93
    .line 2051
    add-int/lit8 v6, v6, 0x1

    #@95
    goto :goto_2

    #@96
    .line 2053
    :cond_9
    if-nez v7, :cond_b

    #@98
    .line 2054
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@9b
    move-result v11

    #@9c
    if-lez v11, :cond_a

    #@9e
    .line 2055
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v11

    #@a2
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a5
    .line 2056
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a8
    .line 2066
    :cond_a
    :goto_5
    move v7, v0

    #@a9
    .line 2067
    .local v7, "itemType":C
    const/4 v6, 0x1

    #@aa
    .line 2068
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    #@ad
    goto :goto_2

    #@ae
    .line 2059
    .end local v7    # "itemType":C
    :cond_b
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    #@b1
    move-result v11

    #@b2
    if-eqz v11, :cond_c

    #@b4
    .line 2060
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@b6
    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    #@b9
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bc
    goto :goto_5

    #@bd
    .line 2062
    :cond_c
    const/4 v4, 0x1

    #@be
    .line 2063
    goto :goto_3

    #@bf
    .line 2072
    :cond_d
    if-eqz v7, :cond_e

    #@c1
    .line 2073
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    #@c4
    move-result v11

    #@c5
    if-eqz v11, :cond_f

    #@c7
    .line 2074
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@c9
    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    #@cc
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@cf
    .line 2079
    const/4 v7, 0x0

    #@d0
    .line 2081
    :cond_e
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d3
    goto/16 :goto_2

    #@d5
    .line 2076
    :cond_f
    const/4 v4, 0x1

    #@d6
    .line 2077
    goto/16 :goto_3

    #@d8
    .line 2094
    .end local v0    # "ch":C
    .end local v9    # "patFieldIdx":I
    :cond_10
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    #@db
    move-result v11

    #@dc
    if-eqz v11, :cond_11

    #@de
    .line 2095
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    #@e0
    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    #@e3
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e6
    goto/16 :goto_4

    #@e8
    .line 2097
    :cond_11
    const/4 v4, 0x1

    #@e9
    goto/16 :goto_4

    #@eb
    .line 2106
    :cond_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@ee
    move-result v11

    #@ef
    new-array v11, v11, [Ljava/lang/Object;

    #@f1
    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f4
    move-result-object v11

    #@f5
    return-object v11
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 14
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 3035
    const/4 v5, 0x0

    #@3
    .line 3036
    .local v5, "resolvedID":Ljava/lang/String;
    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@5
    if-nez v8, :cond_3

    #@7
    .line 3037
    const-class v9, Landroid/icu/text/TimeZoneFormat;

    #@9
    monitor-enter v9

    #@a
    .line 3038
    :try_start_0
    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@c
    if-nez v8, :cond_2

    #@e
    .line 3040
    new-instance v7, Landroid/icu/impl/TextTrieMap;

    #@10
    const/4 v8, 0x1

    #@11
    invoke-direct {v7, v8}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@14
    .line 3041
    .local v7, "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    sget-object v8, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@16
    const/4 v10, 0x0

    #@17
    const/4 v11, 0x0

    #@18
    invoke-static {v8, v10, v11}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@1b
    move-result-object v0

    #@1c
    .line 3042
    .local v0, "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v2

    #@20
    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_1

    #@26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Ljava/lang/String;

    #@2c
    .line 3043
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 3044
    .local v6, "shortID":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@32
    .line 3045
    invoke-virtual {v7, v6, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 3037
    .end local v0    # "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    .end local v6    # "shortID":Ljava/lang/String;
    .end local v7    # "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    #@37
    monitor-exit v9

    #@38
    throw v8

    #@39
    .line 3049
    .restart local v0    # "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "id$iterator":Ljava/util/Iterator;
    .restart local v7    # "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v8, "unk"

    #@3c
    const-string/jumbo v10, "Etc/Unknown"

    #@3f
    invoke-virtual {v7, v8, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@42
    .line 3050
    sput-object v7, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .end local v0    # "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    .end local v7    # "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v9

    #@45
    .line 3055
    :cond_3
    new-array v4, v13, [I

    #@47
    aput v12, v4, v12

    #@49
    .line 3056
    .local v4, "matchLen":[I
    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@4b
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@4e
    move-result v9

    #@4f
    invoke-virtual {v8, p0, v9, v4}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    #@52
    move-result-object v3

    #@53
    .line 3057
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    #@55
    .line 3058
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    .end local v5    # "resolvedID":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    #@5b
    .line 3059
    .local v5, "resolvedID":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@5e
    move-result v8

    #@5f
    aget v9, v4, v12

    #@61
    add-int/2addr v8, v9

    #@62
    invoke-virtual {p1, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    #@65
    .line 3064
    .end local v5    # "resolvedID":Ljava/lang/String;
    :goto_1
    return-object v5

    #@66
    .line 3061
    .local v5, "resolvedID":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@69
    move-result v8

    #@6a
    invoke-virtual {p1, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@6d
    goto :goto_1
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2687
    const/4 v1, -0x1

    #@2
    .line 2688
    .local v1, "digit":I
    aput v4, p3, v4

    #@4
    .line 2689
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    if-ge p2, v3, :cond_2

    #@a
    .line 2690
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@d
    move-result v0

    #@e
    .line 2693
    .local v0, "cp":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@11
    array-length v3, v3

    #@12
    if-ge v2, v3, :cond_0

    #@14
    .line 2694
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@16
    aget-object v3, v3, v2

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    #@1b
    move-result v3

    #@1c
    if-ne v0, v3, :cond_3

    #@1e
    .line 2695
    move v1, v2

    #@1f
    .line 2700
    :cond_0
    if-gez v1, :cond_1

    #@21
    .line 2701
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    #@24
    move-result v1

    #@25
    .line 2704
    :cond_1
    if-ltz v1, :cond_2

    #@27
    .line 2705
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2a
    move-result v3

    #@2b
    aput v3, p3, v4

    #@2d
    .line 2708
    .end local v0    # "cp":I
    .end local v2    # "i":I
    :cond_2
    return v1

    #@2e
    .line 2693
    .restart local v0    # "cp":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2997
    const/4 v4, 0x0

    #@3
    .line 2998
    .local v4, "resolvedID":Ljava/lang/String;
    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@5
    if-nez v6, :cond_2

    #@7
    .line 2999
    const-class v8, Landroid/icu/text/TimeZoneFormat;

    #@9
    monitor-enter v8

    #@a
    .line 3000
    :try_start_0
    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@c
    if-nez v6, :cond_1

    #@e
    .line 3002
    new-instance v5, Landroid/icu/impl/TextTrieMap;

    #@10
    const/4 v6, 0x1

    #@11
    invoke-direct {v5, v6}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@14
    .line 3003
    .local v5, "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 3004
    .local v1, "ids":[Ljava/lang/String;
    array-length v9, v1

    #@19
    move v6, v7

    #@1a
    :goto_0
    if-ge v6, v9, :cond_0

    #@1c
    aget-object v0, v1, v6

    #@1e
    .line 3005
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v5, v0, v0}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@21
    .line 3004
    add-int/lit8 v6, v6, 0x1

    #@23
    goto :goto_0

    #@24
    .line 3007
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    sput-object v5, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v5    # "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v8

    #@27
    .line 3012
    :cond_2
    new-array v3, v10, [I

    #@29
    aput v7, v3, v7

    #@2b
    .line 3013
    .local v3, "matchLen":[I
    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    #@2d
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@30
    move-result v8

    #@31
    invoke-virtual {v6, p0, v8, v3}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    #@34
    move-result-object v2

    #@35
    .line 3014
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    #@37
    .line 3015
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    .end local v4    # "resolvedID":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@3d
    .line 3016
    .local v4, "resolvedID":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@40
    move-result v6

    #@41
    aget v7, v3, v7

    #@43
    add-int/2addr v6, v7

    #@44
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@47
    .line 3025
    .end local v4    # "resolvedID":Ljava/lang/String;
    :goto_1
    return-object v4

    #@48
    .line 2999
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "matchLen":[I
    .local v4, "resolvedID":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@49
    monitor-exit v8

    #@4a
    throw v6

    #@4b
    .line 3023
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "matchLen":[I
    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@4e
    move-result v6

    #@4f
    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@52
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v7, 0x0

    #@2
    .line 3168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@5
    move-result-object v0

    #@6
    .line 3170
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "_locale"

    #@9
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/icu/util/ULocale;

    #@f
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@11
    .line 3171
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@13
    if-nez v3, :cond_0

    #@15
    .line 3172
    new-instance v3, Ljava/io/InvalidObjectException;

    #@17
    const-string/jumbo v4, "Missing field: locale"

    #@1a
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 3175
    :cond_0
    const-string/jumbo v3, "_tznames"

    #@21
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/icu/text/TimeZoneNames;

    #@27
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@29
    .line 3176
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 3177
    new-instance v3, Ljava/io/InvalidObjectException;

    #@2f
    const-string/jumbo v4, "Missing field: tznames"

    #@32
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3

    #@36
    .line 3180
    :cond_1
    const-string/jumbo v3, "_gmtPattern"

    #@39
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Ljava/lang/String;

    #@3f
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@41
    .line 3181
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@43
    if-nez v3, :cond_2

    #@45
    .line 3182
    new-instance v3, Ljava/io/InvalidObjectException;

    #@47
    const-string/jumbo v4, "Missing field: gmtPattern"

    #@4a
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3

    #@4e
    .line 3185
    :cond_2
    const-string/jumbo v3, "_gmtOffsetPatterns"

    #@51
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, [Ljava/lang/String;

    #@57
    .line 3186
    .local v2, "tmpGmtOffsetPatterns":[Ljava/lang/String;
    if-nez v2, :cond_3

    #@59
    .line 3187
    new-instance v3, Ljava/io/InvalidObjectException;

    #@5b
    const-string/jumbo v4, "Missing field: gmtOffsetPatterns"

    #@5e
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@61
    throw v3

    #@62
    .line 3188
    :cond_3
    array-length v3, v2

    #@63
    if-ge v3, v5, :cond_4

    #@65
    .line 3189
    new-instance v3, Ljava/io/InvalidObjectException;

    #@67
    const-string/jumbo v4, "Incompatible field: gmtOffsetPatterns"

    #@6a
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3

    #@6e
    .line 3191
    :cond_4
    const/4 v3, 0x6

    #@6f
    new-array v3, v3, [Ljava/lang/String;

    #@71
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@73
    .line 3192
    array-length v3, v2

    #@74
    if-ne v3, v5, :cond_6

    #@76
    .line 3193
    const/4 v1, 0x0

    #@77
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    #@79
    .line 3194
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@7b
    aget-object v4, v2, v1

    #@7d
    aput-object v4, v3, v1

    #@7f
    .line 3193
    add-int/lit8 v1, v1, 0x1

    #@81
    goto :goto_0

    #@82
    .line 3196
    :cond_5
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@84
    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@86
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@89
    move-result v4

    #@8a
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@8c
    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@8e
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@91
    move-result v6

    #@92
    aget-object v5, v5, v6

    #@94
    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    aput-object v5, v3, v4

    #@9a
    .line 3197
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@9c
    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@9e
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@a1
    move-result v4

    #@a2
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@a4
    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@a6
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@a9
    move-result v6

    #@aa
    aget-object v5, v5, v6

    #@ac
    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v5

    #@b0
    aput-object v5, v3, v4

    #@b2
    .line 3202
    .end local v1    # "i":I
    :goto_1
    const-string/jumbo v3, "_gmtOffsetDigits"

    #@b5
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    move-result-object v3

    #@b9
    check-cast v3, [Ljava/lang/String;

    #@bb
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@bd
    .line 3203
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@bf
    if-nez v3, :cond_7

    #@c1
    .line 3204
    new-instance v3, Ljava/io/InvalidObjectException;

    #@c3
    const-string/jumbo v4, "Missing field: gmtOffsetDigits"

    #@c6
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@c9
    throw v3

    #@ca
    .line 3199
    :cond_6
    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@cc
    goto :goto_1

    #@cd
    .line 3205
    :cond_7
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@cf
    array-length v3, v3

    #@d0
    const/16 v4, 0xa

    #@d2
    if-eq v3, v4, :cond_8

    #@d4
    .line 3206
    new-instance v3, Ljava/io/InvalidObjectException;

    #@d6
    const-string/jumbo v4, "Incompatible field: gmtOffsetDigits"

    #@d9
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v3

    #@dd
    .line 3209
    :cond_8
    const-string/jumbo v3, "_gmtZeroFormat"

    #@e0
    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    move-result-object v3

    #@e4
    check-cast v3, Ljava/lang/String;

    #@e6
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@e8
    .line 3210
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@ea
    if-nez v3, :cond_9

    #@ec
    .line 3211
    new-instance v3, Ljava/io/InvalidObjectException;

    #@ee
    const-string/jumbo v4, "Missing field: gmtZeroFormat"

    #@f1
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@f4
    throw v3

    #@f5
    .line 3214
    :cond_9
    const-string/jumbo v3, "_parseAllStyles"

    #@f8
    const/4 v4, 0x0

    #@f9
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@fc
    move-result v3

    #@fd
    iput-boolean v3, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    #@ff
    .line 3215
    const-string/jumbo v3, "_parseAllStyles"

    #@102
    invoke-virtual {v0, v3}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_a

    #@108
    .line 3216
    new-instance v3, Ljava/io/InvalidObjectException;

    #@10a
    const-string/jumbo v4, "Missing field: parseAllStyles"

    #@10d
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@110
    throw v3

    #@111
    .line 3234
    :cond_a
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@113
    instance-of v3, v3, Landroid/icu/impl/TimeZoneNamesImpl;

    #@115
    if-eqz v3, :cond_b

    #@117
    .line 3235
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@119
    invoke-static {v3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@11c
    move-result-object v3

    #@11d
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@11f
    .line 3236
    iput-object v7, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@121
    .line 3244
    :goto_2
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@123
    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    #@126
    .line 3245
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@128
    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    #@12b
    .line 3167
    return-void

    #@12c
    .line 3240
    :cond_b
    new-instance v3, Landroid/icu/impl/TimeZoneGenericNames;

    #@12e
    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@130
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@132
    invoke-direct {v3, v4, v5}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    #@135
    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@137
    goto :goto_2
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    const/4 v7, 0x0

    #@5
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->codePointCount(II)I

    #@8
    move-result v4

    #@9
    .line 2721
    .local v4, "len":I
    new-array v2, v4, [Ljava/lang/String;

    #@b
    .line 2723
    .local v2, "codePoints":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    const/4 v5, 0x0

    #@d
    .local v5, "offset":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@f
    .line 2724
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    #@12
    move-result v0

    #@13
    .line 2725
    .local v0, "code":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@16
    move-result v1

    #@17
    .line 2726
    .local v1, "codeLen":I
    add-int v6, v5, v1

    #@19
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    aput-object v6, v2, v3

    #@1f
    .line 2727
    add-int/2addr v5, v1

    #@20
    .line 2723
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2729
    .end local v0    # "code":I
    .end local v1    # "codeLen":I
    :cond_0
    return-object v2
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "offsetHM"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2137
    const-string/jumbo v3, "mm"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 2138
    .local v2, "idx_mm":I
    if-gez v2, :cond_0

    #@a
    .line 2139
    new-instance v3, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v4, "Bad time zone hour pattern data"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 2141
    :cond_0
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "HH"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@1d
    move-result v1

    #@1e
    .line 2142
    .local v1, "idx_HH":I
    if-ltz v1, :cond_1

    #@20
    .line 2143
    add-int/lit8 v3, v1, 0x2

    #@22
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 2145
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "H"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@31
    move-result v0

    #@32
    .line 2146
    .local v0, "idx_H":I
    if-ltz v0, :cond_2

    #@34
    .line 2147
    add-int/lit8 v3, v0, 0x1

    #@36
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    return-object v3

    #@3b
    .line 2149
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    #@3d
    const-string/jumbo v4, "Bad time zone hour pattern data"

    #@40
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    .line 1906
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v5

    #@6
    if-gez v5, :cond_0

    #@8
    .line 1907
    return-object p0

    #@9
    .line 1909
    :cond_0
    const/4 v4, 0x0

    #@a
    .line 1910
    .local v4, "isPrevQuote":Z
    const/4 v3, 0x0

    #@b
    .line 1911
    .local v3, "inQuote":Z
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1912
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v5

    #@15
    if-ge v2, v5, :cond_4

    #@17
    .line 1913
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 1914
    .local v1, "c":C
    if-ne v1, v6, :cond_3

    #@1d
    .line 1915
    if-eqz v4, :cond_1

    #@1f
    .line 1916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 1917
    const/4 v4, 0x0

    #@23
    .line 1921
    :goto_1
    if-eqz v3, :cond_2

    #@25
    const/4 v3, 0x0

    #@26
    .line 1912
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1919
    :cond_1
    const/4 v4, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1921
    :cond_2
    const/4 v3, 0x1

    #@2c
    goto :goto_2

    #@2d
    .line 1923
    :cond_3
    const/4 v4, 0x0

    #@2e
    .line 1924
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    goto :goto_2

    #@32
    .line 1927
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3148
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 3150
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "_locale"

    #@7
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 3151
    const-string/jumbo v1, "_tznames"

    #@f
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@14
    .line 3152
    const-string/jumbo v1, "_gmtPattern"

    #@17
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 3153
    const-string/jumbo v1, "_gmtOffsetPatterns"

    #@1f
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@24
    .line 3154
    const-string/jumbo v1, "_gmtOffsetDigits"

    #@27
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 3155
    const-string/jumbo v1, "_gmtZeroFormat"

    #@2f
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    .line 3156
    const-string/jumbo v1, "_parseAllStyles"

    #@37
    iget-boolean v2, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@3c
    .line 3158
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@3f
    .line 3147
    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/text/TimeZoneFormat;
    .locals 2

    #@0
    .prologue
    .line 3275
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    #@6
    .line 3276
    .local v0, "copy":Landroid/icu/text/TimeZoneFormat;
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    #@9
    .line 3277
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3274
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 7
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "tz"    # Landroid/icu/util/TimeZone;
    .param p3, "date"    # J

    #@0
    .prologue
    .line 858
    const/4 v6, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-wide v4, p3

    #@5
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 13
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "tz"    # Landroid/icu/util/TimeZone;
    .param p3, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Landroid/icu/util/TimeZone;",
            "J",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 879
    .local p5, "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v12, 0x0

    #@1
    .line 881
    .local v12, "result":Ljava/lang/String;
    if-eqz p5, :cond_0

    #@3
    .line 882
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@5
    move-object/from16 v0, p5

    #@7
    iput-object v2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@9
    .line 885
    :cond_0
    const/4 v9, 0x0

    #@a
    .line 887
    .local v9, "noOffsetFormatFallback":Z
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid_icu_text_TimeZoneFormat$StyleSwitchesValues()[I

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@11
    move-result v3

    #@12
    aget v2, v2, v3

    #@14
    sparse-switch v2, :sswitch_data_0

    #@17
    .line 925
    .end local v12    # "result":Ljava/lang/String;
    :goto_0
    if-nez v12, :cond_1

    #@19
    if-eqz v9, :cond_3

    #@1b
    .line 996
    :cond_1
    :goto_1
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@1d
    if-nez v2, :cond_7

    #@1f
    if-eqz v12, :cond_6

    #@21
    const/4 v2, 0x1

    #@22
    :goto_2
    if-nez v2, :cond_7

    #@24
    new-instance v2, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v2

    #@2a
    .line 889
    .restart local v12    # "result":Ljava/lang/String;
    :sswitch_0
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v12

    #@36
    .local v12, "result":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 892
    .local v12, "result":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    #@3a
    move-result-object v2

    #@3b
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3d
    move-wide/from16 v0, p3

    #@3f
    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    #@42
    move-result-object v12

    #@43
    .local v12, "result":Ljava/lang/String;
    goto :goto_0

    #@44
    .line 895
    .local v12, "result":Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    #@47
    move-result-object v2

    #@48
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@4a
    move-wide/from16 v0, p3

    #@4c
    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    #@4f
    move-result-object v12

    #@50
    .local v12, "result":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 898
    .local v12, "result":Ljava/lang/String;
    :sswitch_3
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@53
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@55
    move-object v2, p0

    #@56
    move-object v3, p2

    #@57
    move-wide/from16 v6, p3

    #@59
    move-object/from16 v8, p5

    #@5b
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    .local v12, "result":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 901
    .local v12, "result":Ljava/lang/String;
    :sswitch_4
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@62
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@64
    move-object v2, p0

    #@65
    move-object v3, p2

    #@66
    move-wide/from16 v6, p3

    #@68
    move-object/from16 v8, p5

    #@6a
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@6d
    move-result-object v12

    #@6e
    .local v12, "result":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 905
    .local v12, "result":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    #@72
    move-result-object v12

    #@73
    .line 906
    .local v12, "result":Ljava/lang/String;
    const/4 v9, 0x1

    #@74
    .line 907
    goto :goto_0

    #@75
    .line 909
    .local v12, "result":Ljava/lang/String;
    :sswitch_6
    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@78
    move-result-object v12

    #@79
    .line 910
    .local v12, "result":Ljava/lang/String;
    if-nez v12, :cond_2

    #@7b
    .line 911
    const-string/jumbo v12, "unk"

    #@7e
    .line 913
    :cond_2
    const/4 v9, 0x1

    #@7f
    .line 914
    goto :goto_0

    #@80
    .line 916
    .local v12, "result":Ljava/lang/String;
    :sswitch_7
    invoke-direct {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@83
    move-result-object v12

    #@84
    .line 917
    .local v12, "result":Ljava/lang/String;
    const/4 v9, 0x1

    #@85
    .line 918
    goto :goto_0

    #@86
    .line 926
    .end local v12    # "result":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    #@87
    const/4 v3, 0x0

    #@88
    filled-new-array {v2, v3}, [I

    #@8b
    move-result-object v11

    #@8c
    .line 927
    .local v11, "offsets":[I
    const/4 v2, 0x0

    #@8d
    move-wide/from16 v0, p3

    #@8f
    invoke-virtual {p2, v0, v1, v2, v11}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@92
    .line 928
    const/4 v2, 0x0

    #@93
    aget v2, v11, v2

    #@95
    const/4 v3, 0x1

    #@96
    aget v3, v11, v3

    #@98
    add-int v10, v2, v3

    #@9a
    .line 930
    .local v10, "offset":I
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid_icu_text_TimeZoneFormat$StyleSwitchesValues()[I

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@a1
    move-result v3

    #@a2
    aget v2, v2, v3

    #@a4
    packed-switch v2, :pswitch_data_0

    #@a7
    .line 987
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@a9
    if-nez v2, :cond_4

    #@ab
    new-instance v2, Ljava/lang/AssertionError;

    #@ad
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@b0
    throw v2

    #@b1
    .line 935
    :pswitch_0
    invoke-virtual {p0, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    #@b4
    move-result-object v12

    #@b5
    .line 991
    :cond_4
    :goto_3
    if-eqz p5, :cond_1

    #@b7
    .line 992
    const/4 v2, 0x1

    #@b8
    aget v2, v11, v2

    #@ba
    if-eqz v2, :cond_5

    #@bc
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@be
    :goto_4
    move-object/from16 v0, p5

    #@c0
    iput-object v2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@c2
    goto/16 :goto_1

    #@c4
    .line 941
    :pswitch_1
    invoke-virtual {p0, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@c9
    .line 945
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x1

    #@ca
    const/4 v3, 0x1

    #@cb
    const/4 v4, 0x1

    #@cc
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@cf
    move-result-object v12

    #@d0
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@d1
    .line 949
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x0

    #@d2
    const/4 v3, 0x1

    #@d3
    const/4 v4, 0x1

    #@d4
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@d7
    move-result-object v12

    #@d8
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@d9
    .line 953
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x1

    #@da
    const/4 v3, 0x0

    #@db
    const/4 v4, 0x1

    #@dc
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@df
    move-result-object v12

    #@e0
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@e1
    .line 957
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    #@e2
    const/4 v3, 0x0

    #@e3
    const/4 v4, 0x1

    #@e4
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@e7
    move-result-object v12

    #@e8
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@e9
    .line 961
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_6
    const/4 v2, 0x1

    #@ea
    const/4 v3, 0x0

    #@eb
    const/4 v4, 0x0

    #@ec
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@ef
    move-result-object v12

    #@f0
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@f1
    .line 965
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x0

    #@f2
    const/4 v3, 0x0

    #@f3
    const/4 v4, 0x0

    #@f4
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@f7
    move-result-object v12

    #@f8
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@f9
    .line 969
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_8
    const/4 v2, 0x1

    #@fa
    const/4 v3, 0x0

    #@fb
    const/4 v4, 0x1

    #@fc
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    #@ff
    move-result-object v12

    #@100
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@101
    .line 973
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_9
    const/4 v2, 0x0

    #@102
    const/4 v3, 0x0

    #@103
    const/4 v4, 0x1

    #@104
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    #@107
    move-result-object v12

    #@108
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@109
    .line 977
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_a
    const/4 v2, 0x1

    #@10a
    const/4 v3, 0x0

    #@10b
    const/4 v4, 0x0

    #@10c
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    #@10f
    move-result-object v12

    #@110
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@111
    .line 981
    .end local v12    # "result":Ljava/lang/String;
    :pswitch_b
    const/4 v2, 0x0

    #@112
    const/4 v3, 0x0

    #@113
    const/4 v4, 0x0

    #@114
    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    #@117
    move-result-object v12

    #@118
    .restart local v12    # "result":Ljava/lang/String;
    goto :goto_3

    #@119
    .line 992
    .end local v12    # "result":Ljava/lang/String;
    :cond_5
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@11b
    goto :goto_4

    #@11c
    .line 996
    .end local v10    # "offset":I
    .end local v11    # "offsets":[I
    :cond_6
    const/4 v2, 0x0

    #@11d
    goto/16 :goto_2

    #@11f
    .line 998
    :cond_7
    return-object v12

    #@120
    .line 887
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch

    #@142
    .line 930
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1575
    const/4 v3, 0x0

    #@2
    .line 1576
    .local v3, "tz":Landroid/icu/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 1578
    .local v0, "date":J
    instance-of v4, p1, Landroid/icu/util/TimeZone;

    #@8
    if-eqz v4, :cond_0

    #@a
    move-object v3, p1

    #@b
    .line 1579
    check-cast v3, Landroid/icu/util/TimeZone;

    #@d
    .line 1587
    .end local p1    # "obj":Ljava/lang/Object;
    .local v3, "tz":Landroid/icu/util/TimeZone;
    :goto_0
    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@f
    if-nez v4, :cond_3

    #@11
    if-eqz v3, :cond_2

    #@13
    const/4 v4, 0x1

    #@14
    :goto_1
    if-nez v4, :cond_3

    #@16
    new-instance v4, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v4

    #@1c
    .line 1580
    .local v3, "tz":Landroid/icu/util/TimeZone;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v4, p1, Landroid/icu/util/Calendar;

    #@1e
    if-eqz v4, :cond_1

    #@20
    move-object v4, p1

    #@21
    .line 1581
    check-cast v4, Landroid/icu/util/Calendar;

    #@23
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@26
    move-result-object v3

    #@27
    .line 1582
    .local v3, "tz":Landroid/icu/util/TimeZone;
    check-cast p1, Landroid/icu/util/Calendar;

    #@29
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@2c
    move-result-wide v0

    #@2d
    goto :goto_0

    #@2e
    .line 1584
    .local v3, "tz":Landroid/icu/util/TimeZone;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Cannot format given Object ("

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 1585
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 1584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1585
    const-string/jumbo v6, ") as a time zone"

    #@4b
    .line 1584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v4

    #@57
    .end local p1    # "obj":Ljava/lang/Object;
    .local v3, "tz":Landroid/icu/util/TimeZone;
    :cond_2
    move v4, v5

    #@58
    .line 1587
    goto :goto_1

    #@59
    .line 1588
    :cond_3
    invoke-virtual {v3, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@5c
    move-result v4

    #@5d
    invoke-virtual {p0, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 1589
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    .line 1591
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@67
    move-result-object v4

    #@68
    sget-object v6, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@6a
    if-eq v4, v6, :cond_4

    #@6c
    .line 1592
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    #@6f
    move-result v4

    #@70
    const/16 v6, 0x11

    #@72
    if-ne v4, v6, :cond_5

    #@74
    .line 1593
    :cond_4
    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@77
    .line 1594
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7a
    move-result v4

    #@7b
    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@7e
    .line 1596
    :cond_5
    return-object p2
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "useUtcIndicator"    # Z
    .param p3, "isShort"    # Z
    .param p4, "ignoreSeconds"    # Z

    #@0
    .prologue
    .line 769
    const/4 v2, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "useUtcIndicator"    # Z
    .param p3, "isShort"    # Z
    .param p4, "ignoreSeconds"    # Z

    #@0
    .prologue
    .line 788
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 811
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 834
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1606
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1607
    .local v2, "toAppendTo":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v1, v3}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    .line 1608
    .local v1, "pos":Ljava/text/FieldPosition;
    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v2

    #@f
    .line 1611
    new-instance v0, Ljava/text/AttributedString;

    #@11
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v0, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@18
    .line 1612
    .local v0, "as":Ljava/text/AttributedString;
    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@1a
    sget-object v4, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    #@1c
    invoke-virtual {v0, v3, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@1f
    .line 1614
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public freeze()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    #@0
    .prologue
    .line 3266
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    #@3
    .line 3267
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3265
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 743
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 744
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@a
    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@c
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 745
    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 746
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@17
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 747
    :cond_1
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 748
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@22
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 750
    :cond_2
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@29
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 654
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@a
    const/4 v2, 0x0

    #@b
    array-length v4, v3

    #@c
    :goto_0
    if-ge v2, v4, :cond_0

    #@e
    aget-object v1, v3, v2

    #@10
    .line 655
    .local v1, "digit":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 654
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 657
    .end local v1    # "digit":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public getGMTPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGMTZeroFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 1

    #@0
    .prologue
    .line 516
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@2
    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 3258
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    #@2
    return v0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 6
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    #@0
    .prologue
    .line 1528
    .local p4, "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 33
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    #@0
    .prologue
    .line 1070
    .local p4, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;>;"
    .local p5, "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    if-nez p5, :cond_4

    #@2
    .line 1071
    new-instance p5, Landroid/icu/util/Output;

    #@4
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    sget-object v31, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@6
    move-object/from16 v0, p5

    #@8
    move-object/from16 v1, v31

    #@a
    invoke-direct {v0, v1}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@d
    .line 1076
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v27

    #@11
    .line 1077
    .local v27, "startIdx":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@14
    move-result v15

    #@15
    .line 1082
    .local v15, "maxPos":I
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@17
    move-object/from16 v0, p1

    #@19
    move-object/from16 v1, v31

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@1f
    move-object/from16 v0, p1

    #@21
    move-object/from16 v1, v31

    #@23
    if-ne v0, v1, :cond_5

    #@25
    :cond_0
    const/4 v6, 0x1

    #@26
    .line 1084
    .local v6, "fallbackLocalizedGMT":Z
    :goto_1
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@28
    move-object/from16 v0, p1

    #@2a
    move-object/from16 v1, v31

    #@2c
    if-eq v0, v1, :cond_1

    #@2e
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@30
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, v31

    #@34
    if-ne v0, v1, :cond_6

    #@36
    :cond_1
    const/4 v7, 0x1

    #@37
    .line 1086
    .local v7, "fallbackShortLocalizedGMT":Z
    :goto_2
    const/4 v5, 0x0

    #@38
    .line 1087
    .local v5, "evaluated":I
    new-instance v28, Ljava/text/ParsePosition;

    #@3a
    move-object/from16 v0, v28

    #@3c
    move/from16 v1, v27

    #@3e
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    #@41
    .line 1089
    .local v28, "tmpPos":Ljava/text/ParsePosition;
    const v21, 0x7fffffff

    #@44
    .line 1090
    .local v21, "parsedOffset":I
    const/16 v22, -0x1

    #@46
    .line 1093
    .local v22, "parsedPos":I
    if-nez v6, :cond_2

    #@48
    if-eqz v7, :cond_9

    #@4a
    .line 1094
    :cond_2
    new-instance v10, Landroid/icu/util/Output;

    #@4c
    const/16 v31, 0x0

    #@4e
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@51
    move-result-object v31

    #@52
    move-object/from16 v0, v31

    #@54
    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@57
    .line 1095
    .local v10, "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, p2

    #@5b
    move-object/from16 v2, v28

    #@5d
    invoke-direct {v0, v1, v2, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@60
    move-result v17

    #@61
    .line 1096
    .local v17, "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@64
    move-result v31

    #@65
    const/16 v32, -0x1

    #@67
    move/from16 v0, v31

    #@69
    move/from16 v1, v32

    #@6b
    if-ne v0, v1, :cond_8

    #@6d
    .line 1101
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@70
    move-result v31

    #@71
    move/from16 v0, v31

    #@73
    if-eq v0, v15, :cond_3

    #@75
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@77
    move-object/from16 v31, v0

    #@79
    check-cast v31, Ljava/lang/Boolean;

    #@7b
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    #@7e
    move-result v31

    #@7f
    if-eqz v31, :cond_7

    #@81
    .line 1102
    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@84
    move-result v31

    #@85
    move-object/from16 v0, p3

    #@87
    move/from16 v1, v31

    #@89
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@8c
    .line 1103
    move-object/from16 v0, p0

    #@8e
    move/from16 v1, v17

    #@90
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@93
    move-result-object v31

    #@94
    return-object v31

    #@95
    .line 1073
    .end local v5    # "evaluated":I
    .end local v6    # "fallbackLocalizedGMT":Z
    .end local v7    # "fallbackShortLocalizedGMT":Z
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v15    # "maxPos":I
    .end local v17    # "offset":I
    .end local v21    # "parsedOffset":I
    .end local v22    # "parsedPos":I
    .end local v27    # "startIdx":I
    .end local v28    # "tmpPos":Ljava/text/ParsePosition;
    :cond_4
    sget-object v31, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@97
    move-object/from16 v0, v31

    #@99
    move-object/from16 v1, p5

    #@9b
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@9d
    goto/16 :goto_0

    #@9f
    .line 1082
    .restart local v15    # "maxPos":I
    .restart local v27    # "startIdx":I
    :cond_5
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@a1
    move-object/from16 v0, p1

    #@a3
    move-object/from16 v1, v31

    #@a5
    if-eq v0, v1, :cond_0

    #@a7
    const/4 v6, 0x0

    #@a8
    .restart local v6    # "fallbackLocalizedGMT":Z
    goto/16 :goto_1

    #@aa
    .line 1084
    :cond_6
    const/4 v7, 0x0

    #@ab
    .restart local v7    # "fallbackShortLocalizedGMT":Z
    goto :goto_2

    #@ac
    .line 1105
    .restart local v5    # "evaluated":I
    .restart local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .restart local v17    # "offset":I
    .restart local v21    # "parsedOffset":I
    .restart local v22    # "parsedPos":I
    .restart local v28    # "tmpPos":Ljava/text/ParsePosition;
    :cond_7
    move/from16 v21, v17

    #@ae
    .line 1106
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@b1
    move-result v22

    #@b2
    .line 1111
    :cond_8
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@b4
    move-object/from16 v0, v31

    #@b6
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@b8
    move/from16 v31, v0

    #@ba
    sget-object v32, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@bc
    move-object/from16 v0, v32

    #@be
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@c0
    move/from16 v32, v0

    #@c2
    or-int v31, v31, v32

    #@c4
    or-int/lit8 v5, v31, 0x0

    #@c6
    .line 1114
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "offset":I
    :cond_9
    if-nez p4, :cond_b

    #@c8
    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    #@cb
    move-result-object v31

    #@cc
    sget-object v32, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@ce
    invoke-virtual/range {v31 .. v32}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@d1
    move-result v19

    #@d2
    .line 1119
    .local v19, "parseTZDBAbbrev":Z
    :goto_3
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid_icu_text_TimeZoneFormat$StyleSwitchesValues()[I

    #@d5
    move-result-object v31

    #@d6
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@d9
    move-result v32

    #@da
    aget v31, v31, v32

    #@dc
    packed-switch v31, :pswitch_data_0

    #@df
    .line 1302
    :cond_a
    :goto_4
    move-object/from16 v0, p1

    #@e1
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@e3
    move/from16 v31, v0

    #@e5
    or-int v5, v5, v31

    #@e7
    .line 1304
    move/from16 v0, v22

    #@e9
    move/from16 v1, v27

    #@eb
    if-le v0, v1, :cond_1b

    #@ed
    .line 1311
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@ef
    if-nez v31, :cond_1a

    #@f1
    const v31, 0x7fffffff

    #@f4
    move/from16 v0, v21

    #@f6
    move/from16 v1, v31

    #@f8
    if-eq v0, v1, :cond_19

    #@fa
    const/16 v31, 0x1

    #@fc
    :goto_5
    if-nez v31, :cond_1a

    #@fe
    new-instance v31, Ljava/lang/AssertionError;

    #@100
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@103
    throw v31

    #@104
    .line 1116
    .end local v19    # "parseTZDBAbbrev":Z
    :cond_b
    sget-object v31, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@106
    move-object/from16 v0, p4

    #@108
    move-object/from16 v1, v31

    #@10a
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@10d
    move-result v19

    #@10e
    .restart local v19    # "parseTZDBAbbrev":Z
    goto :goto_3

    #@10f
    .line 1122
    :pswitch_0
    move-object/from16 v0, v28

    #@111
    move/from16 v1, v27

    #@113
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@116
    .line 1123
    const/16 v31, -0x1

    #@118
    move-object/from16 v0, v28

    #@11a
    move/from16 v1, v31

    #@11c
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@11f
    .line 1125
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, p2

    #@123
    move-object/from16 v2, v28

    #@125
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    #@128
    move-result v17

    #@129
    .line 1126
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@12c
    move-result v31

    #@12d
    const/16 v32, -0x1

    #@12f
    move/from16 v0, v31

    #@131
    move/from16 v1, v32

    #@133
    if-ne v0, v1, :cond_c

    #@135
    .line 1127
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@138
    move-result v31

    #@139
    move-object/from16 v0, p3

    #@13b
    move/from16 v1, v31

    #@13d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@140
    .line 1128
    move-object/from16 v0, p0

    #@142
    move/from16 v1, v17

    #@144
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@147
    move-result-object v31

    #@148
    return-object v31

    #@149
    .line 1132
    :cond_c
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@14b
    move-object/from16 v0, v31

    #@14d
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@14f
    move/from16 v31, v0

    #@151
    or-int v5, v5, v31

    #@153
    .line 1133
    goto :goto_4

    #@154
    .line 1137
    .end local v17    # "offset":I
    :pswitch_1
    move-object/from16 v0, v28

    #@156
    move/from16 v1, v27

    #@158
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@15b
    .line 1138
    const/16 v31, -0x1

    #@15d
    move-object/from16 v0, v28

    #@15f
    move/from16 v1, v31

    #@161
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@164
    .line 1140
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, p2

    #@168
    move-object/from16 v2, v28

    #@16a
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    #@16d
    move-result v17

    #@16e
    .line 1141
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@171
    move-result v31

    #@172
    const/16 v32, -0x1

    #@174
    move/from16 v0, v31

    #@176
    move/from16 v1, v32

    #@178
    if-ne v0, v1, :cond_d

    #@17a
    .line 1142
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@17d
    move-result v31

    #@17e
    move-object/from16 v0, p3

    #@180
    move/from16 v1, v31

    #@182
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@185
    .line 1143
    move-object/from16 v0, p0

    #@187
    move/from16 v1, v17

    #@189
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@18c
    move-result-object v31

    #@18d
    return-object v31

    #@18e
    .line 1147
    :cond_d
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@190
    move-object/from16 v0, v31

    #@192
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@194
    move/from16 v31, v0

    #@196
    or-int v5, v5, v31

    #@198
    .line 1148
    goto/16 :goto_4

    #@19a
    .line 1157
    .end local v17    # "offset":I
    :pswitch_2
    move-object/from16 v0, v28

    #@19c
    move/from16 v1, v27

    #@19e
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1a1
    .line 1158
    const/16 v31, -0x1

    #@1a3
    move-object/from16 v0, v28

    #@1a5
    move/from16 v1, v31

    #@1a7
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1aa
    .line 1160
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, p2

    #@1ae
    move-object/from16 v2, v28

    #@1b0
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    #@1b3
    move-result v17

    #@1b4
    .line 1161
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@1b7
    move-result v31

    #@1b8
    const/16 v32, -0x1

    #@1ba
    move/from16 v0, v31

    #@1bc
    move/from16 v1, v32

    #@1be
    if-ne v0, v1, :cond_a

    #@1c0
    .line 1162
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@1c3
    move-result v31

    #@1c4
    move-object/from16 v0, p3

    #@1c6
    move/from16 v1, v31

    #@1c8
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1cb
    .line 1163
    move-object/from16 v0, p0

    #@1cd
    move/from16 v1, v17

    #@1cf
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@1d2
    move-result-object v31

    #@1d3
    return-object v31

    #@1d4
    .line 1174
    .end local v17    # "offset":I
    :pswitch_3
    move-object/from16 v0, v28

    #@1d6
    move/from16 v1, v27

    #@1d8
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1db
    .line 1175
    const/16 v31, -0x1

    #@1dd
    move-object/from16 v0, v28

    #@1df
    move/from16 v1, v31

    #@1e1
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1e4
    .line 1178
    new-instance v10, Landroid/icu/util/Output;

    #@1e6
    const/16 v31, 0x0

    #@1e8
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1eb
    move-result-object v31

    #@1ec
    move-object/from16 v0, v31

    #@1ee
    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@1f1
    .line 1179
    .restart local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/16 v31, 0x0

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    move-object/from16 v1, v28

    #@1f7
    move/from16 v2, v31

    #@1f9
    invoke-static {v0, v1, v2, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@1fc
    move-result v17

    #@1fd
    .line 1180
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@200
    move-result v31

    #@201
    const/16 v32, -0x1

    #@203
    move/from16 v0, v31

    #@205
    move/from16 v1, v32

    #@207
    if-ne v0, v1, :cond_a

    #@209
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@20b
    move-object/from16 v31, v0

    #@20d
    check-cast v31, Ljava/lang/Boolean;

    #@20f
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    #@212
    move-result v31

    #@213
    if-eqz v31, :cond_a

    #@215
    .line 1181
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@218
    move-result v31

    #@219
    move-object/from16 v0, p3

    #@21b
    move/from16 v1, v31

    #@21d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@220
    .line 1182
    move-object/from16 v0, p0

    #@222
    move/from16 v1, v17

    #@224
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@227
    move-result-object v31

    #@228
    return-object v31

    #@229
    .line 1191
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "offset":I
    :pswitch_4
    const/16 v16, 0x0

    #@22b
    .line 1192
    .local v16, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@22d
    move-object/from16 v0, p1

    #@22f
    move-object/from16 v1, v31

    #@231
    if-ne v0, v1, :cond_f

    #@233
    .line 1193
    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@235
    sget-object v32, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@237
    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@23a
    move-result-object v16

    #@23b
    .line 1198
    .local v16, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    :goto_6
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@23f
    move-object/from16 v31, v0

    #@241
    move-object/from16 v0, v31

    #@243
    move-object/from16 v1, p2

    #@245
    move/from16 v2, v27

    #@247
    move-object/from16 v3, v16

    #@249
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@24c
    move-result-object v26

    #@24d
    .line 1199
    .local v26, "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v26, :cond_13

    #@24f
    .line 1200
    const/16 v25, 0x0

    #@251
    .line 1201
    .local v25, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@254
    move-result-object v13

    #@255
    .end local v25    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v13, "match$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@258
    move-result v31

    #@259
    if-eqz v31, :cond_12

    #@25b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25e
    move-result-object v12

    #@25f
    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@261
    .line 1202
    .local v12, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@264
    move-result v31

    #@265
    add-int v31, v31, v27

    #@267
    move/from16 v0, v31

    #@269
    move/from16 v1, v22

    #@26b
    if-le v0, v1, :cond_e

    #@26d
    .line 1203
    move-object/from16 v25, v12

    #@26f
    .line 1204
    .local v25, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@272
    move-result v31

    #@273
    add-int v22, v27, v31

    #@275
    goto :goto_7

    #@276
    .line 1195
    .end local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v13    # "match$iterator":Ljava/util/Iterator;
    .end local v25    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v16, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    :cond_f
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@278
    if-nez v31, :cond_11

    #@27a
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@27c
    move-object/from16 v0, p1

    #@27e
    move-object/from16 v1, v31

    #@280
    if-ne v0, v1, :cond_10

    #@282
    const/16 v31, 0x1

    #@284
    :goto_8
    if-nez v31, :cond_11

    #@286
    new-instance v31, Ljava/lang/AssertionError;

    #@288
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@28b
    throw v31

    #@28c
    :cond_10
    const/16 v31, 0x0

    #@28e
    goto :goto_8

    #@28f
    .line 1196
    :cond_11
    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@291
    sget-object v32, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@293
    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@296
    move-result-object v16

    #@297
    .local v16, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    goto :goto_6

    #@298
    .line 1207
    .restart local v13    # "match$iterator":Ljava/util/Iterator;
    .restart local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_12
    if-eqz v25, :cond_13

    #@29a
    .line 1208
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@29d
    move-result-object v31

    #@29e
    move-object/from16 v0, p0

    #@2a0
    move-object/from16 v1, v31

    #@2a2
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2a5
    move-result-object v31

    #@2a6
    move-object/from16 v0, v31

    #@2a8
    move-object/from16 v1, p5

    #@2aa
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2ac
    .line 1209
    move-object/from16 v0, p3

    #@2ae
    move/from16 v1, v22

    #@2b0
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@2b3
    .line 1210
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@2b6
    move-result-object v31

    #@2b7
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@2ba
    move-result-object v32

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    move-object/from16 v1, v31

    #@2bf
    move-object/from16 v2, v32

    #@2c1
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c4
    move-result-object v31

    #@2c5
    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@2c8
    move-result-object v31

    #@2c9
    return-object v31

    #@2ca
    .line 1214
    .end local v13    # "match$iterator":Ljava/util/Iterator;
    :cond_13
    if-eqz v19, :cond_a

    #@2cc
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@2ce
    move-object/from16 v0, p1

    #@2d0
    move-object/from16 v1, v31

    #@2d2
    if-ne v0, v1, :cond_a

    #@2d4
    .line 1215
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@2d6
    if-nez v31, :cond_14

    #@2d8
    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2da
    move-object/from16 v0, v16

    #@2dc
    move-object/from16 v1, v31

    #@2de
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@2e1
    move-result v31

    #@2e2
    if-nez v31, :cond_14

    #@2e4
    new-instance v31, Ljava/lang/AssertionError;

    #@2e6
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@2e9
    throw v31

    #@2ea
    .line 1216
    :cond_14
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@2ec
    if-nez v31, :cond_15

    #@2ee
    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@2f0
    move-object/from16 v0, v16

    #@2f2
    move-object/from16 v1, v31

    #@2f4
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@2f7
    move-result v31

    #@2f8
    if-nez v31, :cond_15

    #@2fa
    new-instance v31, Ljava/lang/AssertionError;

    #@2fc
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@2ff
    throw v31

    #@300
    .line 1219
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@303
    move-result-object v31

    #@304
    move-object/from16 v0, v31

    #@306
    move-object/from16 v1, p2

    #@308
    move/from16 v2, v27

    #@30a
    move-object/from16 v3, v16

    #@30c
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@30f
    move-result-object v30

    #@310
    .line 1220
    .local v30, "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v30, :cond_a

    #@312
    .line 1221
    const/16 v29, 0x0

    #@314
    .line 1222
    .local v29, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@317
    move-result-object v13

    #@318
    .end local v29    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v13    # "match$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@31b
    move-result v31

    #@31c
    if-eqz v31, :cond_17

    #@31e
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@321
    move-result-object v12

    #@322
    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@324
    .line 1223
    .restart local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@327
    move-result v31

    #@328
    add-int v31, v31, v27

    #@32a
    move/from16 v0, v31

    #@32c
    move/from16 v1, v22

    #@32e
    if-le v0, v1, :cond_16

    #@330
    .line 1224
    move-object/from16 v29, v12

    #@332
    .line 1225
    .local v29, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@335
    move-result v31

    #@336
    add-int v22, v27, v31

    #@338
    goto :goto_9

    #@339
    .line 1228
    .end local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v29    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_17
    if-eqz v29, :cond_a

    #@33b
    .line 1229
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@33e
    move-result-object v31

    #@33f
    move-object/from16 v0, p0

    #@341
    move-object/from16 v1, v31

    #@343
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    #@346
    move-result-object v31

    #@347
    move-object/from16 v0, v31

    #@349
    move-object/from16 v1, p5

    #@34b
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@34d
    .line 1230
    move-object/from16 v0, p3

    #@34f
    move/from16 v1, v22

    #@351
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@354
    .line 1231
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@357
    move-result-object v31

    #@358
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@35b
    move-result-object v32

    #@35c
    move-object/from16 v0, p0

    #@35e
    move-object/from16 v1, v31

    #@360
    move-object/from16 v2, v32

    #@362
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@365
    move-result-object v31

    #@366
    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@369
    move-result-object v31

    #@36a
    return-object v31

    #@36b
    .line 1241
    .end local v13    # "match$iterator":Ljava/util/Iterator;
    .end local v16    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    .end local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    .end local v30    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :pswitch_5
    const/4 v9, 0x0

    #@36c
    .line 1242
    .local v9, "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid_icu_text_TimeZoneFormat$StyleSwitchesValues()[I

    #@36f
    move-result-object v31

    #@370
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    #@373
    move-result v32

    #@374
    aget v31, v31, v32

    #@376
    packed-switch v31, :pswitch_data_1

    #@379
    .line 1254
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@37b
    if-nez v31, :cond_18

    #@37d
    new-instance v31, Ljava/lang/AssertionError;

    #@37f
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@382
    throw v31

    #@383
    .line 1244
    :pswitch_6
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@385
    invoke-static/range {v31 .. v31}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@388
    move-result-object v9

    #@389
    .line 1257
    .end local v9    # "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    :cond_18
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    #@38c
    move-result-object v31

    #@38d
    move-object/from16 v0, v31

    #@38f
    move-object/from16 v1, p2

    #@391
    move/from16 v2, v27

    #@393
    invoke-virtual {v0, v1, v2, v9}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@396
    move-result-object v4

    #@397
    .line 1258
    .local v4, "bestGeneric":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v4, :cond_a

    #@399
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@39c
    move-result v31

    #@39d
    add-int v31, v31, v27

    #@39f
    move/from16 v0, v31

    #@3a1
    move/from16 v1, v22

    #@3a3
    if-le v0, v1, :cond_a

    #@3a5
    .line 1259
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    #@3a8
    move-result-object v31

    #@3a9
    move-object/from16 v0, v31

    #@3ab
    move-object/from16 v1, p5

    #@3ad
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@3af
    .line 1260
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@3b2
    move-result v31

    #@3b3
    add-int v31, v31, v27

    #@3b5
    move-object/from16 v0, p3

    #@3b7
    move/from16 v1, v31

    #@3b9
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3bc
    .line 1261
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    #@3bf
    move-result-object v31

    #@3c0
    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@3c3
    move-result-object v31

    #@3c4
    return-object v31

    #@3c5
    .line 1247
    .end local v4    # "bestGeneric":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .restart local v9    # "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    :pswitch_7
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3c7
    sget-object v32, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3c9
    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3cc
    move-result-object v9

    #@3cd
    .local v9, "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    goto :goto_a

    #@3ce
    .line 1250
    .local v9, "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    :pswitch_8
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3d0
    sget-object v32, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3d2
    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@3d5
    move-result-object v9

    #@3d6
    .local v9, "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    goto :goto_a

    #@3d7
    .line 1267
    .end local v9    # "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    :pswitch_9
    move-object/from16 v0, v28

    #@3d9
    move/from16 v1, v27

    #@3db
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3de
    .line 1268
    const/16 v31, -0x1

    #@3e0
    move-object/from16 v0, v28

    #@3e2
    move/from16 v1, v31

    #@3e4
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@3e7
    .line 1270
    move-object/from16 v0, p2

    #@3e9
    move-object/from16 v1, v28

    #@3eb
    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@3ee
    move-result-object v11

    #@3ef
    .line 1271
    .local v11, "id":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@3f2
    move-result v31

    #@3f3
    const/16 v32, -0x1

    #@3f5
    move/from16 v0, v31

    #@3f7
    move/from16 v1, v32

    #@3f9
    if-ne v0, v1, :cond_a

    #@3fb
    .line 1272
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@3fe
    move-result v31

    #@3ff
    move-object/from16 v0, p3

    #@401
    move/from16 v1, v31

    #@403
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@406
    .line 1273
    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@409
    move-result-object v31

    #@40a
    return-object v31

    #@40b
    .line 1279
    .end local v11    # "id":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, v28

    #@40d
    move/from16 v1, v27

    #@40f
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@412
    .line 1280
    const/16 v31, -0x1

    #@414
    move-object/from16 v0, v28

    #@416
    move/from16 v1, v31

    #@418
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@41b
    .line 1282
    move-object/from16 v0, p2

    #@41d
    move-object/from16 v1, v28

    #@41f
    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@422
    move-result-object v11

    #@423
    .line 1283
    .restart local v11    # "id":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@426
    move-result v31

    #@427
    const/16 v32, -0x1

    #@429
    move/from16 v0, v31

    #@42b
    move/from16 v1, v32

    #@42d
    if-ne v0, v1, :cond_a

    #@42f
    .line 1284
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@432
    move-result v31

    #@433
    move-object/from16 v0, p3

    #@435
    move/from16 v1, v31

    #@437
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@43a
    .line 1285
    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@43d
    move-result-object v31

    #@43e
    return-object v31

    #@43f
    .line 1291
    .end local v11    # "id":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, v28

    #@441
    move/from16 v1, v27

    #@443
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@446
    .line 1292
    const/16 v31, -0x1

    #@448
    move-object/from16 v0, v28

    #@44a
    move/from16 v1, v31

    #@44c
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@44f
    .line 1294
    move-object/from16 v0, p0

    #@451
    move-object/from16 v1, p2

    #@453
    move-object/from16 v2, v28

    #@455
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@458
    move-result-object v11

    #@459
    .line 1295
    .restart local v11    # "id":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@45c
    move-result v31

    #@45d
    const/16 v32, -0x1

    #@45f
    move/from16 v0, v31

    #@461
    move/from16 v1, v32

    #@463
    if-ne v0, v1, :cond_a

    #@465
    .line 1296
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@468
    move-result v31

    #@469
    move-object/from16 v0, p3

    #@46b
    move/from16 v1, v31

    #@46d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@470
    .line 1297
    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@473
    move-result-object v31

    #@474
    return-object v31

    #@475
    .line 1311
    .end local v11    # "id":Ljava/lang/String;
    :cond_19
    const/16 v31, 0x0

    #@477
    goto/16 :goto_5

    #@479
    .line 1312
    :cond_1a
    move-object/from16 v0, p3

    #@47b
    move/from16 v1, v22

    #@47d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@480
    .line 1313
    move-object/from16 v0, p0

    #@482
    move/from16 v1, v21

    #@484
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@487
    move-result-object v31

    #@488
    return-object v31

    #@489
    .line 1319
    :cond_1b
    const/16 v20, 0x0

    #@48b
    .line 1320
    .local v20, "parsedID":Ljava/lang/String;
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@48d
    .line 1321
    .local v24, "parsedTimeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@48f
    if-nez v31, :cond_1d

    #@491
    if-gez v22, :cond_1c

    #@493
    const/16 v31, 0x1

    #@495
    :goto_b
    if-nez v31, :cond_1d

    #@497
    new-instance v31, Ljava/lang/AssertionError;

    #@499
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@49c
    throw v31

    #@49d
    :cond_1c
    const/16 v31, 0x0

    #@49f
    goto :goto_b

    #@4a0
    .line 1322
    :cond_1d
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@4a2
    if-nez v31, :cond_1f

    #@4a4
    const v31, 0x7fffffff

    #@4a7
    move/from16 v0, v21

    #@4a9
    move/from16 v1, v31

    #@4ab
    if-ne v0, v1, :cond_1e

    #@4ad
    const/16 v31, 0x1

    #@4af
    :goto_c
    if-nez v31, :cond_1f

    #@4b1
    new-instance v31, Ljava/lang/AssertionError;

    #@4b3
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@4b6
    throw v31

    #@4b7
    :cond_1e
    const/16 v31, 0x0

    #@4b9
    goto :goto_c

    #@4ba
    .line 1325
    :cond_1f
    move/from16 v0, v22

    #@4bc
    if-ge v0, v15, :cond_24

    #@4be
    .line 1326
    and-int/lit16 v0, v5, 0x80

    #@4c0
    move/from16 v31, v0

    #@4c2
    if-eqz v31, :cond_20

    #@4c4
    and-int/lit16 v0, v5, 0x100

    #@4c6
    move/from16 v31, v0

    #@4c8
    if-nez v31, :cond_24

    #@4ca
    .line 1327
    :cond_20
    move-object/from16 v0, v28

    #@4cc
    move/from16 v1, v27

    #@4ce
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@4d1
    .line 1328
    const/16 v31, -0x1

    #@4d3
    move-object/from16 v0, v28

    #@4d5
    move/from16 v1, v31

    #@4d7
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@4da
    .line 1330
    new-instance v10, Landroid/icu/util/Output;

    #@4dc
    const/16 v31, 0x0

    #@4de
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4e1
    move-result-object v31

    #@4e2
    move-object/from16 v0, v31

    #@4e4
    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@4e7
    .line 1331
    .restart local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/16 v31, 0x0

    #@4e9
    move-object/from16 v0, p2

    #@4eb
    move-object/from16 v1, v28

    #@4ed
    move/from16 v2, v31

    #@4ef
    invoke-static {v0, v1, v2, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@4f2
    move-result v17

    #@4f3
    .line 1332
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@4f6
    move-result v31

    #@4f7
    const/16 v32, -0x1

    #@4f9
    move/from16 v0, v31

    #@4fb
    move/from16 v1, v32

    #@4fd
    if-ne v0, v1, :cond_24

    #@4ff
    .line 1333
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@502
    move-result v31

    #@503
    move/from16 v0, v31

    #@505
    if-eq v0, v15, :cond_21

    #@507
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@509
    move-object/from16 v31, v0

    #@50b
    check-cast v31, Ljava/lang/Boolean;

    #@50d
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    #@510
    move-result v31

    #@511
    if-eqz v31, :cond_22

    #@513
    .line 1334
    :cond_21
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@516
    move-result v31

    #@517
    move-object/from16 v0, p3

    #@519
    move/from16 v1, v31

    #@51b
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@51e
    .line 1335
    move-object/from16 v0, p0

    #@520
    move/from16 v1, v17

    #@522
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@525
    move-result-object v31

    #@526
    return-object v31

    #@527
    .line 1340
    :cond_22
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@52a
    move-result v31

    #@52b
    move/from16 v0, v22

    #@52d
    move/from16 v1, v31

    #@52f
    if-ge v0, v1, :cond_24

    #@531
    .line 1341
    move/from16 v21, v17

    #@533
    .line 1342
    const/16 v20, 0x0

    #@535
    .line 1343
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@537
    .line 1344
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@53a
    move-result v22

    #@53b
    .line 1345
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@53d
    if-nez v31, :cond_24

    #@53f
    add-int/lit8 v31, v27, 0x1

    #@541
    move/from16 v0, v22

    #@543
    move/from16 v1, v31

    #@545
    if-ne v0, v1, :cond_23

    #@547
    const/16 v31, 0x1

    #@549
    :goto_d
    if-nez v31, :cond_24

    #@54b
    new-instance v31, Ljava/lang/AssertionError;

    #@54d
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@550
    throw v31

    #@551
    :cond_23
    const/16 v31, 0x0

    #@553
    goto :goto_d

    #@554
    .line 1352
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "offset":I
    :cond_24
    move/from16 v0, v22

    #@556
    if-ge v0, v15, :cond_27

    #@558
    .line 1353
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@55a
    move-object/from16 v0, v31

    #@55c
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@55e
    move/from16 v31, v0

    #@560
    and-int v31, v31, v5

    #@562
    if-nez v31, :cond_27

    #@564
    .line 1354
    move-object/from16 v0, v28

    #@566
    move/from16 v1, v27

    #@568
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@56b
    .line 1355
    const/16 v31, -0x1

    #@56d
    move-object/from16 v0, v28

    #@56f
    move/from16 v1, v31

    #@571
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@574
    .line 1357
    new-instance v10, Landroid/icu/util/Output;

    #@576
    const/16 v31, 0x0

    #@578
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@57b
    move-result-object v31

    #@57c
    move-object/from16 v0, v31

    #@57e
    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@581
    .line 1358
    .restart local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/16 v31, 0x0

    #@583
    move-object/from16 v0, p0

    #@585
    move-object/from16 v1, p2

    #@587
    move-object/from16 v2, v28

    #@589
    move/from16 v3, v31

    #@58b
    invoke-direct {v0, v1, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@58e
    move-result v17

    #@58f
    .line 1359
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@592
    move-result v31

    #@593
    const/16 v32, -0x1

    #@595
    move/from16 v0, v31

    #@597
    move/from16 v1, v32

    #@599
    if-ne v0, v1, :cond_27

    #@59b
    .line 1360
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@59e
    move-result v31

    #@59f
    move/from16 v0, v31

    #@5a1
    if-eq v0, v15, :cond_25

    #@5a3
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@5a5
    move-object/from16 v31, v0

    #@5a7
    check-cast v31, Ljava/lang/Boolean;

    #@5a9
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    #@5ac
    move-result v31

    #@5ad
    if-eqz v31, :cond_26

    #@5af
    .line 1361
    :cond_25
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@5b2
    move-result v31

    #@5b3
    move-object/from16 v0, p3

    #@5b5
    move/from16 v1, v31

    #@5b7
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5ba
    .line 1362
    move-object/from16 v0, p0

    #@5bc
    move/from16 v1, v17

    #@5be
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@5c1
    move-result-object v31

    #@5c2
    return-object v31

    #@5c3
    .line 1365
    :cond_26
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@5c6
    move-result v31

    #@5c7
    move/from16 v0, v22

    #@5c9
    move/from16 v1, v31

    #@5cb
    if-ge v0, v1, :cond_27

    #@5cd
    .line 1366
    move/from16 v21, v17

    #@5cf
    .line 1367
    const/16 v20, 0x0

    #@5d1
    .line 1368
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@5d3
    .line 1369
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@5d6
    move-result v22

    #@5d7
    .line 1374
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "offset":I
    :cond_27
    move/from16 v0, v22

    #@5d9
    if-ge v0, v15, :cond_2a

    #@5db
    .line 1375
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@5dd
    move-object/from16 v0, v31

    #@5df
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@5e1
    move/from16 v31, v0

    #@5e3
    and-int v31, v31, v5

    #@5e5
    if-nez v31, :cond_2a

    #@5e7
    .line 1376
    move-object/from16 v0, v28

    #@5e9
    move/from16 v1, v27

    #@5eb
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5ee
    .line 1377
    const/16 v31, -0x1

    #@5f0
    move-object/from16 v0, v28

    #@5f2
    move/from16 v1, v31

    #@5f4
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@5f7
    .line 1379
    new-instance v10, Landroid/icu/util/Output;

    #@5f9
    const/16 v31, 0x0

    #@5fb
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5fe
    move-result-object v31

    #@5ff
    move-object/from16 v0, v31

    #@601
    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@604
    .line 1380
    .restart local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/16 v31, 0x1

    #@606
    move-object/from16 v0, p0

    #@608
    move-object/from16 v1, p2

    #@60a
    move-object/from16 v2, v28

    #@60c
    move/from16 v3, v31

    #@60e
    invoke-direct {v0, v1, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@611
    move-result v17

    #@612
    .line 1381
    .restart local v17    # "offset":I
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@615
    move-result v31

    #@616
    const/16 v32, -0x1

    #@618
    move/from16 v0, v31

    #@61a
    move/from16 v1, v32

    #@61c
    if-ne v0, v1, :cond_2a

    #@61e
    .line 1382
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@621
    move-result v31

    #@622
    move/from16 v0, v31

    #@624
    if-eq v0, v15, :cond_28

    #@626
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@628
    move-object/from16 v31, v0

    #@62a
    check-cast v31, Ljava/lang/Boolean;

    #@62c
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    #@62f
    move-result v31

    #@630
    if-eqz v31, :cond_29

    #@632
    .line 1383
    :cond_28
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@635
    move-result v31

    #@636
    move-object/from16 v0, p3

    #@638
    move/from16 v1, v31

    #@63a
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@63d
    .line 1384
    move-object/from16 v0, p0

    #@63f
    move/from16 v1, v17

    #@641
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@644
    move-result-object v31

    #@645
    return-object v31

    #@646
    .line 1387
    :cond_29
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@649
    move-result v31

    #@64a
    move/from16 v0, v22

    #@64c
    move/from16 v1, v31

    #@64e
    if-ge v0, v1, :cond_2a

    #@650
    .line 1388
    move/from16 v21, v17

    #@652
    .line 1389
    const/16 v20, 0x0

    #@654
    .line 1390
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@656
    .line 1391
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@659
    move-result v22

    #@65a
    .line 1405
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "offset":I
    :cond_2a
    if-nez p4, :cond_2c

    #@65c
    .line 1406
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    #@65f
    move-result-object v31

    #@660
    sget-object v32, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@662
    invoke-virtual/range {v31 .. v32}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@665
    move-result v18

    #@666
    .line 1409
    .local v18, "parseAllStyles":Z
    :goto_e
    if-eqz v18, :cond_34

    #@668
    .line 1411
    move/from16 v0, v22

    #@66a
    if-ge v0, v15, :cond_2e

    #@66c
    .line 1412
    move-object/from16 v0, p0

    #@66e
    iget-object v0, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@670
    move-object/from16 v31, v0

    #@672
    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    #@674
    move-object/from16 v0, v31

    #@676
    move-object/from16 v1, p2

    #@678
    move/from16 v2, v27

    #@67a
    move-object/from16 v3, v32

    #@67c
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@67f
    move-result-object v26

    #@680
    .line 1413
    .restart local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    const/16 v25, 0x0

    #@682
    .line 1414
    .local v25, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v14, -0x1

    #@683
    .line 1415
    .local v14, "matchPos":I
    if-eqz v26, :cond_2d

    #@685
    .line 1416
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@688
    move-result-object v13

    #@689
    .end local v25    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v13    # "match$iterator":Ljava/util/Iterator;
    :cond_2b
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@68c
    move-result v31

    #@68d
    if-eqz v31, :cond_2d

    #@68f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@692
    move-result-object v12

    #@693
    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@695
    .line 1417
    .restart local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@698
    move-result v31

    #@699
    add-int v31, v31, v27

    #@69b
    move/from16 v0, v31

    #@69d
    if-le v0, v14, :cond_2b

    #@69f
    .line 1418
    move-object/from16 v25, v12

    #@6a1
    .line 1419
    .local v25, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@6a4
    move-result v31

    #@6a5
    add-int v14, v27, v31

    #@6a7
    goto :goto_f

    #@6a8
    .line 1407
    .end local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v13    # "match$iterator":Ljava/util/Iterator;
    .end local v14    # "matchPos":I
    .end local v18    # "parseAllStyles":Z
    .end local v25    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_2c
    sget-object v31, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@6aa
    move-object/from16 v0, p4

    #@6ac
    move-object/from16 v1, v31

    #@6ae
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@6b1
    move-result v18

    #@6b2
    .restart local v18    # "parseAllStyles":Z
    goto :goto_e

    #@6b3
    .line 1423
    .restart local v14    # "matchPos":I
    .restart local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_2d
    move/from16 v0, v22

    #@6b5
    if-ge v0, v14, :cond_2e

    #@6b7
    .line 1424
    move/from16 v22, v14

    #@6b9
    .line 1425
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@6bc
    move-result-object v31

    #@6bd
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@6c0
    move-result-object v32

    #@6c1
    move-object/from16 v0, p0

    #@6c3
    move-object/from16 v1, v31

    #@6c5
    move-object/from16 v2, v32

    #@6c7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6ca
    move-result-object v20

    #@6cb
    .line 1426
    .local v20, "parsedID":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@6ce
    move-result-object v31

    #@6cf
    move-object/from16 v0, p0

    #@6d1
    move-object/from16 v1, v31

    #@6d3
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    #@6d6
    move-result-object v24

    #@6d7
    .line 1427
    const v21, 0x7fffffff

    #@6da
    .line 1430
    .end local v14    # "matchPos":I
    .end local v20    # "parsedID":Ljava/lang/String;
    .end local v26    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_2e
    if-eqz v19, :cond_31

    #@6dc
    move/from16 v0, v22

    #@6de
    if-ge v0, v15, :cond_31

    #@6e0
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@6e2
    move-object/from16 v0, v31

    #@6e4
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@6e6
    move/from16 v31, v0

    #@6e8
    and-int v31, v31, v5

    #@6ea
    if-nez v31, :cond_31

    #@6ec
    .line 1432
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    #@6ef
    move-result-object v31

    #@6f0
    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    #@6f2
    move-object/from16 v0, v31

    #@6f4
    move-object/from16 v1, p2

    #@6f6
    move/from16 v2, v27

    #@6f8
    move-object/from16 v3, v32

    #@6fa
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@6fd
    move-result-object v30

    #@6fe
    .line 1433
    .restart local v30    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    const/16 v29, 0x0

    #@700
    .line 1434
    .local v29, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v14, -0x1

    #@701
    .line 1435
    .restart local v14    # "matchPos":I
    if-eqz v30, :cond_31

    #@703
    .line 1436
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@706
    move-result-object v13

    #@707
    .end local v29    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v13    # "match$iterator":Ljava/util/Iterator;
    :cond_2f
    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@70a
    move-result v31

    #@70b
    if-eqz v31, :cond_30

    #@70d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@710
    move-result-object v12

    #@711
    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@713
    .line 1437
    .restart local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@716
    move-result v31

    #@717
    add-int v31, v31, v27

    #@719
    move/from16 v0, v31

    #@71b
    if-le v0, v14, :cond_2f

    #@71d
    .line 1438
    move-object/from16 v29, v12

    #@71f
    .line 1439
    .local v29, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@722
    move-result v31

    #@723
    add-int v14, v27, v31

    #@725
    goto :goto_10

    #@726
    .line 1442
    .end local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v29    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_30
    move/from16 v0, v22

    #@728
    if-ge v0, v14, :cond_31

    #@72a
    .line 1443
    move/from16 v22, v14

    #@72c
    .line 1444
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@72f
    move-result-object v31

    #@730
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@733
    move-result-object v32

    #@734
    move-object/from16 v0, p0

    #@736
    move-object/from16 v1, v31

    #@738
    move-object/from16 v2, v32

    #@73a
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@73d
    move-result-object v20

    #@73e
    .line 1445
    .restart local v20    # "parsedID":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@741
    move-result-object v31

    #@742
    move-object/from16 v0, p0

    #@744
    move-object/from16 v1, v31

    #@746
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    #@749
    move-result-object v24

    #@74a
    .line 1446
    const v21, 0x7fffffff

    #@74d
    .line 1452
    .end local v13    # "match$iterator":Ljava/util/Iterator;
    .end local v14    # "matchPos":I
    .end local v20    # "parsedID":Ljava/lang/String;
    .end local v30    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_31
    move/from16 v0, v22

    #@74f
    if-ge v0, v15, :cond_32

    #@751
    .line 1453
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    #@754
    move-result-object v31

    #@755
    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    #@757
    move-object/from16 v0, v31

    #@759
    move-object/from16 v1, p2

    #@75b
    move/from16 v2, v27

    #@75d
    move-object/from16 v3, v32

    #@75f
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@762
    move-result-object v8

    #@763
    .line 1454
    .local v8, "genericMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v8, :cond_32

    #@765
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@768
    move-result v31

    #@769
    add-int v31, v31, v27

    #@76b
    move/from16 v0, v22

    #@76d
    move/from16 v1, v31

    #@76f
    if-ge v0, v1, :cond_32

    #@771
    .line 1455
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@774
    move-result v31

    #@775
    add-int v22, v27, v31

    #@777
    .line 1456
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    #@77a
    move-result-object v20

    #@77b
    .line 1457
    .restart local v20    # "parsedID":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    #@77e
    move-result-object v24

    #@77f
    .line 1458
    const v21, 0x7fffffff

    #@782
    .line 1463
    .end local v8    # "genericMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .end local v20    # "parsedID":Ljava/lang/String;
    :cond_32
    move/from16 v0, v22

    #@784
    if-ge v0, v15, :cond_33

    #@786
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@788
    move-object/from16 v0, v31

    #@78a
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@78c
    move/from16 v31, v0

    #@78e
    and-int v31, v31, v5

    #@790
    if-nez v31, :cond_33

    #@792
    .line 1464
    move-object/from16 v0, v28

    #@794
    move/from16 v1, v27

    #@796
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@799
    .line 1465
    const/16 v31, -0x1

    #@79b
    move-object/from16 v0, v28

    #@79d
    move/from16 v1, v31

    #@79f
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@7a2
    .line 1467
    move-object/from16 v0, p2

    #@7a4
    move-object/from16 v1, v28

    #@7a6
    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@7a9
    move-result-object v11

    #@7aa
    .line 1468
    .restart local v11    # "id":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@7ad
    move-result v31

    #@7ae
    const/16 v32, -0x1

    #@7b0
    move/from16 v0, v31

    #@7b2
    move/from16 v1, v32

    #@7b4
    if-ne v0, v1, :cond_33

    #@7b6
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@7b9
    move-result v31

    #@7ba
    move/from16 v0, v22

    #@7bc
    move/from16 v1, v31

    #@7be
    if-ge v0, v1, :cond_33

    #@7c0
    .line 1469
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@7c3
    move-result v22

    #@7c4
    .line 1470
    move-object/from16 v20, v11

    #@7c6
    .line 1471
    .restart local v20    # "parsedID":Ljava/lang/String;
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@7c8
    .line 1472
    const v21, 0x7fffffff

    #@7cb
    .line 1476
    .end local v11    # "id":Ljava/lang/String;
    .end local v20    # "parsedID":Ljava/lang/String;
    :cond_33
    move/from16 v0, v22

    #@7cd
    if-ge v0, v15, :cond_34

    #@7cf
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@7d1
    move-object/from16 v0, v31

    #@7d3
    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@7d5
    move/from16 v31, v0

    #@7d7
    and-int v31, v31, v5

    #@7d9
    if-nez v31, :cond_34

    #@7db
    .line 1477
    move-object/from16 v0, v28

    #@7dd
    move/from16 v1, v27

    #@7df
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@7e2
    .line 1478
    const/16 v31, -0x1

    #@7e4
    move-object/from16 v0, v28

    #@7e6
    move/from16 v1, v31

    #@7e8
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@7eb
    .line 1480
    move-object/from16 v0, p2

    #@7ed
    move-object/from16 v1, v28

    #@7ef
    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@7f2
    move-result-object v11

    #@7f3
    .line 1481
    .restart local v11    # "id":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@7f6
    move-result v31

    #@7f7
    const/16 v32, -0x1

    #@7f9
    move/from16 v0, v31

    #@7fb
    move/from16 v1, v32

    #@7fd
    if-ne v0, v1, :cond_34

    #@7ff
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@802
    move-result v31

    #@803
    move/from16 v0, v22

    #@805
    move/from16 v1, v31

    #@807
    if-ge v0, v1, :cond_34

    #@809
    .line 1482
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    #@80c
    move-result v22

    #@80d
    .line 1483
    move-object/from16 v20, v11

    #@80f
    .line 1484
    .restart local v20    # "parsedID":Ljava/lang/String;
    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@811
    .line 1485
    const v21, 0x7fffffff

    #@814
    .line 1490
    .end local v11    # "id":Ljava/lang/String;
    .end local v20    # "parsedID":Ljava/lang/String;
    :cond_34
    move/from16 v0, v22

    #@816
    move/from16 v1, v27

    #@818
    if-le v0, v1, :cond_38

    #@81a
    .line 1492
    const/16 v23, 0x0

    #@81c
    .line 1493
    .local v23, "parsedTZ":Landroid/icu/util/TimeZone;
    if-eqz v20, :cond_35

    #@81e
    .line 1494
    invoke-static/range {v20 .. v20}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@821
    move-result-object v23

    #@822
    .line 1499
    .local v23, "parsedTZ":Landroid/icu/util/TimeZone;
    :goto_11
    move-object/from16 v0, v24

    #@824
    move-object/from16 v1, p5

    #@826
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@828
    .line 1500
    move-object/from16 v0, p3

    #@82a
    move/from16 v1, v22

    #@82c
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@82f
    .line 1501
    return-object v23

    #@830
    .line 1496
    .local v23, "parsedTZ":Landroid/icu/util/TimeZone;
    :cond_35
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@832
    if-nez v31, :cond_37

    #@834
    const v31, 0x7fffffff

    #@837
    move/from16 v0, v21

    #@839
    move/from16 v1, v31

    #@83b
    if-eq v0, v1, :cond_36

    #@83d
    const/16 v31, 0x1

    #@83f
    :goto_12
    if-nez v31, :cond_37

    #@841
    new-instance v31, Ljava/lang/AssertionError;

    #@843
    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    #@846
    throw v31

    #@847
    :cond_36
    const/16 v31, 0x0

    #@849
    goto :goto_12

    #@84a
    .line 1497
    :cond_37
    move-object/from16 v0, p0

    #@84c
    move/from16 v1, v21

    #@84e
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    #@851
    move-result-object v23

    #@852
    .local v23, "parsedTZ":Landroid/icu/util/TimeZone;
    goto :goto_11

    #@853
    .line 1504
    .end local v23    # "parsedTZ":Landroid/icu/util/TimeZone;
    :cond_38
    move-object/from16 v0, p3

    #@855
    move/from16 v1, v27

    #@857
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@85a
    .line 1505
    const/16 v31, 0x0

    #@85c
    return-object v31

    #@85d
    .line 1119
    nop

    #@85e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch

    #@88a
    .line 1242
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1559
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 1560
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    #@9
    move-result-object v1

    #@a
    .line 1561
    .local v1, "tz":Landroid/icu/util/TimeZone;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@d
    move-result v3

    #@e
    if-ltz v3, :cond_0

    #@10
    .line 1562
    new-instance v3, Ljava/text/ParseException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Unparseable time zone: \""

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, "\""

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@30
    throw v3

    #@31
    .line 1564
    :cond_0
    sget-boolean v3, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    #@33
    if-nez v3, :cond_2

    #@35
    if-eqz v1, :cond_1

    #@37
    const/4 v2, 0x1

    #@38
    :cond_1
    if-nez v2, :cond_2

    #@3a
    new-instance v2, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v2

    #@40
    .line 1565
    :cond_2
    return-object v1
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1545
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@2
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@4
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@7
    move-result-object v4

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1624
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1017
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1034
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1051
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDefaultParseOptions(Ljava/util/EnumSet;)Landroid/icu/text/TimeZoneFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;)",
            "Landroid/icu/text/TimeZoneFormat;"
        }
    .end annotation

    #@0
    .prologue
    .line 731
    .local p1, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;>;"
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    #@8
    .line 732
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@a
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    #@10
    .line 733
    return-object p0
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 3
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 672
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v2, "Attempt to modify frozen object"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 674
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 675
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v2, "Null GMT offset digits"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 677
    :cond_1
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 678
    .local v0, "digitArray":[Ljava/lang/String;
    array-length v1, v0

    #@1f
    const/16 v2, 0xa

    #@21
    if-eq v1, v2, :cond_2

    #@23
    .line 679
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v2, "Length of digits must be 10"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 681
    :cond_2
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    #@2e
    .line 682
    return-object p0
.end method

.method public setGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 3
    .param p1, "type"    # Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 629
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v2, "Attempt to modify frozen object"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 631
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 632
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v2, "Null GMT offset pattern"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 635
    :cond_1
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap2(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {p2, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    .line 637
    .local v0, "parsedItems":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    #@24
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@27
    move-result v2

    #@28
    aput-object p2, v1, v2

    #@2a
    .line 638
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    #@2c
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    #@2f
    move-result v2

    #@30
    aput-object v0, v1, v2

    #@32
    .line 639
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    #@35
    .line 641
    return-object p0
.end method

.method public setGMTPattern(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 599
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 601
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    #@12
    .line 602
    return-object p0
.end method

.method public setGMTZeroFormat(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 2
    .param p1, "gmtZeroFormat"    # Ljava/lang/String;

    #@0
    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 707
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 709
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "Null GMT zero format"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 712
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "Empty GMT zero format"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 715
    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    #@2b
    .line 716
    return-object p0
.end method

.method public setTimeZoneNames(Landroid/icu/text/TimeZoneNames;)Landroid/icu/text/TimeZoneFormat;
    .locals 3
    .param p1, "tznames"    # Landroid/icu/text/TimeZoneNames;

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 569
    :cond_0
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@11
    .line 571
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    #@13
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    #@15
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@17
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    #@1a
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    #@1c
    .line 572
    return-object p0
.end method
