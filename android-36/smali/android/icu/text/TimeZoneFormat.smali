.class public Landroid/icu/text/TimeZoneFormat;
.super Landroid/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;,
        Landroid/icu/text/TimeZoneFormat$ParseOption;,
        Landroid/icu/text/TimeZoneFormat$Style;,
        Landroid/icu/text/TimeZoneFormat$TimeType;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetField;,
        Landroid/icu/text/TimeZoneFormat$OffsetFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UFormat;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final greylist-max-o ASCII_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final greylist-max-o DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final greylist-max-o DEFAULT_GMT_OFFSET_SEP:C = ':'

.field private static final greylist-max-o DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static final greylist-max-o DEFAULT_GMT_ZERO:Ljava/lang/String; = "GMT"

.field private static final greylist-max-o ISO8601_UTC:Ljava/lang/String; = "Z"

.field private static final greylist-max-o ISO_LOCAL_STYLE_FLAG:I = 0x100

.field private static final greylist-max-o ISO_Z_STYLE_FLAG:I = 0x80

.field private static final greylist-max-o MAX_OFFSET:I = 0x5265c00

.field private static final greylist-max-o MAX_OFFSET_HOUR:I = 0x17

.field private static final greylist-max-o MAX_OFFSET_MINUTE:I = 0x3b

.field private static final greylist-max-o MAX_OFFSET_SECOND:I = 0x3b

.field private static final greylist-max-o MILLIS_PER_HOUR:I = 0x36ee80

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

.field private static final greylist-max-o MILLIS_PER_SECOND:I = 0x3e8

.field private static final greylist-max-o PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile greylist-max-o SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TZID_GMT:Ljava/lang/String; = "Etc/GMT"

.field private static final greylist-max-o UNKNOWN_LOCATION:Ljava/lang/String; = "Unknown"

.field private static final greylist-max-o UNKNOWN_OFFSET:I = 0x7fffffff

.field private static final greylist-max-o UNKNOWN_SHORT_ZONE_ID:Ljava/lang/String; = "unk"

.field private static final greylist-max-o UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile greylist-max-o ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o _tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient greylist-max-o _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient greylist-max-o _frozen:Z

