.class public abstract Landroid/icu/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/TimeZone$SystemTimeZoneType;,
        Landroid/icu/util/TimeZone$ConstantZone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api GENERIC_LOCATION:I = 0x7

.field public static final whitelist test-api GMT_ZONE:Landroid/icu/util/TimeZone;

.field static final greylist-max-o GMT_ZONE_ID:Ljava/lang/String; = "Etc/GMT"

.field private static final greylist-max-o LOGGER:Ljava/util/logging/Logger;

.field public static final whitelist test-api LONG:I = 0x1

.field public static final whitelist test-api LONG_GENERIC:I = 0x3

.field public static final whitelist test-api LONG_GMT:I = 0x5

.field public static final whitelist test-api SHORT:I = 0x0

.field public static final whitelist test-api SHORT_COMMONLY_USED:I = 0x6

.field public static final whitelist test-api SHORT_GENERIC:I = 0x2

.field public static final whitelist test-api SHORT_GMT:I = 0x4

.field public static final whitelist test-api TIMEZONE_ICU:I = 0x0

.field public static final whitelist test-api TIMEZONE_JDK:I = 0x1

.field private static final greylist-max-o TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final greylist-max-o TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final greylist-max-o TZIMPL_CONFIG_KEY:Ljava/lang/String; = "android.icu.util.TimeZone.DefaultTimeZoneType"

.field private static greylist-max-o TZ_IMPL:I = 0x0

.field public static final whitelist test-api UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

.field public static final whitelist test-api UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile greylist-max-o defaultZone:Landroid/icu/util/TimeZone; = null

