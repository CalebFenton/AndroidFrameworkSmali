.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final greylist-max-o DST:I = 0x1

.field private static final greylist-max-o FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o GENERIC:I = 0x2

.field private static final greylist-max-o SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o STD:I

.field private static final greylist-max-o TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist isGeneric:Z

.field private greylist-max-o preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 4139
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v0, v1

    const/4 v1, 0x5

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v0, v1

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 4148
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 4154
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 4161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Ljava/time/format/TextStyle;Ljava/util/Set;Z)V
    .registers 8
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .param p3, "isGeneric"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Ljava/time/ZoneId;",
            ">;Z)V"
        }
    .end annotation

    .line 4123
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 4267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 4269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 4124
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/TextStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 4125
    iput-boolean p3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    .line 4126
    if-eqz p2, :cond_63

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_63

    .line 4127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    .line 4128
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    .line 4129
    .local v1, "id":Ljava/time/ZoneId;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4130
    .end local v1    # "id":Ljava/time/ZoneId;
    goto :goto_4d

    .line 4132
    :cond_63
    return-void
.end method

.method private greylist-max-o getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .registers 23
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 4165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v3, v4, :cond_e

    .line 4166
    const/4 v3, 0x0

    return-object v3

    .line 4169
    :cond_e
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 4170
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 4171
    .local v4, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v4, v8

    if-eqz v8, :cond_32

    .line 4172
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v9, v8

    .local v9, "names":[Ljava/lang/String;
    if-nez v8, :cond_2e

    goto :goto_32

    :cond_2e
    const/16 v18, 0x5

    goto/16 :goto_d3

    .line 4188
    .end local v9    # "names":[Ljava/lang/String;
    :cond_32
    :goto_32
    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v8

    .line 4189
    .local v8, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v9, v9

    add-int/2addr v9, v7

    new-array v13, v9, [Ljava/lang/String;

    .line 4191
    .local v13, "names":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v1, v13, v15

    .line 4192
    invoke-static {v1}, Ljava/time/format/ZoneName;->getSystemCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4193
    .local v9, "canonicalId":Ljava/lang/String;
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 4194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4193
    const/4 v14, 0x1

    invoke-static/range {v8 .. v14}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 4195
    nop

    .line 4198
    aget-object v10, v13, v7

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_64

    aget-object v10, v13, v12

    if-eqz v10, :cond_64

    aget-object v10, v13, v6

    if-eqz v10, :cond_64

    aget-object v10, v13, v11

    if-nez v10, :cond_61

    goto :goto_64

    :cond_61
    const/16 v18, 0x5

    goto :goto_ac

    .line 4200
    :cond_64
    :goto_64
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 4201
    .local v10, "tz":Ljava/util/TimeZone;
    nop

    .line 4203
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v14

    .line 4201
    invoke-static {v7, v7, v14}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v14

    .line 4204
    .local v14, "stdString":Ljava/lang/String;
    nop

    .line 4206
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v16

    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x5

    add-int v5, v16, v17

    .line 4204
    invoke-static {v7, v7, v5}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v5

    .line 4207
    .local v5, "dstString":Ljava/lang/String;
    aget-object v16, v13, v7

    if-eqz v16, :cond_89

    aget-object v16, v13, v7

    goto :goto_8b

    :cond_89
    move-object/from16 v16, v14

    :goto_8b
    aput-object v16, v13, v7

    .line 4208
    aget-object v16, v13, v12

    if-eqz v16, :cond_94

    aget-object v16, v13, v12

    goto :goto_96

    :cond_94
    move-object/from16 v16, v14

    :goto_96
    aput-object v16, v13, v12

    .line 4209
    aget-object v12, v13, v6

    if-eqz v12, :cond_9f

    aget-object v12, v13, v6

    goto :goto_a0

    :cond_9f
    move-object v12, v5

    :goto_a0
    aput-object v12, v13, v6

    .line 4210
    aget-object v12, v13, v11

    if-eqz v12, :cond_a9

    aget-object v12, v13, v11

    goto :goto_aa

    :cond_a9
    move-object v12, v5

    :goto_aa
    aput-object v12, v13, v11

    .line 4212
    .end local v5    # "dstString":Ljava/lang/String;
    .end local v10    # "tz":Ljava/util/TimeZone;
    .end local v14    # "stdString":Ljava/lang/String;
    :goto_ac
    aget-object v5, v13, v18

    if-nez v5, :cond_b4

    .line 4213
    aget-object v5, v13, v15

    aput-object v5, v13, v18

    .line 4216
    :cond_b4
    const/4 v5, 0x6

    aget-object v10, v13, v5

    if-nez v10, :cond_bd

    .line 4217
    aget-object v10, v13, v15

    aput-object v10, v13, v5

    .line 4219
    :cond_bd
    if-nez v4, :cond_c5

    .line 4220
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v4, v5

    .line 4222
    :cond_c5
    invoke-interface {v4, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4223
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    .line 4225
    .end local v8    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v13    # "names":[Ljava/lang/String;
    .local v9, "names":[Ljava/lang/String;
    :goto_d3
    packed-switch p2, :pswitch_data_f6

    .line 4231
    iget-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v5}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    aget-object v5, v9, v5

    return-object v5

    .line 4229
    :pswitch_e1
    iget-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v5}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/2addr v5, v6

    aget-object v5, v9, v5

    return-object v5

    .line 4227
    :pswitch_eb
    iget-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v5}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v5

    add-int/2addr v5, v7

    aget-object v5, v9, v5

    return-object v5

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_e1
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4236
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 4237
    .local v0, "zone":Ljava/time/ZoneId;
    if-nez v0, :cond_e

    .line 4238
    const/4 v1, 0x0

    return v1

    .line 4240
    :cond_e
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4241
    .local v1, "zname":Ljava/lang/String;
    instance-of v2, v0, Ljava/time/ZoneOffset;

    if-nez v2, :cond_83

    .line 4242
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 4243
    .local v2, "dt":Ljava/time/temporal/TemporalAccessor;
    const/4 v3, 0x2

    .line 4244
    .local v3, "type":I
    iget-boolean v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    if-nez v4, :cond_78

    .line 4245
    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 4246
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v4

    invoke-static {v2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v4

    move v3, v4

    goto :goto_78

    .line 4247
    :cond_35
    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 4248
    invoke-interface {v2, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 4249
    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    .line 4250
    .local v4, "date":Ljava/time/LocalDate;
    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    .line 4251
    .local v5, "time":Ljava/time/LocalTime;
    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 4252
    .local v6, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v7

    if-nez v7, :cond_78

    .line 4253
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v7

    move v3, v7

    .line 4257
    .end local v4    # "date":Ljava/time/LocalDate;
    .end local v5    # "time":Ljava/time/LocalTime;
    .end local v6    # "ldt":Ljava/time/LocalDateTime;
    :cond_78
    :goto_78
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4258
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_83

    .line 4259
    move-object v1, v4

    .line 4262
    .end local v2    # "dt":Ljava/time/temporal/TemporalAccessor;
    .end local v3    # "type":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_83
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    const/4 v2, 0x1

    return v2
.end method

.method protected greylist-max-o getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 22
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 4274
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v2, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v1, v2, :cond_d

    .line 4275
    invoke-super/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    return-object v1

    .line 4277
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 4278
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    .line 4279
    .local v2, "isCaseSensitive":Z
    new-instance v3, Ljava/util/HashSet;

    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4280
    .local v3, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 4281
    .local v4, "nonRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 4284
    .local v5, "regionIdsSize":I
    if-eqz v2, :cond_2e

    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    goto :goto_30

    :cond_2e
    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 4286
    .local v6, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    :goto_30
    const/4 v7, 0x0

    .line 4287
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    const/4 v8, 0x0

    .line 4288
    .local v8, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    const/4 v9, 0x0

    .line 4289
    .local v9, "zoneStrings":[[Ljava/lang/String;
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v7, v10

    if-eqz v10, :cond_5e

    .line 4290
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v5, :cond_5e

    .line 4291
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-object v8, v10

    if-nez v10, :cond_58

    goto :goto_5e

    :cond_58
    move/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_10a

    .line 4292
    :cond_5e
    :goto_5e
    invoke-static/range {p1 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v8

    .line 4339
    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v10

    .line 4340
    .local v10, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4342
    .local v13, "now":J
    iget-object v11, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v12, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v11, v12, :cond_73

    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_75

    :cond_73
    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    :goto_75
    move-object v12, v11

    .line 4343
    .local v12, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    array-length v11, v12

    new-array v15, v11, [Ljava/lang/String;

    .line 4344
    .local v15, "names":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4345
    .local v11, "zid":Ljava/lang/String;
    invoke-virtual {v8, v11, v11}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4346
    invoke-static {v11, v1}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 4347
    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 4349
    const/16 v16, 0x0

    move/from16 v18, v2

    move/from16 v2, v16

    .local v2, "i":I
    .local v18, "isCaseSensitive":Z
    :goto_9b
    move-object/from16 v19, v3

    .end local v3    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v15

    if-ge v2, v3, :cond_ae

    .line 4350
    aget-object v3, v15, v2

    if-eqz v3, :cond_a9

    .line 4351
    aget-object v3, v15, v2

    invoke-virtual {v8, v3, v11}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4349
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    goto :goto_9b

    .line 4354
    .end local v2    # "i":I
    .end local v11    # "zid":Ljava/lang/String;
    :cond_ae
    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_7d

    .line 4357
    .end local v18    # "isCaseSensitive":Z
    .end local v19    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "isCaseSensitive":Z
    .restart local v3    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b3
    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "isCaseSensitive":Z
    .end local v3    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "isCaseSensitive":Z
    .restart local v19    # "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v2, :cond_f9

    .line 4358
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4359
    .local v3, "zid":Ljava/lang/String;
    iget-object v11, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d4

    .line 4360
    goto :goto_bf

    .line 4362
    :cond_d4
    invoke-static {v3, v1}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 4363
    .local v11, "canonicalId":Ljava/lang/String;
    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 4365
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_e1
    move-object/from16 v16, v2

    array-length v2, v15

    if-ge v0, v2, :cond_f4

    .line 4366
    aget-object v2, v15, v0

    if-eqz v2, :cond_ef

    .line 4367
    aget-object v2, v15, v0

    invoke-virtual {v8, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4365
    :cond_ef
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_e1

    .line 4370
    .end local v0    # "i":I
    .end local v3    # "zid":Ljava/lang/String;
    .end local v11    # "canonicalId":Ljava/lang/String;
    :cond_f4
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_bf

    .line 4373
    :cond_f9
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4375
    .end local v10    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v12    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .end local v13    # "now":J
    .end local v15    # "names":[Ljava/lang/String;
    :goto_10a
    return-object v8
.end method