.field private greylist-max-o _gmtOffsetDigits:[Ljava/lang/String;

.field private transient greylist-max-o _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private greylist-max-o _gmtOffsetPatterns:[Ljava/lang/String;

.field private greylist-max-o _gmtPattern:Ljava/lang/String;

.field private transient greylist-max-o _gmtPatternPrefix:Ljava/lang/String;

.field private transient greylist-max-o _gmtPatternSuffix:Ljava/lang/String;

.field private greylist-max-o _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient greylist-max-o _gnames:Landroid/icu/impl/TimeZoneGenericNames;

.field private greylist-max-o _locale:Landroid/icu/util/ULocale;

.field private greylist-max-o _parseAllStyles:Z

.field private greylist-max-o _parseTZDBNames:Z

.field private transient greylist-max-o _region:Ljava/lang/String;

.field private volatile transient greylist-max-o _tzdbNames:Landroid/icu/text/TimeZoneNames;

.field private greylist-max-o _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 69
    nop

    .line 326
    const-string v0, "UTC"

    const-string v1, "UT"

    const-string v2, "GMT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    .line 330
    const-string v9, "8"

    const-string v10, "9"

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    .line 341
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 361
    new-instance v1, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Landroid/icu/text/TimeZoneFormat-IA;)V

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    .line 364
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v9, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v1, v2, v9, v10, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    .line 371
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v1, v2, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    .line 3084
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v9, "_locale"

    const-class v10, Landroid/icu/util/ULocale;

    invoke-direct {v2, v9, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_tznames"

    const-class v9, Landroid/icu/text/TimeZoneNames;

    invoke-direct {v2, v3, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_gmtPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_gmtOffsetPatterns"

    const-class v4, [Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_gmtOffsetDigits"

    const-class v4, [Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_gmtZeroFormat"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "_parseAllStyles"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v0

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 11
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 382
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    .line 384
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "gmtPattern":Ljava/lang/String;
    const/4 v1, 0x0

    .line 389
    .local v1, "hourFormats":Ljava/lang/String;
    const-string v2, "GMT"

    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 392
    :try_start_11
    const-string v2, "android/icu/impl/data/icudata/zone"

    invoke-static {v2, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_11 .. :try_end_19} :catch_36

    .line 395
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_19
    const-string v3, "zoneStrings/gmtFormat"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_1f} :catch_21

    .line 398
    .end local v0    # "gmtPattern":Ljava/lang/String;
    .local v3, "gmtPattern":Ljava/lang/String;
    move-object v0, v3

    goto :goto_22

    .line 396
    .end local v3    # "gmtPattern":Ljava/lang/String;
    .restart local v0    # "gmtPattern":Ljava/lang/String;
    :catch_21
    move-exception v3

    .line 400
    :goto_22
    :try_start_22
    const-string v3, "zoneStrings/hourFormat"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catch Ljava/util/MissingResourceException; {:try_start_22 .. :try_end_28} :catch_2a

    .line 403
    .end local v1    # "hourFormats":Ljava/lang/String;
    .local v3, "hourFormats":Ljava/lang/String;
    move-object v1, v3

    goto :goto_2b

    .line 401
    .end local v3    # "hourFormats":Ljava/lang/String;
    .restart local v1    # "hourFormats":Ljava/lang/String;
    :catch_2a
    move-exception v3

    .line 405
    :goto_2b
    :try_start_2b
    const-string v3, "zoneStrings/gmtZeroFormat"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_33
    .catch Ljava/util/MissingResourceException; {:try_start_2b .. :try_end_33} :catch_34

    .line 408
    goto :goto_35

    .line 406
    :catch_34
    move-exception v3

    .line 411
    .end local v2    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_35
    goto :goto_37

    .line 409
    :catch_36
    move-exception v2

    .line 413
    :goto_37
    if-nez v0, :cond_3b

    .line 414
    const-string v0, "GMT{0}"

    .line 416
    :cond_3b
    invoke-direct {p0, v0}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    .line 419
    .local v2, "gmtOffsetPatterns":[Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_9d

    .line 420
    const-string v4, ";"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "hourPatterns":[Ljava/lang/String;
    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v6, v4, v3

    invoke-static {v6}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 422
    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v6, v4, v3

    aput-object v6, v2, v5

    .line 423
    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v4, v3

    invoke-static {v3}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 424
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 425
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v6, v4, v5

    aput-object v6, v2, v3

    .line 426
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 427
    .end local v4    # "hourPatterns":[Ljava/lang/String;
    goto :goto_b3

    .line 428
    :cond_9d
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v4

    array-length v5, v4

    :goto_a2
    if-ge v3, v5, :cond_b3

    aget-object v6, v4, v3

    .line 429
    .local v6, "patType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    invoke-static {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-$$Nest$mdefaultPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 428
    .end local v6    # "patType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 432
    :cond_b3
    :goto_b3
    invoke-direct {p0, v2}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 434
    sget-object v3, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 435
    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v3

    .line 436
    .local v3, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v4

    if-nez v4, :cond_ce

    .line 438
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 440
    :cond_ce
    return-void
.end method

.method private greylist-max-o appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .registers 9
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "n"    # I
    .param p3, "minDigits"    # I

    .line 2095
    nop

    .line 2096
    const/4 v0, 0x2

    const/16 v1, 0xa

    if-lt p2, v1, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    .line 2097
    .local v1, "numDigits":I
    :goto_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    sub-int v3, p3, v1

    if-ge v2, v3, :cond_19

    .line 2098
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2100
    .end local v2    # "i":I
    :cond_19
    if-ne v1, v0, :cond_24

    .line 2101
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v2, p2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    :cond_24
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/lit8 v2, p2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    return-void
.end method

.method private greylist-max-o checkAbuttingHoursAndMinutes()V
    .registers 13

    .line 1892
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    .line 1893
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v2, v1

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    .line 1894
    .local v4, "items":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1895
    .local v5, "afterH":Z
    array-length v6, v4

    move v7, v0

    :goto_e
    if-ge v7, v6, :cond_30

    aget-object v8, v4, v7

    .line 1896
    .local v8, "item":Ljava/lang/Object;
    instance-of v9, v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v9, :cond_29

    .line 1897
    move-object v9, v8

    check-cast v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1898
    .local v9, "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    if-eqz v5, :cond_1f

    .line 1899
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    goto :goto_2c

    .line 1900
    :cond_1f
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v10

    const/16 v11, 0x48

    if-ne v10, v11, :cond_2c

    .line 1901
    const/4 v5, 0x1

    goto :goto_2c

    .line 1903
    .end local v9    # "fld":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    :cond_29
    if-eqz v5, :cond_2c

    .line 1904
    goto :goto_30

    .line 1903
    :cond_2c
    :goto_2c
    nop

    .line 1895
    .end local v8    # "item":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1893
    .end local v4    # "items":[Ljava/lang/Object;
    .end local v5    # "afterH":Z
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1908
    :cond_33
    return-void
.end method

.method private static greylist-max-o expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "offsetHM"    # Ljava/lang/String;

    .line 2050
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2051
    .local v0, "idx_mm":I
    if-ltz v0, :cond_45

    .line 2054
    const-string v1, ":"

    .line 2055
    .local v1, "sep":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2056
    .local v3, "idx_H":I
    if-ltz v3, :cond_1d

    .line 2057
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2059
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ss"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2052
    .end local v1    # "sep":Ljava/lang/String;
    .end local v3    # "idx_H":I
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad time zone hour pattern data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .registers 5
    .param p1, "tz"    # Landroid/icu/util/TimeZone;

    .line 1734
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 1737
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    const-string v2, "Etc/Unknown"

    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    if-nez v0, :cond_1c

    .line 1740
    const-string v0, "Unknown"

    .line 1743
    :cond_1c
    return-object v0
.end method

.method private greylist-max-o formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .registers 17
    .param p1, "offset"    # I
    .param p2, "isBasic"    # Z
    .param p3, "useUtcIndicator"    # Z
    .param p4, "isShort"    # Z
    .param p5, "ignoreSeconds"    # Z

    .line 1642
    if-gez p1, :cond_4

    neg-int v0, p1

    goto :goto_5

    :cond_4
    move v0, p1

    .line 1643
    .local v0, "absOffset":I
    :goto_5
    const v1, 0xea60

    if-eqz p3, :cond_15

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_12

    if-eqz p5, :cond_15

    if-ge v0, v1, :cond_15

    .line 1644
    :cond_12
    const-string v1, "Z"

    return-object v1

    .line 1646
    :cond_15
    if-eqz p4, :cond_1a

    sget-object v2, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_1c

    :cond_1a
    sget-object v2, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 1647
    .local v2, "minFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :goto_1c
    if-eqz p5, :cond_21

    sget-object v3, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_23

    :cond_21
    sget-object v3, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 1648
    .local v3, "maxFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    :goto_23
    if-eqz p2, :cond_27

    const/4 v4, 0x0

    goto :goto_2d

    :cond_27
    const/16 v4, 0x3a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 1653
    .local v4, "sep":Ljava/lang/Character;
    :goto_2d
    const v5, 0x5265c00

    if-ge v0, v5, :cond_99

    .line 1657
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 1658
    .local v5, "fields":[I
    const/4 v6, 0x0

    const v7, 0x36ee80

    div-int v8, v0, v7

    aput v8, v5, v6

    .line 1659
    rem-int/2addr v0, v7

    .line 1660
    div-int v6, v0, v1

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 1661
    rem-int/2addr v0, v1

    .line 1662
    div-int/lit16 v1, v0, 0x3e8

    const/4 v6, 0x2

    aput v1, v5, v6

    .line 1664
    nop

    .line 1665
    nop

    .line 1666
    nop

    .line 1668
    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v1

    .line 1669
    .local v1, "lastIdx":I
    :goto_50
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v6

    if-le v1, v6, :cond_5e

    .line 1670
    aget v6, v5, v1

    if-eqz v6, :cond_5b

    .line 1671
    goto :goto_5e

    .line 1673
    :cond_5b
    add-int/lit8 v1, v1, -0x1

    goto :goto_50

    .line 1676
    :cond_5e
    :goto_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v6, "buf":Ljava/lang/StringBuilder;
    const/16 v7, 0x2b

    .line 1678
    .local v7, "sign":C
    if-gez p1, :cond_74

    .line 1680
    const/4 v8, 0x0

    .local v8, "idx":I
    :goto_68
    if-gt v8, v1, :cond_74

    .line 1681
    aget v9, v5, v8

    if-eqz v9, :cond_71

    .line 1682
    const/16 v7, 0x2d

    .line 1683
    goto :goto_74

    .line 1680
    :cond_71
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    .line 1687
    .end local v8    # "idx":I
    :cond_74
    :goto_74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1689
    const/4 v8, 0x0

    .restart local v8    # "idx":I
    :goto_78
    if-gt v8, v1, :cond_94

    .line 1690
    if-eqz v4, :cond_81

    if-eqz v8, :cond_81

    .line 1691
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_81
    aget v9, v5, v8

    const/16 v10, 0xa

    if-ge v9, v10, :cond_8c

    .line 1694
    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    :cond_8c
    aget v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1689
    add-int/lit8 v8, v8, 0x1

    goto :goto_78

    .line 1698
    .end local v8    # "idx":I
    :cond_94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1654
    .end local v1    # "lastIdx":I
    .end local v5    # "fields":[I
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    .end local v7    # "sign":C
    :cond_99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Offset out of range :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .registers 15
    .param p1, "offset"    # I
    .param p2, "isShort"    # Z

    .line 1567
    if-nez p1, :cond_5

    .line 1568
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object v0

    .line 1571
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1572
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1573
    .local v1, "positive":Z
    if-gez p1, :cond_f

    .line 1574
    neg-int p1, p1

    .line 1575
    const/4 v1, 0x0

    .line 1578
    :cond_f
    const v2, 0x36ee80

    div-int v3, p1, v2

    .line 1579
    .local v3, "offsetH":I
    rem-int/2addr p1, v2

    .line 1580
    const v2, 0xea60

    div-int v4, p1, v2

    .line 1581
    .local v4, "offsetM":I
    rem-int/2addr p1, v2

    .line 1582
    div-int/lit16 v2, p1, 0x3e8

    .line 1584
    .local v2, "offsetS":I
    const/16 v5, 0x17

    if-gt v3, v5, :cond_ba

    const/16 v5, 0x3b

    if-gt v4, v5, :cond_ba

    if-gt v2, v5, :cond_ba

    .line 1589
    if-eqz v1, :cond_51

    .line 1590
    if-eqz v2, :cond_36

    .line 1591
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .local v5, "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_78

    .line 1592
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_36
    if-nez v4, :cond_46

    if-nez p2, :cond_3b

    goto :goto_46

    .line 1595
    :cond_3b
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_78

    .line 1593
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_46
    :goto_46
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_78

    .line 1598
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_51
    if-eqz v2, :cond_5e

    .line 1599
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_78

    .line 1600
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_5e
    if-nez v4, :cond_6e

    if-nez p2, :cond_63

    goto :goto_6e

    .line 1603
    :cond_63
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    goto :goto_78

    .line 1601
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_6e
    :goto_6e
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .line 1608
    .restart local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :goto_78
    iget-object v6, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    array-length v6, v5

    const/4 v7, 0x0

    :goto_7f
    if-ge v7, v6, :cond_b0

    aget-object v8, v5, v7

    .line 1611
    .local v8, "item":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_8e

    .line 1613
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    .line 1614
    :cond_8e
    instance-of v9, v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v9, :cond_ad

    .line 1616
    move-object v9, v8

    check-cast v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1617
    .local v9, "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    invoke-virtual {v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_d4

    goto :goto_ad

    .line 1625
    :sswitch_9e
    invoke-direct {p0, v0, v2, v11}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_ad

    .line 1622
    :sswitch_a2
    invoke-direct {p0, v0, v4, v11}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    .line 1623
    goto :goto_ad

    .line 1619
    :sswitch_a6
    if-eqz p2, :cond_a9

    const/4 v11, 0x1

    :cond_a9
    invoke-direct {p0, v0, v3, v11}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    .line 1620
    nop

    .line 1610
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    :cond_ad
    :goto_ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 1630
    :cond_b0
    iget-object v6, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1585
    .end local v5    # "offsetPatternItems":[Ljava/lang/Object;
    :cond_ba
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Offset out of range :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_d4
    .sparse-switch
        0x48 -> :sswitch_a6
        0x6d -> :sswitch_a2
        0x73 -> :sswitch_9e
    .end sparse-switch
.end method

.method private greylist-max-o formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;
    .registers 10
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
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1712
    .local p6, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    nop

    .line 1713
    nop

    .line 1715
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 1716
    .local v0, "isDaylight":Z
    if-eqz v0, :cond_1a

    .line 1717
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    .line 1718
    :cond_1a
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    :goto_26
    nop

    .line 1720
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_34

    if-eqz p6, :cond_34

    .line 1721
    if-eqz v0, :cond_30

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_32

    :cond_30
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_32
    iput-object v2, p6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1723
    :cond_34
    return-object v1
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 452
    if-eqz p0, :cond_b

    .line 455
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    return-object v0

    .line 453
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 469
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 3

    .line 509
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_17

    .line 510
    monitor-enter p0

    .line 511
    :try_start_5
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_12

    .line 512
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    .line 514
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 516
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method private declared-synchronized greylist-max-o getTargetRegion()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1780
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 1781
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1783
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1784
    .local v0, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1785
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 1786
    const-string v1, "001"

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1790
    .end local v0    # "tmp":Landroid/icu/util/ULocale;
    .end local p0    # "this":Landroid/icu/text/TimeZoneFormat;
    :cond_2d
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    .line 1779
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private greylist-max-o getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .registers 4
    .param p1, "nameType"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 1799
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 1809
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    .line 1806
    :pswitch_e
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    .line 1802
    :pswitch_11
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;
    .registers 3
    .param p1, "offset"    # I

    .line 2112
    if-nez p1, :cond_9

    .line 2114
    const-string v0, "Etc/GMT"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 2116
    :cond_9
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(I)Landroid/icu/util/SimpleTimeZone;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_16

    .line 493
    monitor-enter p0

    .line 494
    :try_start_5
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_11

    .line 495
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneGenericNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    .line 497
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 499
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    return-object v0
.end method

.method private greylist-max-o getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "mzID"    # Ljava/lang/String;

    .line 1760
    move-object v0, p1

    .line 1761
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_2a

    .line 1762
    nop

    .line 1763
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_11

    goto :goto_2a

    .line 1765
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mzID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1768
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private greylist-max-o initGMTOffsetPatterns([Ljava/lang/String;)V
    .registers 12
    .param p1, "gmtOffsetPatterns"    # [Ljava/lang/String;

    .line 1872
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    .line 1873
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_37

    .line 1876
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1877
    .local v1, "gmtOffsetPatternItems":[[Ljava/lang/Object;
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_28

    aget-object v6, v2, v5

    .line 1878
    .local v6, "t":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    .line 1881
    .local v7, "idx":I
    aget-object v8, p1, v7

    invoke-static {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-$$Nest$mrequired(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    .line 1882
    .local v8, "parsedItems":[Ljava/lang/Object;
    aput-object v8, v1, v7

    .line 1877
    .end local v6    # "t":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .end local v7    # "idx":I
    .end local v8    # "parsedItems":[Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1885
    :cond_28
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 1886
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1887
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    .line 1888
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    .line 1889
    return-void

    .line 1874
    .end local v1    # "gmtOffsetPatternItems":[[Ljava/lang/Object;
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o initGMTPattern(Ljava/lang/String;)V
    .registers 6
    .param p1, "gmtPattern"    # Ljava/lang/String;

    .line 1823
    const-string v0, "{0}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1824
    .local v0, "idx":I
    if-ltz v0, :cond_22

    .line 1827
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    .line 1828
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    .line 1829
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    .line 1830
    return-void

    .line 1825
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad localized GMT pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .registers 24
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "minFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p3, "maxFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p4, "fixedHourWidth"    # Z

    .line 2768
    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2770
    .local v1, "start":I
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    xor-int/lit8 v5, p4, 0x1

    sub-int/2addr v2, v5

    .line 2771
    .local v2, "minDigits":I
    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/2addr v5, v4

    .line 2773
    .local v5, "maxDigits":I
    new-array v6, v5, [I

    .line 2774
    .local v6, "digits":[I
    const/4 v7, 0x0

    .line 2775
    .local v7, "numDigits":I
    move v8, v1

    .line 2776
    .local v8, "idx":I
    :goto_1b
    array-length v9, v6

    if-ge v7, v9, :cond_3b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3b

    .line 2777
    const-string v9, "0123456789"

    move-object/from16 v10, p0

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 2778
    .local v9, "digit":I
    if-gez v9, :cond_33

    .line 2779
    goto :goto_3d

    .line 2781
    :cond_33
    aput v9, v6, v7

    .line 2782
    add-int/lit8 v7, v7, 0x1

    .line 2783
    nop

    .end local v9    # "digit":I
    add-int/lit8 v8, v8, 0x1

    .line 2784
    goto :goto_1b

    .line 2776
    :cond_3b
    move-object/from16 v10, p0

    .line 2786
    :goto_3d
    if-eqz p4, :cond_45

    and-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_45

    .line 2788
    add-int/lit8 v7, v7, -0x1

    .line 2791
    :cond_45
    const/4 v9, 0x0

    if-ge v7, v2, :cond_4c

    .line 2792
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2793
    return v9

    .line 2796
    :cond_4c
    const/4 v11, 0x0

    .local v11, "hour":I
    const/4 v12, 0x0

    .local v12, "min":I
    const/4 v13, 0x0

    .line 2797
    .local v13, "sec":I
    const/4 v14, 0x0

    .line 2798
    .local v14, "bParsed":Z
    :goto_50
    if-lt v7, v2, :cond_c5

    .line 2799
    const/4 v15, 0x4

    const/16 v16, 0x3

    packed-switch v7, :pswitch_data_da

    goto :goto_af

    .line 2820
    :pswitch_59
    aget v17, v6, v9

    mul-int/lit8 v17, v17, 0xa

    aget v18, v6, v3

    add-int v11, v17, v18

    .line 2821
    aget v17, v6, v4

    mul-int/lit8 v17, v17, 0xa

    aget v16, v6, v16

    add-int v12, v17, v16

    .line 2822
    aget v15, v6, v15

    mul-int/lit8 v15, v15, 0xa

    const/16 v16, 0x5

    aget v16, v6, v16

    add-int v13, v15, v16

    goto :goto_af

    .line 2815
    :pswitch_74
    aget v11, v6, v9

    .line 2816
    aget v17, v6, v3

    mul-int/lit8 v17, v17, 0xa

    aget v18, v6, v4

    add-int v12, v17, v18

    .line 2817
    aget v16, v6, v16

    mul-int/lit8 v16, v16, 0xa

    aget v15, v6, v15

    add-int v13, v16, v15

    .line 2818
    goto :goto_af

    .line 2811
    :pswitch_87
    aget v15, v6, v9

    mul-int/lit8 v15, v15, 0xa

    aget v17, v6, v3

    add-int v11, v15, v17

    .line 2812
    aget v15, v6, v4

    mul-int/lit8 v15, v15, 0xa

    aget v16, v6, v16

    add-int v12, v15, v16

    .line 2813
    goto :goto_af

    .line 2807
    :pswitch_98
    aget v11, v6, v9

    .line 2808
    aget v15, v6, v3

    mul-int/lit8 v15, v15, 0xa

    aget v16, v6, v4

    add-int v12, v15, v16

    .line 2809
    goto :goto_af

    .line 2804
    :pswitch_a3
    aget v15, v6, v9

    mul-int/lit8 v15, v15, 0xa

    aget v16, v6, v3

    add-int v11, v15, v16

    .line 2805
    goto :goto_af

    .line 2801
    :pswitch_ac
    aget v11, v6, v9

    .line 2802
    nop

    .line 2826
    :goto_af
    const/16 v15, 0x17

    if-gt v11, v15, :cond_bb

    const/16 v15, 0x3b

    if-gt v12, v15, :cond_bb

    if-gt v13, v15, :cond_bb

    .line 2828
    const/4 v14, 0x1

    .line 2829
    goto :goto_c5

    .line 2833
    :cond_bb
    if-eqz p4, :cond_bf

    move v15, v4

    goto :goto_c0

    :cond_bf
    move v15, v3

    :goto_c0
    sub-int/2addr v7, v15

    .line 2834
    move v13, v9

    move v12, v9

    move v11, v9

    goto :goto_50

    .line 2837
    :cond_c5
    :goto_c5
    if-nez v14, :cond_cb

    .line 2838
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2839
    return v9

    .line 2841
    :cond_cb
    add-int v3, v1, v7

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2842
    mul-int/lit8 v3, v11, 0x3c

    add-int/2addr v3, v12

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v13

    mul-int/lit16 v3, v3, 0x3e8

    return v3

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_a3
        :pswitch_98
        :pswitch_87
        :pswitch_74
        :pswitch_59
    .end packed-switch
.end method

.method private greylist-max-o parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .registers 22
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "parsedLen"    # [I

    .line 2513
    const/4 v0, 0x6

    .line 2514
    .local v0, "MAXDIGITS":I
    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 2515
    .local v2, "digits":[I
    new-array v3, v1, [I

    .line 2518
    .local v3, "parsed":[I
    move/from16 v4, p2

    .line 2519
    .local v4, "idx":I
    const/4 v5, 0x0

    filled-new-array {v5}, [I

    move-result-object v6

    .line 2520
    .local v6, "len":[I
    const/4 v7, 0x0

    .line 2521
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    if-ge v8, v1, :cond_2c

    .line 2522
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v4, v6}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v11

    aput v11, v2, v8

    .line 2523
    aget v11, v2, v8

    if-gez v11, :cond_20

    .line 2524
    goto :goto_30

    .line 2526
    :cond_20
    aget v11, v6, v5

    add-int/2addr v4, v11

    .line 2527
    sub-int v11, v4, p2

    aput v11, v3, v8

    .line 2528
    add-int/lit8 v7, v7, 0x1

    .line 2521
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_2c
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 2531
    .end local v8    # "i":I
    :goto_30
    if-nez v7, :cond_35

    .line 2532
    aput v5, p3, v5

    .line 2533
    return v5

    .line 2536
    :cond_35
    const/4 v1, 0x0

    .line 2537
    .local v1, "offset":I
    :goto_36
    if-lez v7, :cond_bd

    .line 2538
    const/4 v8, 0x0

    .line 2539
    .local v8, "hour":I
    const/4 v11, 0x0

    .line 2540
    .local v11, "min":I
    const/4 v12, 0x0

    .line 2542
    .local v12, "sec":I
    nop

    .line 2543
    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    packed-switch v7, :pswitch_data_be

    goto :goto_9a

    .line 2564
    :pswitch_45
    aget v17, v2, v5

    mul-int/lit8 v17, v17, 0xa

    aget v16, v2, v16

    add-int v8, v17, v16

    .line 2565
    aget v15, v2, v15

    mul-int/lit8 v15, v15, 0xa

    aget v14, v2, v14

    add-int v11, v15, v14

    .line 2566
    aget v13, v2, v13

    mul-int/lit8 v13, v13, 0xa

    const/4 v14, 0x5

    aget v14, v2, v14

    add-int v12, v13, v14

    goto :goto_9a

    .line 2559
    :pswitch_5f
    aget v8, v2, v5

    .line 2560
    aget v16, v2, v16

    mul-int/lit8 v16, v16, 0xa

    aget v15, v2, v15

    add-int v11, v16, v15

    .line 2561
    aget v14, v2, v14

    mul-int/lit8 v14, v14, 0xa

    aget v13, v2, v13

    add-int v12, v14, v13

    .line 2562
    goto :goto_9a

    .line 2555
    :pswitch_72
    aget v13, v2, v5

    mul-int/lit8 v13, v13, 0xa

    aget v16, v2, v16

    add-int v8, v13, v16

    .line 2556
    aget v13, v2, v15

    mul-int/lit8 v13, v13, 0xa

    aget v14, v2, v14

    add-int v11, v13, v14

    .line 2557
    goto :goto_9a

    .line 2551
    :pswitch_83
    aget v8, v2, v5

    .line 2552
    aget v13, v2, v16

    mul-int/lit8 v13, v13, 0xa

    aget v14, v2, v15

    add-int v11, v13, v14

    .line 2553
    goto :goto_9a

    .line 2548
    :pswitch_8e
    aget v13, v2, v5

    mul-int/lit8 v13, v13, 0xa

    aget v14, v2, v16

    add-int v8, v13, v14

    .line 2549
    goto :goto_9a

    .line 2545
    :pswitch_97
    aget v8, v2, v5

    .line 2546
    nop

    .line 2569
    :goto_9a
    const/16 v13, 0x17

    if-gt v8, v13, :cond_b8

    const/16 v13, 0x3b

    if-gt v11, v13, :cond_b8

    if-gt v12, v13, :cond_b8

    .line 2571
    const v13, 0x36ee80

    mul-int/2addr v13, v8

    const v14, 0xea60

    mul-int/2addr v14, v11

    add-int/2addr v13, v14

    mul-int/lit16 v14, v12, 0x3e8

    add-int v1, v13, v14

    .line 2572
    add-int/lit8 v13, v7, -0x1

    aget v13, v3, v13

    aput v13, p3, v5

    .line 2573
    goto :goto_bd

    .line 2575
    :cond_b8
    nop

    .end local v8    # "hour":I
    .end local v11    # "min":I
    .end local v12    # "sec":I
    add-int/lit8 v7, v7, -0x1

    .line 2576
    goto/16 :goto_36

    .line 2577
    :cond_bd
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_97
        :pswitch_8e
        :pswitch_83
        :pswitch_72
        :pswitch_5f
        :pswitch_45
    .end packed-switch
.end method

.method private static greylist-max-o parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I
    .registers 18
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "sep"    # C
    .param p3, "minFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .param p4, "maxFields"    # Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2860
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2861
    .local v0, "start":I
    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    .line 2862
    .local v2, "fieldVal":[I
    const/4 v3, -0x1

    filled-new-array {v1, v3, v3}, [I

    move-result-object v4

    .line 2863
    .local v4, "fieldLen":[I
    move v5, v0

    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "fieldIdx":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v5, v7, :cond_5a

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v7

    if-gt v6, v7, :cond_5a

    .line 2864
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2865
    .local v7, "c":C
    move v10, p2

    if-ne v7, v10, :cond_37

    .line 2866
    if-nez v6, :cond_2f

    .line 2867
    aget v11, v4, v1

    if-nez v11, :cond_2c

    .line 2869
    goto :goto_5b

    .line 2872
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 2874
    :cond_2f
    aget v11, v4, v6

    if-eq v11, v3, :cond_34

    .line 2876
    goto :goto_5b

    .line 2878
    :cond_34
    aput v1, v4, v6

    .line 2880
    goto :goto_57

    .line 2881
    :cond_37
    aget v11, v4, v6

    if-ne v11, v3, :cond_3c

    .line 2883
    goto :goto_5b

    .line 2885
    :cond_3c
    const-string v11, "0123456789"

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 2886
    .local v11, "digit":I
    if-gez v11, :cond_45

    .line 2888
    goto :goto_5b

    .line 2890
    :cond_45
    aget v12, v2, v6

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v12, v11

    aput v12, v2, v6

    .line 2891
    aget v12, v4, v6

    add-int/2addr v12, v9

    aput v12, v4, v6

    .line 2892
    aget v9, v4, v6

    if-lt v9, v8, :cond_57

    .line 2894
    add-int/lit8 v6, v6, 0x1

    .line 2863
    .end local v7    # "c":C
    .end local v11    # "digit":I
    :cond_57
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_5a
    move v10, p2

    .line 2898
    .end local v5    # "idx":I
    .end local v6    # "fieldIdx":I
    :goto_5b
    const/4 v3, 0x0

    .line 2899
    .local v3, "offset":I
    const/4 v5, 0x0

    .line 2900
    .local v5, "parsedLen":I
    const/4 v6, 0x0

    .line 2903
    .local v6, "parsedFields":Landroid/icu/text/TimeZoneFormat$OffsetFields;
    aget v7, v4, v1

    if-nez v7, :cond_63

    .line 2904
    goto :goto_aa

    .line 2906
    :cond_63
    aget v7, v2, v1

    const/16 v11, 0x17

    const v12, 0x36ee80

    if-le v7, v11, :cond_76

    .line 2907
    aget v7, v2, v1

    div-int/lit8 v7, v7, 0xa

    mul-int v3, v7, v12

    .line 2908
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2909
    const/4 v5, 0x1

    .line 2910
    goto :goto_aa

    .line 2912
    :cond_76
    aget v7, v2, v1

    mul-int v3, v7, v12

    .line 2913
    aget v5, v4, v1

    .line 2914
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2917
    aget v7, v4, v9

    if-ne v7, v8, :cond_aa

    aget v7, v2, v9

    const/16 v11, 0x3b

    if-le v7, v11, :cond_89

    .line 2918
    goto :goto_aa

    .line 2920
    :cond_89
    aget v7, v2, v9

    const v12, 0xea60

    mul-int/2addr v7, v12

    add-int/2addr v3, v7

    .line 2921
    aget v7, v4, v9

    add-int/2addr v7, v9

    add-int/2addr v5, v7

    .line 2922
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2925
    aget v7, v4, v8

    if-ne v7, v8, :cond_aa

    aget v7, v2, v8

    if-le v7, v11, :cond_9f

    .line 2926
    goto :goto_aa

    .line 2928
    :cond_9f
    aget v7, v2, v8

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v3, v7

    .line 2929
    aget v7, v4, v8

    add-int/2addr v7, v9

    add-int/2addr v5, v7

    .line 2930
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2933
    :cond_aa
    :goto_aa
    if-eqz v6, :cond_bd

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_b7

    goto :goto_bd

    .line 2938
    :cond_b7
    add-int v1, v0, v5

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2939
    return v3

    .line 2934
    :cond_bd
    :goto_bd
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2935
    return v1
.end method

.method private greylist-max-o parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .registers 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "separator"    # C
    .param p4, "parsedLen"    # [I

    .line 2467
    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 2468
    .local v10, "max":I
    move/from16 v2, p2

    .line 2469
    .local v2, "idx":I
    const/4 v11, 0x0

    filled-new-array {v11}, [I

    move-result-object v7

    .line 2470
    .local v7, "len":[I
    const/4 v12, 0x0

    .local v12, "hour":I
    const/4 v13, 0x0

    .local v13, "min":I
    const/4 v14, 0x0

    .line 2473
    .local v14, "sec":I
    const/4 v5, 0x0

    const/16 v6, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v12

    .line 2474
    aget v0, v7, v11

    if-nez v0, :cond_24

    .line 2475
    goto :goto_6f

    .line 2477
    :cond_24
    aget v0, v7, v11

    add-int v15, v2, v0

    .line 2479
    .end local v2    # "idx":I
    .local v15, "idx":I
    add-int/lit8 v0, v15, 0x1

    if-ge v0, v10, :cond_6e

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6e

    .line 2480
    add-int/lit8 v2, v15, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3b

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v13

    .line 2481
    aget v0, v7, v11

    if-nez v0, :cond_45

    .line 2482
    move v2, v15

    goto :goto_6f

    .line 2484
    :cond_45
    aget v0, v7, v11

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v15, v0

    .line 2486
    add-int/lit8 v0, v15, 0x1

    if-ge v0, v10, :cond_6e

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_6e

    .line 2487
    add-int/lit8 v2, v15, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3b

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v14

    .line 2488
    aget v0, v7, v11

    if-nez v0, :cond_67

    .line 2489
    move v2, v15

    goto :goto_6f

    .line 2491
    :cond_67
    aget v0, v7, v11

    add-int/lit8 v0, v0, 0x1

    add-int v2, v15, v0

    .end local v15    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_6f

    .line 2496
    .end local v2    # "idx":I
    .restart local v15    # "idx":I
    :cond_6e
    move v2, v15

    .end local v15    # "idx":I
    .restart local v2    # "idx":I
    :goto_6f
    if-ne v2, v8, :cond_74

    .line 2497
    aput v11, p4, v11

    .line 2498
    return v11

    .line 2501
    :cond_74
    sub-int v0, v2, v8

    aput v0, p4, v11

    .line 2502
    const v0, 0x36ee80

    mul-int/2addr v0, v12

    const v1, 0xea60

    mul-int/2addr v1, v13

    add-int/2addr v0, v1

    mul-int/lit16 v1, v14, 0x3e8

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 3026
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 3027
    .local v0, "startIdx":I
    const/4 v1, -0x1

    .line 3028
    .local v1, "parsedPos":I
    const/4 v2, 0x0

    .line 3030
    .local v2, "tzID":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 3031
    .local v3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v4, p1, v0, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    .line 3032
    .local v4, "exemplarMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v4, :cond_45

    .line 3033
    const/4 v5, 0x0

    .line 3034
    .local v5, "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 3035
    .local v7, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v0

    if-le v8, v1, :cond_33

    .line 3036
    move-object v5, v7

    .line 3037
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int v1, v0, v8

    .line 3039
    .end local v7    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_33
    goto :goto_19

    .line 3040
    :cond_34
    if-eqz v5, :cond_45

    .line 3041
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3042
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3045
    .end local v5    # "exemplarMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_45
    if-nez v2, :cond_4a

    .line 3046
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 3049
    :cond_4a
    return-object v2
.end method

.method private greylist-max-o parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "parsedLen"    # [I

    .line 2395
    move/from16 v2, p2

    .line 2396
    .local v2, "idx":I
    const/4 v6, 0x0

    .line 2397
    .local v6, "offset":I
    const/4 v7, 0x0

    .line 2400
    .local v7, "parsed":I
    const/4 v8, 0x0

    .line 2401
    .local v8, "gmtLen":I
    sget-object v9, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_a
    if-ge v12, v10, :cond_20

    aget-object v3, v9, v12

    .line 2402
    .local v3, "gmt":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2403
    .local v5, "len":I
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2404
    move v8, v5

    .line 2405
    goto :goto_20

    .line 2401
    .end local v3    # "gmt":Ljava/lang/String;
    .end local v5    # "len":I
    :cond_1d
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 2408
    :cond_20
    :goto_20
    if-nez v8, :cond_23

    .line 2409
    goto :goto_73

    .line 2411
    :cond_23
    add-int/2addr v2, v8

    .line 2414
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2d

    .line 2415
    goto :goto_73

    .line 2419
    :cond_2d
    const/4 v1, 0x1

    .line 2420
    .local v1, "sign":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2421
    .local v3, "c":C
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_38

    .line 2422
    const/4 v1, 0x1

    goto :goto_3d

    .line 2423
    :cond_38
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_73

    .line 2424
    const/4 v1, -0x1

    .line 2428
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    .line 2432
    filled-new-array {v11}, [I

    move-result-object v4

    .line 2433
    .local v4, "lenWithSep":[I
    const/16 v5, 0x3a

    invoke-direct {p0, p1, v2, v5, v4}, Landroid/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v5

    .line 2434
    .local v5, "offsetWithSep":I
    aget v9, v4, v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v2

    if-ne v9, v10, :cond_58

    .line 2436
    mul-int v6, v5, v1

    .line 2437
    aget v9, v4, v11

    add-int/2addr v2, v9

    goto :goto_71

    .line 2440
    :cond_58
    filled-new-array {v11}, [I

    move-result-object v9

    .line 2441
    .local v9, "lenAbut":[I
    invoke-direct {p0, p1, v2, v9}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result v10

    .line 2443
    .local v10, "offsetAbut":I
    aget v12, v4, v11

    aget v13, v9, v11

    if-le v12, v13, :cond_6c

    .line 2444
    mul-int v6, v5, v1

    .line 2445
    aget v12, v4, v11

    add-int/2addr v2, v12

    goto :goto_71

    .line 2447
    :cond_6c
    mul-int v6, v10, v1

    .line 2448
    aget v12, v9, v11

    add-int/2addr v2, v12

    .line 2451
    .end local v9    # "lenAbut":[I
    .end local v10    # "offsetAbut":I
    :goto_71
    sub-int v7, v2, p2

    .line 2454
    .end local v1    # "sign":I
    .end local v3    # "c":C
    .end local v4    # "lenWithSep":[I
    .end local v5    # "offsetWithSep":I
    .end local v8    # "gmtLen":I
    :cond_73
    :goto_73
    aput v7, p3, v11

    .line 2455
    return v6
.end method

.method private greylist-max-o parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "minDigits"    # I
    .param p4, "maxDigits"    # I
    .param p5, "minVal"    # I
    .param p6, "maxVal"    # I
    .param p7, "parsedLen"    # [I

    .line 2597
    const/4 v0, 0x0

    aput v0, p7, v0

    .line 2599
    const/4 v1, 0x0

    .line 2600
    .local v1, "decVal":I
    const/4 v2, 0x0

    .line 2601
    .local v2, "numDigits":I
    move v3, p2

    .line 2602
    .local v3, "idx":I
    filled-new-array {v0}, [I

    move-result-object v4

    .line 2603
    .local v4, "digitLen":[I
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_26

    if-ge v2, p4, :cond_26

    .line 2604
    invoke-direct {p0, p1, v3, v4}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v5

    .line 2605
    .local v5, "digit":I
    if-gez v5, :cond_19

    .line 2606
    goto :goto_26

    .line 2608
    :cond_19
    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v5

    .line 2609
    .local v6, "tmpVal":I
    if-le v6, p6, :cond_1f

    .line 2610
    goto :goto_26

    .line 2612
    :cond_1f
    move v1, v6

    .line 2613
    add-int/lit8 v2, v2, 0x1

    .line 2614
    aget v7, v4, v0

    add-int/2addr v3, v7

    .line 2615
    .end local v5    # "digit":I
    .end local v6    # "tmpVal":I
    goto :goto_a

    .line 2618
    :cond_26
    :goto_26
    if-lt v2, p3, :cond_30

    if-ge v1, p5, :cond_2b

    goto :goto_30

    .line 2622
    :cond_2b
    sub-int v5, v3, p2

    aput v5, p7, v0

    goto :goto_32

    .line 2619
    :cond_30
    :goto_30
    const/4 v1, -0x1

    .line 2620
    const/4 v2, 0x0

    .line 2626
    :goto_32
    return v1
.end method

.method private greylist-max-o parseOffsetFields(Ljava/lang/String;IZ[I)I
    .registers 28
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "isShort"    # Z
    .param p4, "parsedLen"    # [I

    .line 2244
    move-object/from16 v0, p0

    move-object/from16 v6, p4

    const/4 v1, 0x0

    .line 2245
    .local v1, "outLen":I
    const/4 v7, 0x0

    .line 2246
    .local v7, "offset":I
    const/4 v8, 0x1

    .line 2248
    .local v8, "sign":I
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_10

    array-length v2, v6

    if-lt v2, v9, :cond_10

    .line 2249
    aput v10, v6, v10

    .line 2253
    :cond_10
    move v11, v10

    .local v11, "offsetS":I
    move v12, v10

    .local v12, "offsetM":I
    move v13, v10

    .line 2255
    .local v13, "offsetH":I
    filled-new-array {v10, v10, v10}, [I

    move-result-object v5

    .line 2256
    .local v5, "fields":[I
    sget-object v14, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v15, v14

    move/from16 v16, v1

    move v1, v10

    .end local v1    # "outLen":I
    .local v16, "outLen":I
    :goto_1d
    const/16 v17, 0x2

    const/16 v18, -0x1

    if-ge v1, v15, :cond_52

    aget-object v19, v14, v1

    .line 2257
    .local v19, "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    .line 2258
    .local v3, "items":[Ljava/lang/Object;
    nop

    .line 2260
    const/4 v4, 0x0

    move/from16 v2, p2

    move/from16 v20, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v16

    .line 2261
    if-lez v16, :cond_4f

    .line 2262
    invoke-static/range {v19 .. v19}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-$$Nest$misPositive(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_43

    move v1, v9

    goto :goto_45

    :cond_43
    move/from16 v1, v18

    :goto_45
    move v8, v1

    .line 2263
    aget v13, v5, v10

    .line 2264
    aget v12, v5, v9

    .line 2265
    aget v11, v5, v17

    .line 2266
    move/from16 v14, v16

    goto :goto_54

    .line 2256
    .end local v3    # "items":[Ljava/lang/Object;
    .end local v19    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_4f
    add-int/lit8 v1, v20, 0x1

    goto :goto_1d

    :cond_52
    move/from16 v14, v16

    .line 2269
    .end local v16    # "outLen":I
    .local v14, "outLen":I
    :goto_54
    if-lez v14, :cond_a5

    iget-boolean v1, v0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v1, :cond_a5

    .line 2274
    const/4 v1, 0x0

    .line 2275
    .local v1, "tmpLen":I
    const/4 v15, 0x1

    .line 2276
    .local v15, "tmpSign":I
    sget-object v2, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v3, v2

    move/from16 v16, v1

    move v1, v10

    .end local v1    # "tmpLen":I
    .local v16, "tmpLen":I
    :goto_62
    if-ge v1, v3, :cond_99

    aget-object v19, v2, v1

    .line 2277
    .restart local v19    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    iget-object v4, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v20

    aget-object v4, v4, v20

    .line 2278
    .local v4, "items":[Ljava/lang/Object;
    nop

    .line 2281
    move/from16 v20, v3

    move-object v3, v4

    .end local v4    # "items":[Ljava/lang/Object;
    .restart local v3    # "items":[Ljava/lang/Object;
    const/4 v4, 0x1

    move/from16 v22, v1

    move/from16 v21, v20

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v16

    .line 2282
    if-lez v16, :cond_90

    .line 2283
    invoke-static/range {v19 .. v19}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-$$Nest$misPositive(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v0

    if-eqz v0, :cond_8b

    move/from16 v18, v9

    :cond_8b
    move/from16 v15, v18

    .line 2284
    move/from16 v0, v16

    goto :goto_9b

    .line 2276
    .end local v3    # "items":[Ljava/lang/Object;
    .end local v19    # "gmtPatType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_90
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    goto :goto_62

    :cond_99
    move/from16 v0, v16

    .line 2287
    .end local v16    # "tmpLen":I
    .local v0, "tmpLen":I
    :goto_9b
    if-le v0, v14, :cond_a5

    .line 2289
    move v14, v0

    .line 2290
    move v8, v15

    .line 2291
    aget v13, v5, v10

    .line 2292
    aget v12, v5, v9

    .line 2293
    aget v11, v5, v17

    .line 2297
    .end local v0    # "tmpLen":I
    .end local v15    # "tmpSign":I
    :cond_a5
    if-eqz v6, :cond_ac

    array-length v0, v6

    if-lt v0, v9, :cond_ac

    .line 2298
    aput v14, v6, v10

    .line 2301
    :cond_ac
    if-lez v14, :cond_b8

    .line 2302
    mul-int/lit8 v0, v13, 0x3c

    add-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    mul-int v7, v0, v8

    .line 2305
    :cond_b8
    return v7
.end method

.method private greylist-max-o parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .registers 25
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternItems"    # [Ljava/lang/Object;
    .param p4, "forceSingleHourDigit"    # Z
    .param p5, "fields"    # [I

    .line 2319
    move-object/from16 v0, p3

    .line 2320
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p5, v1

    const/4 v3, 0x1

    aput v2, p5, v3

    aput v2, p5, v2

    .line 2322
    const/4 v4, 0x0

    .line 2324
    .local v4, "failed":Z
    move v5, v2

    .local v5, "offsetS":I
    move v6, v2

    .local v6, "offsetM":I
    move v7, v2

    .line 2325
    .local v7, "offsetH":I
    move/from16 v8, p2

    .line 2326
    .local v8, "idx":I
    filled-new-array {v2}, [I

    move-result-object v9

    move-object/from16 v17, v9

    .line 2327
    .local v17, "tmpParsedLen":[I
    const/4 v9, 0x0

    move v12, v8

    move v14, v9

    .end local v8    # "idx":I
    .local v12, "idx":I
    .local v14, "i":I
    :goto_1a
    array-length v8, v0

    if-ge v14, v8, :cond_c9

    .line 2328
    aget-object v8, v0, v14

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_6e

    .line 2329
    aget-object v8, v0, v14

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 2330
    .local v11, "patStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 2331
    .local v8, "len":I
    const/4 v9, 0x0

    .line 2332
    .local v9, "patIdx":I
    if-nez v14, :cond_57

    .line 2337
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v12, v10, :cond_54

    move-object/from16 v10, p1

    invoke-virtual {v10, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-nez v13, :cond_59

    .line 2338
    :goto_41
    if-lez v8, :cond_59

    .line 2339
    invoke-virtual {v11, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 2340
    .local v13, "cp":I
    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 2341
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    .line 2342
    .local v15, "cpLen":I
    sub-int/2addr v8, v15

    .line 2343
    add-int/2addr v9, v15

    .line 2347
    .end local v13    # "cp":I
    .end local v15    # "cpLen":I
    goto :goto_41

    .line 2337
    :cond_54
    move-object/from16 v10, p1

    goto :goto_59

    .line 2332
    :cond_57
    move-object/from16 v10, p1

    .line 2350
    :cond_59
    :goto_59
    move v13, v8

    .end local v8    # "len":I
    .local v13, "len":I
    move v10, v12

    move v12, v9

    .end local v9    # "patIdx":I
    .local v10, "idx":I
    .local v12, "patIdx":I
    const/4 v9, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_68

    .line 2351
    const/4 v4, 0x1

    .line 2352
    goto/16 :goto_cc

    .line 2354
    :cond_68
    add-int v12, v10, v13

    .line 2355
    .end local v10    # "idx":I
    .end local v11    # "patStr":Ljava/lang/String;
    .end local v13    # "len":I
    .local v12, "idx":I
    move/from16 v18, v14

    goto/16 :goto_c5

    .line 2356
    :cond_6e
    move v10, v12

    .line 2357
    .end local v12    # "idx":I
    .restart local v10    # "idx":I
    aget-object v8, v0, v14

    check-cast v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 2358
    .local v8, "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v9

    .line 2359
    .local v9, "fieldType":C
    const/16 v11, 0x48

    if-ne v9, v11, :cond_92

    .line 2360
    if-eqz p4, :cond_7f

    move v11, v3

    goto :goto_80

    :cond_7f
    move v11, v1

    .line 2361
    .local v11, "maxDigits":I
    :goto_80
    const/4 v15, 0x0

    const/16 v16, 0x17

    const/4 v13, 0x1

    move v12, v10

    move/from16 v18, v14

    move-object/from16 v10, p0

    move v14, v11

    move-object/from16 v11, p1

    .end local v10    # "idx":I
    .end local v11    # "maxDigits":I
    .restart local v12    # "idx":I
    .local v14, "maxDigits":I
    .local v18, "i":I
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v7

    .line 2362
    move v10, v12

    .end local v12    # "idx":I
    .end local v14    # "maxDigits":I
    .restart local v10    # "idx":I
    goto :goto_bb

    .end local v18    # "i":I
    .local v14, "i":I
    :cond_92
    move/from16 v18, v14

    .end local v14    # "i":I
    .restart local v18    # "i":I
    const/16 v11, 0x6d

    if-ne v9, v11, :cond_a8

    .line 2363
    const/4 v15, 0x0

    const/16 v16, 0x3b

    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v11, p1

    move v12, v10

    move-object/from16 v10, p0

    .end local v10    # "idx":I
    .restart local v12    # "idx":I
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v6

    move v10, v12

    .end local v12    # "idx":I
    .restart local v10    # "idx":I
    goto :goto_bb

    .line 2364
    :cond_a8
    const/16 v11, 0x73

    if-ne v9, v11, :cond_bb

    .line 2365
    const/4 v15, 0x0

    const/16 v16, 0x3b

    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v11, p1

    move v12, v10

    move-object/from16 v10, p0

    .end local v10    # "idx":I
    .restart local v12    # "idx":I
    invoke-direct/range {v10 .. v17}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v5

    move v10, v12

    .line 2368
    .end local v12    # "idx":I
    .restart local v10    # "idx":I
    :cond_bb
    :goto_bb
    aget v11, v17, v2

    if-nez v11, :cond_c1

    .line 2369
    const/4 v4, 0x1

    .line 2370
    goto :goto_cc

    .line 2372
    :cond_c1
    aget v11, v17, v2

    add-int v12, v10, v11

    .line 2327
    .end local v8    # "field":Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
    .end local v9    # "fieldType":C
    .end local v10    # "idx":I
    .restart local v12    # "idx":I
    :goto_c5
    add-int/lit8 v14, v18, 0x1

    .end local v18    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_1a

    :cond_c9
    move v10, v12

    move/from16 v18, v14

    .line 2376
    .end local v12    # "idx":I
    .end local v14    # "i":I
    .restart local v10    # "idx":I
    :goto_cc
    if-eqz v4, :cond_cf

    .line 2377
    return v2

    .line 2380
    :cond_cf
    aput v7, p5, v2

    .line 2381
    aput v6, p5, v3

    .line 2382
    aput v5, p5, v1

    .line 2384
    sub-int v12, v10, p2

    return v12
.end method

.method private static greylist-max-o parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .registers 15
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "extendedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 2701
    .local p3, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 2702
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2704
    :cond_9
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2705
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_17

    .line 2706
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2707
    return v0

    .line 2710
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2711
    .local v2, "firstChar":C
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const-string v4, "Z"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2d

    .line 2713
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2714
    return v0

    .line 2718
    :cond_2d
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_33

    .line 2719
    const/4 v3, 0x1

    .local v3, "sign":I
    goto :goto_38

    .line 2720
    .end local v3    # "sign":I
    :cond_33
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_9e

    .line 2721
    const/4 v3, -0x1

    .line 2727
    .restart local v3    # "sign":I
    :goto_38
    new-instance v4, Ljava/text/ParsePosition;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2728
    .local v4, "posOffset":Ljava/text/ParsePosition;
    sget-object v5, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const/16 v7, 0x3a

    invoke-static {p0, v4, v7, v5, v6}, Landroid/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v5

    .line 2729
    .local v5, "offset":I
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_81

    if-nez p2, :cond_81

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v8, 0x3

    if-gt v6, v8, :cond_81

    .line 2733
    new-instance v6, Ljava/text/ParsePosition;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v6, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2734
    .local v6, "posBasic":Ljava/text/ParsePosition;
    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v9, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v6, v8, v9, v0}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result v8

    .line 2735
    .local v8, "tmpOffset":I
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-ne v9, v7, :cond_81

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-le v9, v10, :cond_81

    .line 2736
    move v5, v8

    .line 2737
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2741
    .end local v6    # "posBasic":Ljava/text/ParsePosition;
    .end local v8    # "tmpOffset":I
    :cond_81
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-eq v6, v7, :cond_8b

    .line 2742
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2743
    return v0

    .line 2746
    :cond_8b
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2747
    if-eqz p3, :cond_9b

    .line 2748
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2750
    :cond_9b
    mul-int v0, v3, v5

    return v0

    .line 2724
    .end local v3    # "sign":I
    .end local v4    # "posOffset":Ljava/text/ParsePosition;
    .end local v5    # "offset":I
    :cond_9e
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2725
    return v0
.end method

.method private greylist-max-o parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "isShort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 2133
    .local p4, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 2134
    .local v2, "start":I
    const/4 v0, 0x0

    .line 2135
    .local v0, "offset":I
    const/4 v6, 0x0

    filled-new-array {v6}, [I

    move-result-object v1

    move-object v7, v1

    .line 2137
    .local v7, "parsedLength":[I
    if-eqz p4, :cond_13

    .line 2138
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2141
    :cond_13
    invoke-direct {p0, p1, v2, p3, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result v0

    .line 2151
    aget v1, v7, v6

    const/4 v3, 0x1

    if-lez v1, :cond_2b

    .line 2152
    if-eqz p4, :cond_24

    .line 2153
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2155
    :cond_24
    aget v1, v7, v6

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2156
    return v0

    .line 2160
    :cond_2b
    invoke-direct {p0, p1, v2, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result v8

    .line 2161
    .end local v0    # "offset":I
    .local v8, "offset":I
    aget v0, v7, v6

    if-lez v0, :cond_42

    .line 2162
    if-eqz p4, :cond_3b

    .line 2163
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2165
    :cond_3b
    aget v0, v7, v6

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2166
    return v8

    .line 2170
    :cond_42
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v0, "text":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 2171
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2172
    return v6

    .line 2176
    :cond_5e
    sget-object p1, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v9, p1

    move v10, v6

    :goto_62
    if-ge v10, v9, :cond_7e

    aget-object v3, p1, v10

    .line 2177
    .local v3, "defGMTZero":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 2178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2179
    return v6

    .line 2176
    .end local v3    # "defGMTZero":Ljava/lang/String;
    :cond_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    .line 2184
    :cond_7e
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2185
    return v6
.end method

.method private greylist-max-o parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .registers 21
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "isShort"    # Z
    .param p4, "parsedLen"    # [I

    .line 2198
    move-object/from16 v0, p0

    move/from16 v3, p2

    .line 2199
    .local v3, "idx":I
    const/4 v7, 0x0

    .line 2200
    .local v7, "offset":I
    const/4 v8, 0x0

    .line 2204
    .local v8, "parsed":Z
    iget-object v1, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2205
    .local v6, "len":I
    const/4 v9, 0x0

    if-lez v6, :cond_1c

    iget-object v4, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2207
    goto :goto_46

    .line 2209
    :cond_1c
    add-int/2addr v3, v6

    .line 2212
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 2213
    .local v1, "offsetLen":[I
    move-object/from16 v10, p1

    invoke-direct {v0, v10, v3, v9, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v7

    .line 2214
    aget v2, v1, v9

    if-nez v2, :cond_2b

    .line 2216
    goto :goto_46

    .line 2218
    :cond_2b
    aget v2, v1, v9

    add-int v12, v3, v2

    .line 2221
    .end local v3    # "idx":I
    .local v12, "idx":I
    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    .line 2222
    .end local v6    # "len":I
    .local v15, "len":I
    if-lez v15, :cond_43

    iget-object v13, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_43

    .line 2224
    move v3, v12

    goto :goto_46

    .line 2226
    :cond_43
    add-int v3, v12, v15

    .line 2227
    .end local v12    # "idx":I
    .restart local v3    # "idx":I
    const/4 v8, 0x1

    .line 2230
    .end local v1    # "offsetLen":[I
    .end local v15    # "len":I
    :goto_46
    if-eqz v8, :cond_4b

    sub-int v1, v3, p2

    goto :goto_4c

    :cond_4b
    move v1, v9

    :goto_4c
    aput v1, p4, v9

    .line 2231
    return v7
.end method

.method private static greylist-max-o parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 15
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "letters"    # Ljava/lang/String;

    .line 1946
    const/4 v0, 0x0

    .line 1947
    .local v0, "isPrevQuote":Z
    const/4 v1, 0x0

    .line 1948
    .local v1, "inQuote":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1949
    .local v2, "text":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1950
    .local v3, "itemType":C
    const/4 v4, 0x1

    .line 1951
    .local v4, "itemLength":I
    const/4 v5, 0x0

    .line 1953
    .local v5, "invalidPattern":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 1956
    .local v7, "checkBits":Ljava/util/BitSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    if-ge v8, v9, :cond_9f

    .line 1957
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1958
    .local v9, "ch":C
    const/16 v11, 0x27

    if-ne v9, v11, :cond_49

    .line 1959
    if-eqz v0, :cond_2f

    .line 1960
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1961
    const/4 v0, 0x0

    goto :goto_44

    .line 1963
    :cond_2f
    const/4 v0, 0x1

    .line 1964
    if-eqz v3, :cond_44

    .line 1965
    invoke-static {v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 1966
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1971
    const/4 v3, 0x0

    goto :goto_44

    .line 1968
    :cond_42
    const/4 v5, 0x1

    .line 1969
    goto :goto_9f

    .line 1974
    :cond_44
    :goto_44
    if-nez v1, :cond_47

    const/4 v10, 0x1

    :cond_47
    move v1, v10

    .end local v1    # "inQuote":Z
    .local v10, "inQuote":Z
    goto :goto_9b

    .line 1976
    .end local v10    # "inQuote":Z
    .restart local v1    # "inQuote":Z
    :cond_49
    const/4 v0, 0x0

    .line 1977
    if-eqz v1, :cond_50

    .line 1978
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 1980
    :cond_50
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 1981
    .local v11, "patFieldIdx":I
    if-ltz v11, :cond_84

    .line 1983
    if-ne v9, v3, :cond_5b

    .line 1984
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 1986
    :cond_5b
    if-nez v3, :cond_6e

    .line 1987
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_7c

    .line 1988
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_7c

    .line 1992
    :cond_6e
    invoke-static {v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 1993
    new-instance v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v10, v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1999
    :cond_7c
    :goto_7c
    move v3, v9

    .line 2000
    const/4 v4, 0x1

    .line 2001
    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_9b

    .line 1995
    :cond_82
    const/4 v5, 0x1

    .line 1996
    goto :goto_9f

    .line 2005
    :cond_84
    if-eqz v3, :cond_98

    .line 2006
    invoke-static {v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v12

    if-eqz v12, :cond_96

    .line 2007
    new-instance v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v10, v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2012
    const/4 v3, 0x0

    goto :goto_98

    .line 2009
    :cond_96
    const/4 v5, 0x1

    .line 2010
    goto :goto_9f

    .line 2014
    :cond_98
    :goto_98
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1956
    .end local v9    # "ch":C
    .end local v11    # "patFieldIdx":I
    :goto_9b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_19

    .line 2020
    .end local v8    # "i":I
    :cond_9f
    :goto_9f
    if-nez v5, :cond_c4

    .line 2021
    if-nez v3, :cond_b4

    .line 2022
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_c4

    .line 2023
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_c4

    .line 2027
    :cond_b4
    invoke-static {v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 2028
    new-instance v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v8, v3, v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 2030
    :cond_c3
    const/4 v5, 0x1

    .line 2035
    :cond_c4
    :goto_c4
    if-nez v5, :cond_db

    invoke-virtual {v7}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_db

    .line 2039
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 2036
    :cond_db
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad localized GMT offset pattern: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static greylist-max-o parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 2987
    const/4 v0, 0x0

    .line 2988
    .local v0, "resolvedID":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v1, :cond_41

    .line 2989
    const-class v1, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v1

    .line 2990
    :try_start_8
    sget-object v2, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v2, :cond_3c

    .line 2992
    new-instance v2, Landroid/icu/impl/TextTrieMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 2993
    .local v2, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    sget-object v3, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v3

    .line 2994
    .local v3, "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2995
    .local v5, "id":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2996
    .local v6, "shortID":Ljava/lang/String;
    if-eqz v6, :cond_32

    .line 2997
    invoke-virtual {v2, v6, v5}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 2999
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "shortID":Ljava/lang/String;
    :cond_32
    goto :goto_1d

    .line 3001
    :cond_33
    const-string v4, "unk"

    const-string v5, "Etc/Unknown"

    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 3002
    sput-object v2, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 3004
    .end local v2    # "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    .end local v3    # "canonicalIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3c
    monitor-exit v1

    goto :goto_41

    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v2

    .line 3007
    :cond_41
    :goto_41
    new-instance v1, Landroid/icu/impl/TextTrieMap$Output;

    invoke-direct {v1}, Landroid/icu/impl/TextTrieMap$Output;-><init>()V

    .line 3008
    .local v1, "trieOutput":Landroid/icu/impl/TextTrieMap$Output;
    sget-object v2, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, p0, v3, v1}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v2

    .line 3009
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_64

    .line 3010
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 3011
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    iget v4, v1, Landroid/icu/impl/TextTrieMap$Output;->matchLength:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_6b

    .line 3013
    :cond_64
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 3016
    :goto_6b
    return-object v0
.end method

.method private greylist-max-o parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # [I

    .line 2639
    const/4 v0, -0x1

    .line 2640
    .local v0, "digit":I
    const/4 v1, 0x0

    aput v1, p3, v1

    .line 2641
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_31

    .line 2642
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2645
    .local v2, "cp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_23

    .line 2646
    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-ne v2, v4, :cond_20

    .line 2647
    move v0, v3

    .line 2648
    goto :goto_23

    .line 2645
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2652
    .end local v3    # "i":I
    :cond_23
    :goto_23
    if-gez v0, :cond_29

    .line 2653
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v0

    .line 2656
    :cond_29
    if-ltz v0, :cond_31

    .line 2657
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    aput v3, p3, v1

    .line 2660
    .end local v2    # "cp":I
    :cond_31
    return v0
.end method

.method private static greylist-max-o parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 2949
    const/4 v0, 0x0

    .line 2950
    .local v0, "resolvedID":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v1, :cond_2a

    .line 2951
    const-class v1, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v1

    .line 2952
    :try_start_8
    sget-object v2, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v2, :cond_25

    .line 2954
    new-instance v2, Landroid/icu/impl/TextTrieMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 2955
    .local v2, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v3

    .line 2956
    .local v3, "ids":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    .line 2957
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v2, v6, v6}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 2956
    nop

    .end local v6    # "id":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 2959
    :cond_23
    sput-object v2, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 2961
    .end local v2    # "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Ljava/lang/String;>;"
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v2

    .line 2964
    :cond_2a
    :goto_2a
    new-instance v1, Landroid/icu/impl/TextTrieMap$Output;

    invoke-direct {v1}, Landroid/icu/impl/TextTrieMap$Output;-><init>()V

    .line 2965
    .local v1, "trieOutput":Landroid/icu/impl/TextTrieMap$Output;
    sget-object v2, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, p0, v3, v1}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v2

    .line 2966
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_4d

    .line 2967
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 2968
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    iget v4, v1, Landroid/icu/impl/TextTrieMap$Output;->matchLength:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_54

    .line 2975
    :cond_4d
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2977
    :goto_54
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 3122
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "_locale"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    .line 3123
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_11d

    .line 3127
    const-string v1, "_tznames"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/TimeZoneNames;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 3128
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-eqz v1, :cond_115

    .line 3132
    const-string v1, "_gmtPattern"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    .line 3133
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    if-eqz v1, :cond_10d

    .line 3137
    const-string v1, "_gmtOffsetPatterns"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3138
    .local v1, "tmpGmtOffsetPatterns":[Ljava/lang/String;
    if-eqz v1, :cond_105

    .line 3140
    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_fd

    .line 3143
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 3144
    array-length v3, v1

    if-ne v3, v4, :cond_82

    .line 3145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    if-ge v3, v4, :cond_51

    .line 3146
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    aget-object v6, v1, v3

    aput-object v6, v5, v3

    .line 3145
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3148
    .end local v3    # "i":I
    :cond_51
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3149
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_84

    .line 3151
    :cond_82
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 3154
    :goto_84
    const-string v3, "_gmtOffsetDigits"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 3155
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    if-eqz v3, :cond_f5

    .line 3157
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_ed

    .line 3161
    const-string v3, "_gmtZeroFormat"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 3162
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    if-eqz v3, :cond_e5

    .line 3166
    const/4 v3, 0x0

    const-string v4, "_parseAllStyles"

    invoke-virtual {v0, v4, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 3167
    invoke-virtual {v0, v4}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 3186
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    instance-of v3, v3, Landroid/icu/impl/TimeZoneNamesImpl;

    if-eqz v3, :cond_c7

    .line 3187
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 3188
    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    goto :goto_d2

    .line 3192
    :cond_c7
    new-instance v2, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {v2, v3, v4}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    .line 3196
    :goto_d2
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 3197
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 3199
    return-void

    .line 3168
    :cond_dd
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Missing field: parseAllStyles"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3163
    :cond_e5
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Missing field: gmtZeroFormat"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3158
    :cond_ed
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Incompatible field: gmtOffsetDigits"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3156
    :cond_f5
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Missing field: gmtOffsetDigits"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3141
    :cond_fd
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Incompatible field: gmtOffsetPatterns"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3139
    :cond_105
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Missing field: gmtOffsetPatterns"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3134
    .end local v1    # "tmpGmtOffsetPatterns":[Ljava/lang/String;
    :cond_10d
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Missing field: gmtPattern"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3129
    :cond_115
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Missing field: tznames"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3124
    :cond_11d
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Missing field: locale"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 2672
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 2673
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2675
    .local v1, "codePoints":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_d
    if-ge v2, v0, :cond_23

    .line 2676
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2677
    .local v4, "code":I
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 2678
    .local v5, "codeLen":I
    add-int v6, v3, v5

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 2679
    add-int/2addr v3, v5

    .line 2675
    .end local v4    # "code":I
    .end local v5    # "codeLen":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2681
    .end local v2    # "i":I
    .end local v3    # "offset":I
    :cond_23
    return-object v1
.end method

.method private static greylist-max-o truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "offsetHM"    # Ljava/lang/String;

    .line 2070
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2071
    .local v0, "idx_mm":I
    const-string v1, "Bad time zone hour pattern data"

    if-ltz v0, :cond_37

    .line 2074
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 2075
    .local v3, "idx_HH":I
    if-ltz v3, :cond_1e

    .line 2076
    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2078
    :cond_1e
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2079
    .local v4, "idx_H":I
    if-ltz v4, :cond_31

    .line 2080
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2082
    :cond_31
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2072
    .end local v3    # "idx_HH":I
    .end local v4    # "idx_H":I
    :cond_37
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 1839
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 1840
    return-object p0

    .line 1842
    :cond_9
    const/4 v1, 0x0

    .line 1843
    .local v1, "isPrevQuote":Z
    const/4 v2, 0x0

    .line 1844
    .local v2, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1845
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 1846
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1847
    .local v5, "c":C
    if-ne v5, v0, :cond_2c

    .line 1848
    if-eqz v1, :cond_24

    .line 1849
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1850
    const/4 v1, 0x0

    goto :goto_25

    .line 1852
    :cond_24
    const/4 v1, 0x1

    .line 1854
    :goto_25
    if-nez v2, :cond_29

    const/4 v6, 0x1

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    move v2, v6

    .end local v2    # "inQuote":Z
    .local v6, "inQuote":Z
    goto :goto_30

    .line 1856
    .end local v6    # "inQuote":Z
    .restart local v2    # "inQuote":Z
    :cond_2c
    const/4 v1, 0x0

    .line 1857
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1845
    .end local v5    # "c":C
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1860
    .end local v4    # "i":I
    :cond_33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3100
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 3102
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "_locale"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3103
    const-string v1, "_tznames"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3104
    const-string v1, "_gmtPattern"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3105
    const-string v1, "_gmtOffsetPatterns"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3106
    const-string v1, "_gmtOffsetDigits"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3107
    const-string v1, "_gmtZeroFormat"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3108
    const-string v1, "_parseAllStyles"

    iget-boolean v2, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 3110
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 3111
    return-void
.end method


# virtual methods
.method public whitelist test-api cloneAsThawed()Landroid/icu/text/TimeZoneFormat;
    .registers 3

    .line 3227
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    .line 3228
    .local v0, "copy":Landroid/icu/text/TimeZoneFormat;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    .line 3229
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .registers 11
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "tz"    # Landroid/icu/util/TimeZone;
    .param p3, "date"    # J

    .line 805
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .local v1, "style":Landroid/icu/text/TimeZoneFormat$Style;
    .local v2, "tz":Landroid/icu/util/TimeZone;
    .local v3, "date":J
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;
    .registers 15
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "tz"    # Landroid/icu/util/TimeZone;
    .param p3, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Landroid/icu/util/TimeZone;",
            "J",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 825
    .local p5, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v0, 0x0

    .line 827
    .local v0, "result":Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 828
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    iput-object v1, p5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 831
    :cond_7
    const/4 v1, 0x0

    .line 833
    .local v1, "noOffsetFormatFallback":Z
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v2

    sparse-switch v2, :sswitch_data_e8

    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .local v3, "tz":Landroid/icu/util/TimeZone;
    .local v6, "date":J
    .local v8, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    goto/16 :goto_82

    .line 862
    .end local v3    # "tz":Landroid/icu/util/TimeZone;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p2    # "tz":Landroid/icu/util/TimeZone;
    .restart local p3    # "date":J
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :sswitch_15
    invoke-direct {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 863
    const/4 v1, 0x1

    .line 864
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    goto/16 :goto_82

    .line 855
    :sswitch_20
    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 856
    if-nez v0, :cond_28

    .line 857
    const-string v0, "unk"

    .line 859
    :cond_28
    const/4 v1, 0x1

    .line 860
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    goto/16 :goto_82

    .line 851
    :sswitch_2f
    invoke-virtual {p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 852
    const/4 v1, 0x1

    .line 853
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    goto :goto_82

    .line 847
    :sswitch_39
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local v3    # "tz":Landroid/icu/util/TimeZone;
    .restart local v6    # "date":J
    .restart local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 848
    goto :goto_82

    .line 844
    .end local v3    # "tz":Landroid/icu/util/TimeZone;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p2    # "tz":Landroid/icu/util/TimeZone;
    .restart local p3    # "date":J
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :sswitch_46
    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local v3    # "tz":Landroid/icu/util/TimeZone;
    .restart local v6    # "date":J
    .restart local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 845
    goto :goto_82

    .line 841
    .end local v3    # "tz":Landroid/icu/util/TimeZone;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p2    # "tz":Landroid/icu/util/TimeZone;
    .restart local p3    # "date":J
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :sswitch_53
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local v3    # "tz":Landroid/icu/util/TimeZone;
    .restart local v6    # "date":J
    .restart local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p2

    sget-object p3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p2, v3, p3, v6, v7}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    .line 842
    goto :goto_82

    .line 838
    .end local v3    # "tz":Landroid/icu/util/TimeZone;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p2    # "tz":Landroid/icu/util/TimeZone;
    .restart local p3    # "date":J
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :sswitch_62
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local v3    # "tz":Landroid/icu/util/TimeZone;
    .restart local v6    # "date":J
    .restart local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p2

    sget-object p3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p2, v3, p3, v6, v7}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    .line 839
    goto :goto_82

    .line 835
    .end local v3    # "tz":Landroid/icu/util/TimeZone;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p2    # "tz":Landroid/icu/util/TimeZone;
    .restart local p3    # "date":J
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :sswitch_71
    move-object v2, p0

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    .end local p2    # "tz":Landroid/icu/util/TimeZone;
    .end local p3    # "date":J
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local v3    # "tz":Landroid/icu/util/TimeZone;
    .restart local v6    # "date":J
    .restart local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p2

    invoke-static {v3}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    nop

    .line 871
    :goto_82
    if-nez v0, :cond_e5

    if-nez v1, :cond_e5

    .line 872
    const/4 p2, 0x0

    filled-new-array {p2, p2}, [I

    move-result-object p3

    .line 873
    .local p3, "offsets":[I
    invoke-virtual {v3, v6, v7, p2, p3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 874
    aget p4, p3, p2

    const/4 p5, 0x1

    aget v4, p3, p5

    add-int/2addr p4, v4

    .line 876
    .local p4, "offset":I
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_10a

    .line 933
    goto :goto_d8

    .line 927
    :pswitch_9c
    invoke-virtual {p0, p4, p2, p2, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 928
    goto :goto_d8

    .line 923
    :pswitch_a1
    invoke-virtual {p0, p4, p5, p2, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 924
    goto :goto_d8

    .line 919
    :pswitch_a6
    invoke-virtual {p0, p4, p2, p2, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 920
    goto :goto_d8

    .line 915
    :pswitch_ab
    invoke-virtual {p0, p4, p5, p2, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 916
    goto :goto_d8

    .line 911
    :pswitch_b0
    invoke-virtual {p0, p4, p2, p2, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 912
    goto :goto_d8

    .line 907
    :pswitch_b5
    invoke-virtual {p0, p4, p5, p2, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 908
    goto :goto_d8

    .line 903
    :pswitch_ba
    invoke-virtual {p0, p4, p2, p2, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 904
    goto :goto_d8

    .line 899
    :pswitch_bf
    invoke-virtual {p0, p4, p5, p2, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 900
    goto :goto_d8

    .line 895
    :pswitch_c4
    invoke-virtual {p0, p4, p2, p5, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 896
    goto :goto_d8

    .line 891
    :pswitch_c9
    invoke-virtual {p0, p4, p5, p5, p5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 892
    goto :goto_d8

    .line 887
    :pswitch_ce
    invoke-virtual {p0, p4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    goto :goto_d8

    .line 881
    :pswitch_d3
    invoke-virtual {p0, p4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    .line 882
    nop

    .line 937
    :goto_d8
    if-eqz v8, :cond_e5

    .line 938
    aget p2, p3, p5

    if-eqz p2, :cond_e1

    sget-object p2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_e3

    :cond_e1
    sget-object p2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_e3
    iput-object p2, v8, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 942
    .end local p3    # "offsets":[I
    .end local p4    # "offset":I
    :cond_e5
    nop

    .line 944
    return-object v0

    nop

    :sswitch_data_e8
    .sparse-switch
        0x0 -> :sswitch_71
        0x1 -> :sswitch_62
        0x2 -> :sswitch_53
        0x3 -> :sswitch_46
        0x4 -> :sswitch_39
        0x11 -> :sswitch_2f
        0x12 -> :sswitch_20
        0x13 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_d3
        :pswitch_ce
        :pswitch_d3
        :pswitch_ce
        :pswitch_d3
        :pswitch_ce
        :pswitch_c9
        :pswitch_c4
        :pswitch_bf
        :pswitch_ba
        :pswitch_b5
        :pswitch_b0
        :pswitch_ab
        :pswitch_a6
        :pswitch_a1
        :pswitch_9c
    .end packed-switch
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "tz":Landroid/icu/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1515
    .local v1, "date":J
    instance-of v3, p1, Landroid/icu/util/TimeZone;

    if-eqz v3, :cond_d

    .line 1516
    move-object v0, p1

    check-cast v0, Landroid/icu/util/TimeZone;

    goto :goto_1f

    .line 1517
    :cond_d
    instance-of v3, p1, Landroid/icu/util/Calendar;

    if-eqz v3, :cond_47

    .line 1518
    move-object v3, p1

    check-cast v3, Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1519
    move-object v3, p1

    check-cast v3, Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1524
    :goto_1f
    nop

    .line 1525
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v3

    .line 1526
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    if-eq v4, v5, :cond_3b

    .line 1529
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_46

    .line 1530
    :cond_3b
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1531
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1533
    :cond_46
    return-object p2

    .line 1521
    .end local v3    # "result":Ljava/lang/String;
    :cond_47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot format given Object ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") as a time zone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final whitelist test-api formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .registers 11
    .param p1, "offset"    # I
    .param p2, "useUtcIndicator"    # Z
    .param p3, "isShort"    # Z
    .param p4, "ignoreSeconds"    # Z

    .line 720
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "offset":I
    .end local p2    # "useUtcIndicator":Z
    .end local p3    # "isShort":Z
    .end local p4    # "ignoreSeconds":Z
    .local v1, "offset":I
    .local v3, "useUtcIndicator":Z
    .local v4, "isShort":Z
    .local v5, "ignoreSeconds":Z
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .registers 11
    .param p1, "offset"    # I
    .param p2, "useUtcIndicator"    # Z
    .param p3, "isShort"    # Z
    .param p4, "ignoreSeconds"    # Z

    .line 738
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "offset":I
    .end local p2    # "useUtcIndicator":Z
    .end local p3    # "isShort":Z
    .end local p4    # "ignoreSeconds":Z
    .local v1, "offset":I
    .local v3, "useUtcIndicator":Z
    .local v4, "isShort":Z
    .local v5, "ignoreSeconds":Z
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .registers 3
    .param p1, "offset"    # I

    .line 760
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .registers 3
    .param p1, "offset"    # I

    .line 782
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1541
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1542
    .local v0, "toAppendTo":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1543
    .local v1, "pos":Ljava/text/FieldPosition;
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1546
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v2, "as":Ljava/text/AttributedString;
    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    sget-object v4, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    invoke-virtual {v2, v3, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api freeze()Landroid/icu/text/TimeZoneFormat;
    .registers 2

    .line 3218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    .line 3219
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultParseOptions()Ljava/util/EnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_11

    .line 696
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 697
    :cond_11
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_1c

    .line 698
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 699
    :cond_1c
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_27

    .line 700
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 702
    :cond_27
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGMTOffsetDigits()Ljava/lang/String;
    .registers 6

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 612
    .local v4, "digit":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .end local v4    # "digit":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 614
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 572
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getGMTPattern()Ljava/lang/String;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getGMTZeroFormat()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 3210
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return v0
.end method

.method public whitelist test-api parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .registers 11
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    .line 1469
    .local p4, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "style":Landroid/icu/text/TimeZoneFormat$Style;
    .end local p2    # "text":Ljava/lang/String;
    .end local p3    # "pos":Ljava/text/ParsePosition;
    .end local p4    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .local v1, "style":Landroid/icu/text/TimeZoneFormat$Style;
    .local v2, "text":Ljava/lang/String;
    .local v3, "pos":Ljava/text/ParsePosition;
    .local v5, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .registers 31
    .param p1, "style"    # Landroid/icu/text/TimeZoneFormat$Style;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    .line 1012
    .local p4, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneFormat$ParseOption;>;"
    .local p5, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v5, :cond_17

    .line 1013
    new-instance v6, Landroid/icu/util/Output;

    sget-object v7, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v6, v7}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .local v6, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    goto :goto_1b

    .line 1015
    .end local v6    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .restart local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :cond_17
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    iput-object v6, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1018
    .end local p5    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    .local v5, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :goto_1b
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1019
    .local v6, "startIdx":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1023
    .local v7, "maxPos":I
    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    if-eq v1, v8, :cond_32

    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    if-eq v1, v8, :cond_32

    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v8, :cond_30

    goto :goto_32

    :cond_30
    const/4 v8, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v8, 0x1

    .line 1025
    .local v8, "fallbackLocalizedGMT":Z
    :goto_33
    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-eq v1, v11, :cond_3e

    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v11, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v11, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v11, 0x1

    .line 1028
    .local v11, "fallbackShortLocalizedGMT":Z
    :goto_3f
    const/4 v12, 0x0

    .line 1029
    .local v12, "evaluated":I
    new-instance v13, Ljava/text/ParsePosition;

    invoke-direct {v13, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1031
    .local v13, "tmpPos":Ljava/text/ParsePosition;
    const v14, 0x7fffffff

    .line 1032
    .local v14, "parsedOffset":I
    const/4 v15, -0x1

    .line 1035
    .local v15, "parsedPos":I
    if-nez v8, :cond_55

    if-eqz v11, :cond_4e

    goto :goto_55

    :cond_4e
    move/from16 v18, v8

    move/from16 v19, v11

    const/16 v16, 0x0

    goto :goto_9c

    .line 1036
    :cond_55
    :goto_55
    const/16 v16, 0x0

    new-instance v10, Landroid/icu/util/Output;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v10, v9}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1037
    .local v10, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-direct {v0, v2, v13, v11, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v9

    .line 1038
    .local v9, "offset":I
    move/from16 v18, v8

    .end local v8    # "fallbackLocalizedGMT":Z
    .local v18, "fallbackLocalizedGMT":Z
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    move/from16 v19, v11

    const/4 v11, -0x1

    .end local v11    # "fallbackShortLocalizedGMT":Z
    .local v19, "fallbackShortLocalizedGMT":Z
    if-ne v8, v11, :cond_92

    .line 1043
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-eq v8, v7, :cond_86

    iget-object v8, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_80

    goto :goto_86

    .line 1047
    :cond_80
    move v14, v9

    .line 1048
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    goto :goto_92

    .line 1044
    :cond_86
    :goto_86
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1045
    invoke-direct {v0, v9}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v8

    return-object v8

    .line 1053
    :cond_92
    :goto_92
    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v8, v8, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v11, v11, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v8, v11

    or-int/2addr v12, v8

    .line 1056
    .end local v9    # "offset":I
    .end local v10    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    :goto_9c
    if-nez v4, :cond_a9

    .line 1057
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v8

    sget-object v9, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_af

    .line 1058
    :cond_a9
    sget-object v8, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    :goto_af
    nop

    .line 1061
    .local v8, "parseTZDBAbbrev":Z
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v9

    packed-switch v9, :pswitch_data_554

    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .local v20, "parseTZDBAbbrev":Z
    goto/16 :goto_2d8

    .line 1233
    .end local v20    # "parseTZDBAbbrev":Z
    .restart local v8    # "parseTZDBAbbrev":Z
    :pswitch_bb
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1234
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1236
    invoke-direct {v0, v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 1237
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    if-ne v10, v11, :cond_d8

    .line 1238
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1239
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    return-object v10

    .line 1237
    :cond_d8
    move/from16 v20, v8

    goto/16 :goto_2d8

    .line 1221
    .end local v9    # "id":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1222
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1224
    invoke-static {v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 1225
    .restart local v9    # "id":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    if-ne v10, v11, :cond_f9

    .line 1226
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1227
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    return-object v10

    .line 1225
    :cond_f9
    move/from16 v20, v8

    goto/16 :goto_2d8

    .line 1209
    .end local v9    # "id":Ljava/lang/String;
    :pswitch_fd
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1210
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1212
    invoke-static {v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 1213
    .restart local v9    # "id":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    if-ne v10, v11, :cond_11a

    .line 1214
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1215
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    return-object v10

    .line 1213
    :cond_11a
    move/from16 v20, v8

    goto/16 :goto_2d8

    .line 1116
    .end local v9    # "id":Ljava/lang/String;
    :pswitch_11e
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1117
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1120
    new-instance v9, Landroid/icu/util/Output;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1121
    .local v9, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    move/from16 v10, v16

    invoke-static {v2, v13, v10, v9}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v11

    .line 1122
    .local v11, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    move/from16 v20, v8

    const/4 v8, -0x1

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    if-ne v10, v8, :cond_2d8

    iget-object v8, v9, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2d8

    .line 1123
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1124
    invoke-direct {v0, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v8

    return-object v8

    .line 1099
    .end local v9    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v11    # "offset":I
    .end local v20    # "parseTZDBAbbrev":Z
    .restart local v8    # "parseTZDBAbbrev":Z
    :pswitch_153
    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1100
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1102
    invoke-virtual {v0, v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v8

    .line 1103
    .local v8, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-ne v9, v11, :cond_2d8

    .line 1104
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1105
    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v9

    return-object v9

    .line 1079
    .end local v20    # "parseTZDBAbbrev":Z
    .local v8, "parseTZDBAbbrev":Z
    :pswitch_172
    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1080
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1082
    invoke-virtual {v0, v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v8

    .line 1083
    .local v8, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-ne v9, v11, :cond_191

    .line 1084
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1085
    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v9

    return-object v9

    .line 1089
    :cond_191
    sget-object v9, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v9, v9, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v12, v9

    .line 1090
    goto/16 :goto_2d8

    .line 1064
    .end local v20    # "parseTZDBAbbrev":Z
    .local v8, "parseTZDBAbbrev":Z
    :pswitch_198
    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1065
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1067
    invoke-virtual {v0, v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v8

    .line 1068
    .local v8, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    if-ne v9, v11, :cond_1b7

    .line 1069
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1070
    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v9

    return-object v9

    .line 1074
    :cond_1b7
    sget-object v9, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v9, v9, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v12, v9

    .line 1075
    goto/16 :goto_2d8

    .line 1133
    .end local v20    # "parseTZDBAbbrev":Z
    .local v8, "parseTZDBAbbrev":Z
    :pswitch_1be
    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    const/4 v8, 0x0

    .line 1134
    .local v8, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    sget-object v9, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v9, :cond_1ce

    .line 1135
    sget-object v9, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    goto :goto_1d7

    .line 1137
    :cond_1ce
    nop

    .line 1138
    sget-object v9, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 1140
    :goto_1d7
    iget-object v9, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v9, v2, v6, v8}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v9

    .line 1141
    .local v9, "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v9, :cond_228

    .line 1142
    const/4 v10, 0x0

    .line 1143
    .local v10, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_206

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1144
    .local v21, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v22

    move-object/from16 v23, v9

    .end local v9    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v23, "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    add-int v9, v6, v22

    if-le v9, v15, :cond_203

    .line 1145
    move-object/from16 v9, v21

    .line 1146
    .end local v10    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v9, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    move v15, v10

    move-object v10, v9

    .line 1148
    .end local v9    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v21    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v10    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_203
    move-object/from16 v9, v23

    goto :goto_1e4

    .line 1149
    .end local v23    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v9, "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_206
    move-object/from16 v23, v9

    .end local v9    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v23    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v10, :cond_22a

    .line 1150
    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v9

    iput-object v9, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1151
    invoke-virtual {v3, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1152
    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v9

    return-object v9

    .line 1141
    .end local v10    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v23    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v9    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_228
    move-object/from16 v23, v9

    .line 1156
    .end local v9    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v23    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_22a
    if-eqz v20, :cond_289

    sget-object v9, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v9, :cond_289

    .line 1157
    nop

    .line 1158
    nop

    .line 1160
    nop

    .line 1161
    invoke-direct {v0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v9

    invoke-virtual {v9, v2, v6, v8}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v9

    .line 1162
    .local v9, "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v9, :cond_286

    .line 1163
    const/4 v10, 0x0

    .line 1164
    .local v10, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_242
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_264

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1165
    .restart local v21    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v22

    move-object/from16 v24, v8

    .end local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .local v24, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    add-int v8, v6, v22

    if-le v8, v15, :cond_261

    .line 1166
    move-object/from16 v8, v21

    .line 1167
    .end local v10    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v8, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    move v15, v10

    move-object v10, v8

    .line 1169
    .end local v8    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v21    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v10    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_261
    move-object/from16 v8, v24

    goto :goto_242

    .line 1170
    .end local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .local v8, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    :cond_264
    move-object/from16 v24, v8

    .end local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .restart local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    if-eqz v10, :cond_288

    .line 1171
    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v8

    iput-object v8, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1172
    invoke-virtual {v3, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1173
    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v8, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v8

    return-object v8

    .line 1162
    .end local v10    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .restart local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    :cond_286
    move-object/from16 v24, v8

    .line 1176
    .end local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .end local v9    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    :cond_288
    goto :goto_2d8

    .line 1156
    .end local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .restart local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    :cond_289
    move-object/from16 v24, v8

    .end local v8    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .restart local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    goto :goto_2d8

    .line 1183
    .end local v20    # "parseTZDBAbbrev":Z
    .end local v23    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .end local v24    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    .local v8, "parseTZDBAbbrev":Z
    :pswitch_28c
    move/from16 v20, v8

    .end local v8    # "parseTZDBAbbrev":Z
    .restart local v20    # "parseTZDBAbbrev":Z
    const/4 v8, 0x0

    .line 1184
    .local v8, "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v9

    packed-switch v9, :pswitch_data_580

    .line 1196
    goto :goto_2b0

    .line 1192
    :pswitch_297
    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 1193
    goto :goto_2b0

    .line 1189
    :pswitch_2a0
    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 1190
    goto :goto_2b0

    .line 1186
    :pswitch_2a9
    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 1187
    nop

    .line 1199
    :goto_2b0
    invoke-direct {v0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v9

    invoke-virtual {v9, v2, v6, v8}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v9

    .line 1200
    .local v9, "bestGeneric":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v9, :cond_2d8

    invoke-virtual {v9}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    if-le v10, v15, :cond_2d8

    .line 1201
    invoke-virtual {v9}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    iput-object v10, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1202
    invoke-virtual {v9}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1203
    invoke-virtual {v9}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    return-object v10

    .line 1244
    .end local v8    # "genericNameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    .end local v9    # "bestGeneric":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    :cond_2d8
    :goto_2d8
    iget v8, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v8, v12

    .line 1246
    .end local v12    # "evaluated":I
    .local v8, "evaluated":I
    if-le v15, v6, :cond_2e6

    .line 1253
    nop

    .line 1254
    invoke-virtual {v3, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1255
    invoke-direct {v0, v14}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v9

    return-object v9

    .line 1261
    :cond_2e6
    const/4 v9, 0x0

    .line 1262
    .local v9, "parsedID":Ljava/lang/String;
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1263
    .local v10, "parsedTimeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    nop

    .line 1264
    nop

    .line 1267
    if-ge v15, v7, :cond_346

    and-int/lit16 v11, v8, 0x80

    if-eqz v11, :cond_2f9

    and-int/lit16 v11, v8, 0x100

    if-nez v11, :cond_2f6

    goto :goto_2f9

    :cond_2f6
    move/from16 v22, v8

    goto :goto_348

    .line 1269
    :cond_2f9
    :goto_2f9
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1270
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1272
    new-instance v12, Landroid/icu/util/Output;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v12, v11}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1273
    .local v12, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    move/from16 v11, v17

    invoke-static {v2, v13, v11, v12}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v1

    .line 1274
    .local v1, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v11

    move/from16 v22, v8

    const/4 v8, -0x1

    .end local v8    # "evaluated":I
    .local v22, "evaluated":I
    if-ne v11, v8, :cond_348

    .line 1275
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-eq v8, v7, :cond_33a

    iget-object v8, v12, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_32b

    goto :goto_33a

    .line 1282
    :cond_32b
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ge v15, v8, :cond_348

    .line 1283
    move v14, v1

    .line 1284
    const/4 v9, 0x0

    .line 1285
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1286
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    .line 1287
    goto :goto_348

    .line 1276
    :cond_33a
    :goto_33a
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1277
    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v8

    return-object v8

    .line 1267
    .end local v1    # "offset":I
    .end local v12    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v22    # "evaluated":I
    .restart local v8    # "evaluated":I
    :cond_346
    move/from16 v22, v8

    .line 1294
    .end local v8    # "evaluated":I
    .restart local v22    # "evaluated":I
    :cond_348
    :goto_348
    if-ge v15, v7, :cond_399

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int v1, v22, v1

    if-nez v1, :cond_399

    .line 1296
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1297
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1299
    new-instance v1, Landroid/icu/util/Output;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1300
    .local v1, "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-direct {v0, v2, v13, v8, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v12

    .line 1301
    .local v12, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-ne v8, v11, :cond_399

    .line 1302
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-eq v8, v7, :cond_38d

    iget-object v8, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_37e

    goto :goto_38d

    .line 1307
    :cond_37e
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ge v15, v8, :cond_399

    .line 1308
    move v14, v12

    .line 1309
    const/4 v9, 0x0

    .line 1310
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1311
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    goto :goto_399

    .line 1303
    :cond_38d
    :goto_38d
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1304
    invoke-direct {v0, v12}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v8

    return-object v8

    .line 1316
    .end local v1    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v12    # "offset":I
    :cond_399
    :goto_399
    if-ge v15, v7, :cond_3ec

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int v1, v22, v1

    if-nez v1, :cond_3ec

    .line 1318
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1319
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1321
    new-instance v1, Landroid/icu/util/Output;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1322
    .restart local v1    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v8, 0x1

    invoke-direct {v0, v2, v13, v8, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v8

    .line 1323
    .local v8, "offset":I
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v12

    if-ne v12, v11, :cond_3ec

    .line 1324
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    if-eq v11, v7, :cond_3e0

    iget-object v11, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3d1

    goto :goto_3e0

    .line 1329
    :cond_3d1
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    if-ge v15, v11, :cond_3ec

    .line 1330
    move v14, v8

    .line 1331
    const/4 v9, 0x0

    .line 1332
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1333
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    goto :goto_3ec

    .line 1325
    :cond_3e0
    :goto_3e0
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1326
    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v11

    return-object v11

    .line 1347
    .end local v1    # "hasDigitOffset":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v8    # "offset":I
    :cond_3ec
    :goto_3ec
    if-nez v4, :cond_3f9

    .line 1348
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v8, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v1, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3ff

    .line 1349
    :cond_3f9
    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_3ff
    nop

    .line 1351
    .local v1, "parseAllStyles":Z
    if-eqz v1, :cond_537

    .line 1353
    if-ge v15, v7, :cond_455

    .line 1354
    iget-object v8, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    sget-object v11, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v6, v11}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v8

    .line 1355
    .local v8, "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    const/4 v11, 0x0

    .line 1356
    .local v11, "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v12, -0x1

    .line 1357
    .local v12, "matchPos":I
    if-eqz v8, :cond_438

    .line 1358
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_414
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_435

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1359
    .restart local v21    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v23

    move/from16 p5, v1

    .end local v1    # "parseAllStyles":Z
    .local p5, "parseAllStyles":Z
    add-int v1, v6, v23

    if-le v1, v12, :cond_432

    .line 1360
    move-object/from16 v11, v21

    .line 1361
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v1

    add-int v12, v6, v1

    .line 1363
    .end local v21    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_432
    move/from16 v1, p5

    goto :goto_414

    .line 1358
    .end local p5    # "parseAllStyles":Z
    .restart local v1    # "parseAllStyles":Z
    :cond_435
    move/from16 p5, v1

    .end local v1    # "parseAllStyles":Z
    .restart local p5    # "parseAllStyles":Z
    goto :goto_43a

    .line 1357
    .end local p5    # "parseAllStyles":Z
    .restart local v1    # "parseAllStyles":Z
    :cond_438
    move/from16 p5, v1

    .line 1365
    .end local v1    # "parseAllStyles":Z
    .restart local p5    # "parseAllStyles":Z
    :goto_43a
    if-ge v15, v12, :cond_457

    .line 1366
    move v15, v12

    .line 1367
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1368
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    .line 1369
    const v14, 0x7fffffff

    goto :goto_457

    .line 1353
    .end local v8    # "specificMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .end local v11    # "specificMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v12    # "matchPos":I
    .end local p5    # "parseAllStyles":Z
    .restart local v1    # "parseAllStyles":Z
    :cond_455
    move/from16 p5, v1

    .line 1372
    .end local v1    # "parseAllStyles":Z
    .restart local p5    # "parseAllStyles":Z
    :cond_457
    :goto_457
    if-eqz v20, :cond_4b6

    if-ge v15, v7, :cond_4b6

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int v1, v22, v1

    if-nez v1, :cond_4b6

    .line 1373
    nop

    .line 1374
    invoke-direct {v0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    sget-object v4, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v6, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    .line 1375
    .local v1, "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    const/4 v4, 0x0

    .line 1376
    .local v4, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    const/4 v8, -0x1

    .line 1377
    .local v8, "matchPos":I
    if-eqz v1, :cond_4b4

    .line 1378
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_476
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_497

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1379
    .local v12, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 v21, v1

    .end local v1    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v21, "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    add-int v1, v6, v16

    if-le v1, v8, :cond_494

    .line 1380
    move-object v1, v12

    .line 1381
    .end local v4    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v1, "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v6

    move v8, v4

    move-object v4, v1

    .line 1383
    .end local v1    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v12    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .restart local v4    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_494
    move-object/from16 v1, v21

    goto :goto_476

    .line 1384
    .end local v21    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v1, "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_497
    move-object/from16 v21, v1

    .end local v1    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v21    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-ge v15, v8, :cond_4b6

    .line 1385
    move v15, v8

    .line 1386
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1387
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    .line 1388
    const v14, 0x7fffffff

    goto :goto_4b6

    .line 1377
    .end local v21    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .restart local v1    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_4b4
    move-object/from16 v21, v1

    .line 1394
    .end local v1    # "tzdbNameMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .end local v4    # "tzdbNameMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v8    # "matchPos":I
    :cond_4b6
    :goto_4b6
    if-ge v15, v7, :cond_4dc

    .line 1395
    invoke-direct {v0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v1

    sget-object v4, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v6, v4}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v1

    .line 1396
    .local v1, "genericMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v1, :cond_4dc

    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v6

    if-ge v15, v4, :cond_4dc

    .line 1397
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int v15, v6, v4

    .line 1398
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v9

    .line 1399
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    .line 1400
    const v14, 0x7fffffff

    .line 1405
    .end local v1    # "genericMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    :cond_4dc
    if-ge v15, v7, :cond_50b

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int v1, v22, v1

    if-nez v1, :cond_50b

    .line 1406
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1407
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1409
    invoke-static {v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-ne v4, v11, :cond_50b

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ge v15, v4, :cond_50b

    .line 1411
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1412
    .end local v15    # "parsedPos":I
    .local v4, "parsedPos":I
    move-object v8, v1

    .line 1413
    .end local v9    # "parsedID":Ljava/lang/String;
    .local v8, "parsedID":Ljava/lang/String;
    sget-object v9, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1414
    .end local v10    # "parsedTimeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    .local v9, "parsedTimeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    const v10, 0x7fffffff

    move v15, v4

    move v14, v10

    move-object v10, v9

    move-object v9, v8

    .line 1418
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "parsedPos":I
    .end local v8    # "parsedID":Ljava/lang/String;
    .local v9, "parsedID":Ljava/lang/String;
    .restart local v10    # "parsedTimeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    .restart local v15    # "parsedPos":I
    :cond_50b
    if-ge v15, v7, :cond_539

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int v1, v22, v1

    if-nez v1, :cond_539

    .line 1419
    invoke-virtual {v13, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1420
    const/4 v11, -0x1

    invoke-virtual {v13, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1422
    invoke-static {v2, v13}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .restart local v1    # "id":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-ne v4, v11, :cond_539

    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ge v15, v4, :cond_539

    .line 1424
    invoke-virtual {v13}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    .line 1425
    move-object v9, v1

    .line 1426
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1427
    const v14, 0x7fffffff

    goto :goto_539

    .line 1351
    .end local p5    # "parseAllStyles":Z
    .local v1, "parseAllStyles":Z
    :cond_537
    move/from16 p5, v1

    .line 1432
    .end local v1    # "parseAllStyles":Z
    .restart local p5    # "parseAllStyles":Z
    :cond_539
    :goto_539
    if-le v15, v6, :cond_54e

    .line 1434
    const/4 v1, 0x0

    .line 1435
    .local v1, "parsedTZ":Landroid/icu/util/TimeZone;
    if-eqz v9, :cond_543

    .line 1436
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    goto :goto_548

    .line 1438
    :cond_543
    nop

    .line 1439
    invoke-direct {v0, v14}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 1441
    :goto_548
    iput-object v10, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1442
    invoke-virtual {v3, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1443
    return-object v1

    .line 1446
    .end local v1    # "parsedTZ":Landroid/icu/util/TimeZone;
    :cond_54e
    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1447
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_554
    .packed-switch 0x0
        :pswitch_28c
        :pswitch_28c
        :pswitch_28c
        :pswitch_1be
        :pswitch_1be
        :pswitch_198
        :pswitch_172
        :pswitch_153
        :pswitch_11e
        :pswitch_153
        :pswitch_11e
        :pswitch_153
        :pswitch_11e
        :pswitch_153
        :pswitch_11e
        :pswitch_153
        :pswitch_11e
        :pswitch_fd
        :pswitch_dc
        :pswitch_bb
    .end packed-switch

    :pswitch_data_580
    .packed-switch 0x0
        :pswitch_2a9
        :pswitch_2a0
        :pswitch_297
    .end packed-switch
.end method

.method public final whitelist test-api parse(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1498
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1499
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 1500
    .local v2, "tz":Landroid/icu/util/TimeZone;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_12

    .line 1503
    nop

    .line 1504
    return-object v2

    .line 1501
    :cond_12
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unparseable time zone: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public final whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1485
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "pos":Ljava/text/ParsePosition;
    .local v2, "text":Ljava/lang/String;
    .local v3, "pos":Ljava/text/ParsePosition;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1557
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 962
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 978
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 994
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api setDefaultParseOptions(Ljava/util/EnumSet;)Landroid/icu/text/TimeZoneFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;)",
            "Landroid/icu/text/TimeZoneFormat;"
        }
    .end annotation

    .line 684
    .local p1, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneFormat$ParseOption;>;"
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 685
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    .line 686
    return-object p0
.end method

.method public whitelist test-api setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .registers 5
    .param p1, "digits"    # Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_24

    .line 630
    if-eqz p1, :cond_1c

    .line 633
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "digitArray":[Ljava/lang/String;
    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_14

    .line 637
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 638
    return-object p0

    .line 635
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length of digits must be 10"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    .end local v0    # "digitArray":[Ljava/lang/String;
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null GMT offset digits"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .registers 6
    .param p1, "type"    # Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 589
    if-eqz p2, :cond_24

    .line 593
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-$$Nest$mrequired(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 595
    .local v0, "parsedItems":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aput-object p2, v1, v2

    .line 596
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 597
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    .line 599
    return-object p0

    .line 590
    .end local v0    # "parsedItems":[Ljava/lang/Object;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null GMT offset pattern"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setGMTPattern(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 561
    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 562
    return-object p0

    .line 559
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setGMTZeroFormat(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .registers 4
    .param p1, "gmtZeroFormat"    # Ljava/lang/String;

    .line 660
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_21

    .line 663
    if-eqz p1, :cond_19

    .line 666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 669
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 670
    return-object p0

    .line 667
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty GMT zero format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null GMT zero format"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTimeZoneNames(Landroid/icu/text/TimeZoneNames;)Landroid/icu/text/TimeZoneFormat;
    .registers 5
    .param p1, "tznames"    # Landroid/icu/text/TimeZoneNames;

    .line 528
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 531
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 533
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    .line 534
    return-object p0

    .line 529
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