.field private static final whitelist serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private greylist-max-o ID:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 90
    nop

    .line 94
    const-string v0, "android.icu.util.TimeZone"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    .line 209
    new-instance v0, Landroid/icu/util/TimeZone$ConstantZone;

    const-string v1, "Etc/Unknown"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone-IA;)V

    invoke-virtual {v0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    .line 214
    new-instance v0, Landroid/icu/util/TimeZone$ConstantZone;

    const-string v1, "Etc/GMT"

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone-IA;)V

    invoke-virtual {v0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    .line 1297
    sput-object v3, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    .line 1302
    sput v2, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    .line 1312
    const-string v0, "android.icu.util.TimeZone.DefaultTimeZoneType"

    const-string v1, "ICU"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "type":Ljava/lang/String;
    const-string v1, "JDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1314
    const/4 v1, 0x1

    sput v1, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    .line 1316
    .end local v0    # "type":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "ID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-eqz p1, :cond_8

    .line 118
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    .line 119
    return-void

    .line 116
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o _getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 13
    .param p1, "style"    # I
    .param p2, "daylight"    # Z
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 470
    if-eqz p3, :cond_e4

    .line 474
    const/4 v0, 0x0

    .line 476
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eq p1, v1, :cond_90

    const/4 v1, 0x3

    if-eq p1, v1, :cond_90

    if-ne p1, v2, :cond_e

    goto/16 :goto_90

    .line 504
    :cond_e
    const/4 v1, 0x5

    if-eq p1, v1, :cond_67

    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    goto :goto_67

    .line 518
    :cond_15
    nop

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 522
    .local v1, "date":J
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 523
    .local v3, "tznames":Landroid/icu/text/TimeZoneNames;
    const/4 v4, 0x0

    .line 524
    .local v4, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    sparse-switch p1, :sswitch_data_ec

    goto :goto_34

    .line 526
    :sswitch_23
    if-eqz p2, :cond_28

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_2a

    :cond_28
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_2a
    move-object v4, v5

    .line 527
    goto :goto_34

    .line 530
    :sswitch_2c
    if-eqz p2, :cond_31

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_33

    :cond_31
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_33
    move-object v4, v5

    .line 533
    :goto_34
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v0

    .line 534
    if-nez v0, :cond_e2

    .line 536
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v5

    .line 537
    .local v5, "tzfmt":Landroid/icu/text/TimeZoneFormat;
    if-eqz p2, :cond_54

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_58

    :cond_54
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 538
    .local v6, "offset":I
    :goto_58
    const/4 v7, 0x1

    if-ne p1, v7, :cond_60

    .line 539
    invoke-virtual {v5, v6}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_64

    :cond_60
    invoke-virtual {v5, v6}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v7

    :goto_64
    move-object v0, v7

    goto/16 :goto_e2

    .line 506
    .end local v1    # "date":J
    .end local v3    # "tznames":Landroid/icu/text/TimeZoneNames;
    .end local v4    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v5    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v6    # "offset":I
    :cond_67
    :goto_67
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    .line 507
    .local v1, "tzfmt":Landroid/icu/text/TimeZoneFormat;
    if-eqz p2, :cond_7d

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_81

    :cond_7d
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 508
    .local v2, "offset":I
    :goto_81
    packed-switch p1, :pswitch_data_fa

    goto :goto_8f

    .line 510
    :pswitch_85
    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    goto :goto_8f

    .line 513
    :pswitch_8a
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    .line 516
    .end local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v2    # "offset":I
    :goto_8f
    goto :goto_e2

    .line 478
    :cond_90
    :goto_90
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    .line 479
    .local v3, "tzfmt":Landroid/icu/text/TimeZoneFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 480
    .local v6, "date":J
    new-instance v8, Landroid/icu/util/Output;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v8, v1}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 482
    .local v8, "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    sparse-switch p1, :sswitch_data_102

    goto :goto_ba

    .line 484
    :sswitch_a3
    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_ba

    .line 487
    :sswitch_ab
    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 488
    goto :goto_ba

    .line 490
    :sswitch_b3
    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_ba
    if-eqz p2, :cond_c2

    iget-object v1, v8, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v1, v4, :cond_ca

    :cond_c2
    if-nez p2, :cond_e1

    iget-object v1, v8, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v1, v4, :cond_e1

    .line 499
    :cond_ca
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz p2, :cond_d5

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v1, v4

    .line 500
    .local v1, "offset":I
    :cond_d5
    if-ne p1, v2, :cond_dc

    .line 501
    invoke-virtual {v3, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e0

    :cond_dc
    invoke-virtual {v3, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v2

    :goto_e0
    move-object v0, v2

    .line 504
    .end local v1    # "offset":I
    .end local v3    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v6    # "date":J
    .end local v8    # "timeType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/text/TimeZoneFormat$TimeType;>;"
    :cond_e1
    nop

    .line 542
    :cond_e2
    :goto_e2
    nop

    .line 544
    return-object v0

    .line 471
    .end local v0    # "result":Ljava/lang/String;
    :cond_e4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_ec
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_23
        0x6 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x4
        :pswitch_8a
        :pswitch_85
    .end packed-switch

    :sswitch_data_102
    .sparse-switch
        0x2 -> :sswitch_b3
        0x3 -> :sswitch_ab
        0x7 -> :sswitch_a3
    .end sparse-switch
.end method

.method public static whitelist test-api countEquivalentIDs(Ljava/lang/String;)I
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 812
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "tz":Ljava/lang/String;
    if-nez v0, :cond_d

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method public static whitelist test-api getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .registers 4
    .param p0, "zoneType"    # Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "rawOffset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .line 794
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 795
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api getAvailableIDs(I)[Ljava/lang/String;
    .registers 4
    .param p0, "rawOffset"    # I

    .line 765
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 766
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "country"    # Ljava/lang/String;

    .line 781
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 782
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 1042
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "isSystemID"    # [Z

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "canonicalID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1059
    .local v1, "systemTzid":Z
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1060
    const-string v2, "Etc/Unknown"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1062
    const-string v0, "Etc/Unknown"

    .line 1063
    const/4 v1, 0x0

    goto :goto_22

    .line 1065
    :cond_16
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_1e

    .line 1067
    const/4 v1, 0x1

    goto :goto_22

    .line 1069
    :cond_1e
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    :cond_22
    :goto_22
    if-eqz p1, :cond_27

    .line 1074
    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    .line 1076
    :cond_27
    return-object v0
.end method

.method public static whitelist test-api getDefault()Landroid/icu/util/TimeZone;
    .registers 6

    .line 877
    sget-object v0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    .line 879
    .local v0, "tmpDefaultZone":Landroid/icu/util/TimeZone;
    if-nez v0, :cond_3b

    .line 880
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 881
    :try_start_7
    const-class v2, Landroid/icu/util/TimeZone;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_38

    .line 882
    :try_start_a
    sget-object v3, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_2d

    .line 883
    .end local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .local v3, "tmpDefaultZone":Landroid/icu/util/TimeZone;
    if-nez v3, :cond_29

    .line 884
    :try_start_e
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_19

    .line 885
    new-instance v0, Landroid/icu/impl/JavaTimeZone;

    invoke-direct {v0}, Landroid/icu/impl/JavaTimeZone;-><init>()V

    .end local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    goto :goto_26

    .line 887
    .end local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :cond_19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 888
    .local v0, "temp":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_36

    move-object v0, v4

    .line 890
    .end local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .local v0, "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :goto_26
    :try_start_26
    sput-object v0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    goto :goto_2a

    .line 883
    .end local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :cond_29
    move-object v0, v3

    .line 892
    .end local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :goto_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2d

    .line 893
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_38

    goto :goto_3b

    .line 892
    :catchall_2d
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    .end local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :goto_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    .end local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 893
    .restart local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :catchall_33
    move-exception v2

    move-object v0, v3

    goto :goto_39

    .line 892
    :catchall_36
    move-exception v0

    goto :goto_31

    .line 893
    .end local v3    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    .restart local v0    # "tmpDefaultZone":Landroid/icu/util/TimeZone;
    :catchall_38
    move-exception v2

    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 896
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getDefaultTimeZoneType()I
    .registers 1

    .line 734
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    return v0
.end method

.method public static whitelist test-api getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 834
    invoke-static {p0, p1}, Landroid/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "trySystem"    # Z

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "result":Landroid/icu/util/BasicTimeZone;
    if-eqz p1, :cond_7

    .line 706
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object v0

    .line 708
    :cond_7
    if-nez v0, :cond_d

    .line 709
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/SimpleTimeZone;

    move-result-object v0

    .line 711
    :cond_d
    return-object v0
.end method

.method public static whitelist test-api getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 3
    .param p0, "ID"    # Ljava/lang/String;

    .line 652
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getIDForWindowsID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "winid"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .line 1219
    const/4 v0, 0x0

    .line 1221
    .local v0, "id":Ljava/lang/String;
    const-string v1, "windowsZones"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 1223
    .local v1, "top":Landroid/icu/util/UResourceBundle;
    const-string v2, "mapTimezones"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1226
    .local v2, "mapTimezones":Landroid/icu/util/UResourceBundle;
    :try_start_11
    invoke-virtual {v2, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_11 .. :try_end_15} :catch_3c

    .line 1227
    .local v3, "zones":Landroid/icu/util/UResourceBundle;
    if-eqz p1, :cond_32

    .line 1229
    :try_start_17
    invoke-virtual {v3, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1b
    .catch Ljava/util/MissingResourceException; {:try_start_17 .. :try_end_1b} :catch_31

    .line 1230
    .end local v0    # "id":Ljava/lang/String;
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_2f

    .line 1232
    const/16 v0, 0x20

    :try_start_1f
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1233
    .local v0, "endIdx":I
    if-lez v0, :cond_2f

    .line 1234
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_1f .. :try_end_2a} :catch_2c

    move-object v0, v5

    .end local v4    # "id":Ljava/lang/String;
    .local v5, "id":Ljava/lang/String;
    goto :goto_30

    .line 1237
    .end local v0    # "endIdx":I
    .end local v5    # "id":Ljava/lang/String;
    .restart local v4    # "id":Ljava/lang/String;
    :catch_2c
    move-exception v0

    move-object v0, v4

    goto :goto_32

    .line 1239
    :cond_2f
    move-object v0, v4

    .end local v4    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    :goto_30
    goto :goto_32

    .line 1237
    :catch_31
    move-exception v4

    .line 1241
    :cond_32
    :goto_32
    if-nez v0, :cond_3b

    .line 1242
    :try_start_34
    const-string v4, "001"

    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3a
    .catch Ljava/util/MissingResourceException; {:try_start_34 .. :try_end_3a} :catch_3c

    move-object v0, v4

    .line 1246
    .end local v3    # "zones":Landroid/icu/util/UResourceBundle;
    :cond_3b
    goto :goto_3d

    .line 1244
    :catch_3c
    move-exception v3

    .line 1248
    :goto_3d
    return-object v0
.end method

.method public static whitelist test-api getIanaID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 1103
    const-string v0, "Etc/Unknown"

    .line 1104
    .local v0, "ianaId":Ljava/lang/String;
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Etc/Unknown"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1107
    :cond_13
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getIanaID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "tmpIanaId":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1109
    move-object v0, v1

    .line 1111
    :cond_1a
    return-object v0

    .line 1105
    .end local v1    # "tmpIanaId":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static whitelist test-api getRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 1128
    const/4 v0, 0x0

    .line 1131
    .local v0, "region":Ljava/lang/String;
    const-string v1, "Etc/Unknown"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1132
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :cond_d
    if-eqz v0, :cond_10

    .line 1138
    return-object v0

    .line 1136
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown system zone id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getTZDataVersion()Ljava/lang/String;
    .registers 1

    .line 1029
    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 3
    .param p0, "ID"    # Ljava/lang/String;

    .line 634
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;
    .registers 3
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 667
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;
    .registers 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "frozen"    # Z

    .line 680
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 681
    invoke-static {p0}, Landroid/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;

    move-result-object v0

    .line 682
    .local v0, "result":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_12

    .line 683
    if-eqz p2, :cond_10

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1

    .line 685
    :cond_12
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object v0

    goto :goto_1c

    .line 687
    .end local v0    # "result":Landroid/icu/util/TimeZone;
    :cond_18
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object v0

    .line 689
    .restart local v0    # "result":Landroid/icu/util/TimeZone;
    :goto_1c
    if-nez v0, :cond_3e

    .line 690
    sget-object v1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 691
    sget-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    .line 693
    :cond_3e
    if-eqz p2, :cond_42

    move-object v1, v0

    goto :goto_46

    :cond_42
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v1

    :goto_46
    return-object v1
.end method

.method public static whitelist test-api getWindowsID(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "id"    # Ljava/lang/String;

    .line 1161
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 1162
    .local v0, "isSystemID":[Z
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    .line 1163
    aget-boolean v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 1165
    return-object v3

    .line 1168
    :cond_10
    const-string v2, "windowsZones"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v5, "android/icu/impl/data/icudata"

    invoke-static {v5, v2, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1170
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    const-string v4, "mapTimezones"

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 1172
    .local v4, "mapTimezones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v5

    .line 1173
    .local v5, "resitr":Landroid/icu/util/UResourceBundleIterator;
    :goto_24
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1174
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 1175
    .local v6, "winzone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_36

    .line 1176
    goto :goto_24

    .line 1178
    :cond_36
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v7

    .line 1179
    .local v7, "rgitr":Landroid/icu/util/UResourceBundleIterator;
    :goto_3a
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 1180
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 1181
    .local v8, "regionalData":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v9

    if-eqz v9, :cond_4b

    .line 1182
    goto :goto_3a

    .line 1184
    :cond_4b
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1185
    .local v9, "tzids":[Ljava/lang/String;
    array-length v10, v9

    move v11, v1

    :goto_57
    if-ge v11, v10, :cond_69

    aget-object v12, v9, v11

    .line 1186
    .local v12, "tzid":Ljava/lang/String;
    invoke-virtual {v12, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66

    .line 1187
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1185
    .end local v12    # "tzid":Ljava/lang/String;
    :cond_66
    add-int/lit8 v11, v11, 0x1

    goto :goto_57

    .line 1190
    .end local v8    # "regionalData":Landroid/icu/util/UResourceBundle;
    .end local v9    # "tzids":[Ljava/lang/String;
    :cond_69
    goto :goto_3a

    .line 1191
    .end local v6    # "winzone":Landroid/icu/util/UResourceBundle;
    .end local v7    # "rgitr":Landroid/icu/util/UResourceBundleIterator;
    :cond_6a
    goto :goto_24

    .line 1193
    :cond_6b
    return-object v3
.end method

.method public static declared-synchronized greylist-max-o setDefault(Landroid/icu/util/TimeZone;)V
    .registers 5
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    .line 911
    :try_start_3
    invoke-static {p0}, Landroid/icu/util/TimeZone;->setICUDefault(Landroid/icu/util/TimeZone;)V

    .line 913
    if-eqz p0, :cond_4b

    .line 916
    const/4 v1, 0x0

    .line 917
    .local v1, "jdkZone":Ljava/util/TimeZone;
    instance-of v2, p0, Landroid/icu/impl/JavaTimeZone;

    if-eqz v2, :cond_16

    .line 918
    move-object v2, p0

    check-cast v2, Landroid/icu/impl/JavaTimeZone;

    invoke-virtual {v2}, Landroid/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    move-result-object v2

    move-object v1, v2

    goto :goto_41

    .line 919
    :cond_16
    instance-of v2, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v2, :cond_41

    .line 928
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "icuID":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object v1, v3

    .line 930
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 936
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 937
    .end local v2    # "icuID":Ljava/lang/String;
    .local v3, "icuID":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v1, v2

    .line 938
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 940
    const/4 v1, 0x0

    .line 944
    .end local v3    # "icuID":Ljava/lang/String;
    :cond_41
    :goto_41
    if-nez v1, :cond_48

    .line 945
    invoke-static {p0}, Landroid/icu/impl/TimeZoneAdapter;->wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v1, v2

    .line 947
    :cond_48
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4d

    .line 949
    .end local v1    # "jdkZone":Ljava/util/TimeZone;
    :cond_4b
    monitor-exit v0

    return-void

    .line 910
    .end local p0    # "tz":Landroid/icu/util/TimeZone;
    :catchall_4d
    move-exception p0

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public static declared-synchronized greylist-max-o setDefaultTimeZoneType(I)V
    .registers 4
    .param p0, "type"    # I

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    .line 721
    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_11

    .line 722
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid timezone type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    :cond_11
    :goto_11
    sput p0, Landroid/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 725
    monitor-exit v0

    return-void

    .line 720
    .end local p0    # "type":I
    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static declared-synchronized greylist-max-o setICUDefault(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    .line 964
    if-nez p0, :cond_9

    .line 965
    const/4 v1, 0x0

    :try_start_6
    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    goto :goto_1e

    .line 966
    :cond_9
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 968
    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    goto :goto_1e

    .line 971
    :cond_12
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v1

    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_20

    .line 973
    :goto_1e
    monitor-exit v0

    return-void

    .line 963
    .end local p0    # "tz":Landroid/icu/util/TimeZone;
    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 994
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 995
    return-object p0

    .line 997
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 3

    .line 1275
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1276
    .local v0, "other":Landroid/icu/util/TimeZone;
    return-object v0

    .line 1277
    .end local v0    # "other":Landroid/icu/util/TimeZone;
    :catch_7
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1006
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1007
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 1008
    :cond_11
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/util/TimeZone;

    iget-object v1, v1, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1007
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 3

    .line 1266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 562
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 563
    const v0, 0x36ee80

    return v0

    .line 565
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 4

    .line 371
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 399
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 385
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayName(ZI)Ljava/lang/String;
    .registers 4
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    .line 417
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 7
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 457
    if-ltz p2, :cond_a

    const/4 v0, 0x7

    if-gt p2, v0, :cond_a

    .line 461
    invoke-direct {p0, p2, p1, p3}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 437
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getID()Ljava/lang/String;
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist test-api getOffset(IIIIII)I
.end method

.method public whitelist test-api getOffset(J)I
    .registers 6
    .param p1, "date"    # J

    .line 267
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 268
    .local v0, "result":[I
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 269
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api getOffset(JZ[I)V
    .registers 16
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    .line 292
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    .line 293
    if-nez p3, :cond_d

    .line 294
    aget v0, p4, v1

    int-to-long v2, v0

    add-long/2addr p1, v2

    .line 309
    :cond_d
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 310
    .local v0, "fields":[I
    const/4 v2, 0x0

    .line 311
    .local v2, "pass":I
    :goto_11
    invoke-static {p1, p2, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 312
    aget v5, v0, v1

    const/4 v10, 0x1

    aget v6, v0, v10

    const/4 v3, 0x2

    aget v7, v0, v3

    const/4 v3, 0x3

    aget v8, v0, v3

    const/4 v3, 0x5

    aget v9, v0, v3

    const/4 v4, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v4

    aget v3, p4, v1

    sub-int/2addr v4, v3

    aput v4, p4, v10

    .line 316
    if-nez v2, :cond_3d

    if-eqz p3, :cond_3d

    aget v3, p4, v10

    if-nez v3, :cond_36

    .line 317
    goto :goto_3d

    .line 320
    :cond_36
    aget v3, p4, v10

    int-to-long v3, v3

    sub-long/2addr p1, v3

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 322
    .end local v2    # "pass":I
    :cond_3d
    :goto_3d
    return-void
.end method

.method public abstract whitelist test-api getRawOffset()I
.end method

.method public whitelist test-api hasSameRules(Landroid/icu/util/TimeZone;)Z
    .registers 4
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    .line 984
    if-eqz p1, :cond_18

    .line 985
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 986
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 984
    :goto_19
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1017
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api inDaylightTime(Ljava/util/Date;)Z
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 610
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public whitelist test-api setID(Ljava/lang/String;)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;

    .line 352
    if-eqz p1, :cond_13

    .line 355
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_b

    .line 358
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    .line 359
    return-void

    .line 356
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api setRawOffset(I)V
.end method

.method public abstract whitelist test-api useDaylightTime()Z
.end method
