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
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final GENERIC_LOCATION:I = 0x7

.field public static final GMT_ZONE:Landroid/icu/util/TimeZone;

.field static final GMT_ZONE_ID:Ljava/lang/String; = "Etc/GMT"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final LONG:I = 0x1

.field public static final LONG_GENERIC:I = 0x3

.field public static final LONG_GMT:I = 0x5

.field public static final SHORT:I = 0x0

.field public static final SHORT_COMMONLY_USED:I = 0x6

.field public static final SHORT_GENERIC:I = 0x2

.field public static final SHORT_GMT:I = 0x4

.field public static final TIMEZONE_ICU:I = 0x0

.field public static final TIMEZONE_JDK:I = 0x1

.field private static final TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final TZIMPL_CONFIG_KEY:Ljava/lang/String; = "android.icu.util.TimeZone.DefaultTimeZoneType"

.field private static TZ_IMPL:I = 0x0

.field public static final UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

.field public static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile defaultZone:Landroid/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const-class v1, Landroid/icu/util/TimeZone;

    #@5
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    move v1, v2

    #@c
    :goto_0
    sput-boolean v1, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    #@e
    .line 118
    const-string/jumbo v1, "android.icu.util.TimeZone"

    #@11
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@14
    move-result-object v1

    #@15
    sput-object v1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    #@17
    .line 249
    new-instance v1, Landroid/icu/util/TimeZone$ConstantZone;

    #@19
    const-string/jumbo v4, "Etc/Unknown"

    #@1c
    invoke-direct {v1, v2, v4, v5}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V

    #@1f
    invoke-virtual {v1}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    #@25
    .line 256
    new-instance v1, Landroid/icu/util/TimeZone$ConstantZone;

    #@27
    const-string/jumbo v4, "Etc/GMT"

    #@2a
    invoke-direct {v1, v2, v4, v5}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V

    #@2d
    invoke-virtual {v1}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    #@30
    move-result-object v1

    #@31
    sput-object v1, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    #@33
    .line 1286
    sput-object v5, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@35
    .line 1291
    sput v2, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@37
    .line 1301
    const-string/jumbo v1, "android.icu.util.TimeZone.DefaultTimeZoneType"

    #@3a
    const-string/jumbo v2, "ICU"

    #@3d
    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1302
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "JDK"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 1303
    sput v3, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@4c
    .line 114
    :cond_0
    return-void

    #@4d
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    move v1, v3

    #@4e
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    if-nez p1, :cond_0

    #@5
    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 142
    :cond_0
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@d
    .line 138
    return-void
.end method

.method private _getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 11
    .param p1, "style"    # I
    .param p2, "daylight"    # Z
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 534
    if-nez p3, :cond_0

    #@2
    .line 535
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "locale is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 538
    :cond_0
    const/4 v8, 0x0

    #@c
    .line 540
    .local v8, "result":Ljava/lang/String;
    const/4 v2, 0x7

    #@d
    if-eq p1, v2, :cond_1

    #@f
    const/4 v2, 0x3

    #@10
    if-ne p1, v2, :cond_3

    #@12
    .line 542
    :cond_1
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@15
    move-result-object v1

    #@16
    .line 543
    .local v1, "tzfmt":Landroid/icu/text/TimeZoneFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    .line 544
    .local v4, "date":J
    new-instance v6, Landroid/icu/util/Output;

    #@1c
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@1e
    invoke-direct {v6, v2}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    #@21
    .line 546
    .local v6, "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    packed-switch p1, :pswitch_data_0

    #@24
    .line 561
    .end local v8    # "result":Ljava/lang/String;
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_5

    #@26
    iget-object v2, v6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@28
    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2a
    if-ne v2, v3, :cond_5

    #@2c
    .line 563
    :goto_1
    if-eqz p2, :cond_6

    #@2e
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@31
    move-result v2

    #@32
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    #@35
    move-result v3

    #@36
    add-int v7, v2, v3

    #@38
    .line 564
    .local v7, "offset":I
    :goto_2
    const/4 v2, 0x2

    #@39
    if-ne p1, v2, :cond_7

    #@3b
    .line 565
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    .line 606
    .end local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v4    # "date":J
    .end local v6    # "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    .end local v7    # "offset":I
    :cond_2
    :goto_3
    sget-boolean v2, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    #@41
    if-nez v2, :cond_12

    #@43
    if-eqz v8, :cond_11

    #@45
    const/4 v2, 0x1

    #@46
    :goto_4
    if-nez v2, :cond_12

    #@48
    new-instance v2, Ljava/lang/AssertionError;

    #@4a
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@4d
    throw v2

    #@4e
    .line 540
    .restart local v8    # "result":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    #@4f
    if-eq p1, v2, :cond_1

    #@51
    .line 568
    const/4 v2, 0x5

    #@52
    if-eq p1, v2, :cond_4

    #@54
    const/4 v2, 0x4

    #@55
    if-ne p1, v2, :cond_9

    #@57
    .line 570
    :cond_4
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@5a
    move-result-object v1

    #@5b
    .line 571
    .restart local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    if-eqz p2, :cond_8

    #@5d
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_8

    #@63
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@66
    move-result v2

    #@67
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    #@6a
    move-result v3

    #@6b
    add-int v7, v2, v3

    #@6d
    .line 572
    .restart local v7    # "offset":I
    :goto_5
    packed-switch p1, :pswitch_data_1

    #@70
    goto :goto_3

    #@71
    .line 577
    :pswitch_1
    const/4 v2, 0x0

    #@72
    const/4 v3, 0x0

    #@73
    const/4 v10, 0x0

    #@74
    invoke-virtual {v1, v7, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    .local v8, "result":Ljava/lang/String;
    goto :goto_3

    #@79
    .line 548
    .end local v7    # "offset":I
    .restart local v4    # "date":J
    .restart local v6    # "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    .local v8, "result":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@7b
    move-object v3, p0

    #@7c
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    .local v8, "result":Ljava/lang/String;
    goto :goto_0

    #@81
    .line 551
    .local v8, "result":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@83
    move-object v3, p0

    #@84
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    .local v8, "result":Ljava/lang/String;
    goto :goto_0

    #@89
    .line 554
    .local v8, "result":Ljava/lang/String;
    :pswitch_4
    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@8b
    move-object v3, p0

    #@8c
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    .local v8, "result":Ljava/lang/String;
    goto :goto_0

    #@91
    .line 562
    .end local v8    # "result":Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_2

    #@93
    iget-object v2, v6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@95
    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@97
    if-ne v2, v3, :cond_2

    #@99
    goto :goto_1

    #@9a
    .line 563
    :cond_6
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@9d
    move-result v7

    #@9e
    .restart local v7    # "offset":I
    goto :goto_2

    #@9f
    .line 565
    :cond_7
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_3

    #@a4
    .line 571
    .end local v4    # "date":J
    .end local v6    # "timeType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/TimeZoneFormat$TimeType;>;"
    .end local v7    # "offset":I
    .local v8, "result":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@a7
    move-result v7

    #@a8
    .restart local v7    # "offset":I
    goto :goto_5

    #@a9
    .line 574
    :pswitch_5
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    #@ac
    move-result-object v8

    #@ad
    .local v8, "result":Ljava/lang/String;
    goto :goto_3

    #@ae
    .line 582
    .end local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v7    # "offset":I
    .local v8, "result":Ljava/lang/String;
    :cond_9
    sget-boolean v2, Landroid/icu/util/TimeZone;->-assertionsDisabled:Z

    #@b0
    if-nez v2, :cond_c

    #@b2
    const/4 v2, 0x1

    #@b3
    if-eq p1, v2, :cond_a

    #@b5
    if-nez p1, :cond_b

    #@b7
    :cond_a
    const/4 v2, 0x1

    #@b8
    :goto_6
    if-nez v2, :cond_c

    #@ba
    new-instance v2, Ljava/lang/AssertionError;

    #@bc
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@bf
    throw v2

    #@c0
    :cond_b
    const/4 v2, 0x6

    #@c1
    if-eq p1, v2, :cond_a

    #@c3
    const/4 v2, 0x0

    #@c4
    goto :goto_6

    #@c5
    .line 585
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c8
    move-result-wide v4

    #@c9
    .line 586
    .restart local v4    # "date":J
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@cc
    move-result-object v9

    #@cd
    .line 587
    .local v9, "tznames":Landroid/icu/text/TimeZoneNames;
    const/4 v0, 0x0

    #@ce
    .line 588
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    sparse-switch p1, :sswitch_data_0

    #@d1
    .line 597
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_7
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v9, v2, v0, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    .line 598
    .local v8, "result":Ljava/lang/String;
    if-nez v8, :cond_2

    #@db
    .line 600
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@de
    move-result-object v1

    #@df
    .line 601
    .restart local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    if-eqz p2, :cond_f

    #@e1
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_f

    #@e7
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@ea
    move-result v2

    #@eb
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    #@ee
    move-result v3

    #@ef
    add-int v7, v2, v3

    #@f1
    .line 602
    .restart local v7    # "offset":I
    :goto_8
    const/4 v2, 0x1

    #@f2
    if-ne p1, v2, :cond_10

    #@f4
    .line 603
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    #@f7
    move-result-object v8

    #@f8
    goto/16 :goto_3

    #@fa
    .line 590
    .end local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v7    # "offset":I
    .restart local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .local v8, "result":Ljava/lang/String;
    :sswitch_0
    if-eqz p2, :cond_d

    #@fc
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@fe
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_7

    #@ff
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_d
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@101
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_7

    #@102
    .line 594
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :sswitch_1
    if-eqz p2, :cond_e

    #@104
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@106
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_7

    #@107
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_e
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@109
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_7

    #@10a
    .line 601
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    .restart local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .local v8, "result":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@10d
    move-result v7

    #@10e
    .restart local v7    # "offset":I
    goto :goto_8

    #@10f
    .line 603
    :cond_10
    invoke-virtual {v1, v7}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    #@112
    move-result-object v8

    #@113
    goto/16 :goto_3

    #@115
    .line 606
    .end local v1    # "tzfmt":Landroid/icu/text/TimeZoneFormat;
    .end local v4    # "date":J
    .end local v7    # "offset":I
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "tznames":Landroid/icu/text/TimeZoneNames;
    :cond_11
    const/4 v2, 0x0

    #@116
    goto/16 :goto_4

    #@118
    .line 608
    :cond_12
    return-object v8

    #@119
    .line 546
    nop

    #@11a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@12a
    .line 572
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_5
    .end packed-switch

    #@132
    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static countEquivalentIDs(Ljava/lang/String;)I
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 890
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 822
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 871
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@3
    invoke-static {v1, v2, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    .line 872
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    return-object v1
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 4
    .param p0, "rawOffset"    # I

    #@0
    .prologue
    .line 838
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v1, v3, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    .line 839
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [Ljava/lang/String;

    #@14
    return-object v1
.end method

.method public static getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 856
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v1, p0, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    .line 857
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    return-object v1
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1059
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "isSystemID"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1075
    const/4 v0, 0x0

    #@2
    .line 1076
    .local v0, "canonicalID":Ljava/lang/String;
    const/4 v1, 0x0

    #@3
    .line 1077
    .local v1, "systemTzid":Z
    if-eqz p0, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1078
    const-string/jumbo v2, "Etc/Unknown"

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 1080
    const-string/jumbo v0, "Etc/Unknown"

    #@17
    .line 1081
    .local v0, "canonicalID":Ljava/lang/String;
    const/4 v1, 0x0

    #@18
    .line 1091
    .end local v0    # "canonicalID":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@1a
    .line 1092
    aput-boolean v1, p1, v3

    #@1c
    .line 1094
    :cond_1
    return-object v0

    #@1d
    .line 1083
    .local v0, "canonicalID":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 1084
    .local v0, "canonicalID":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@23
    .line 1085
    const/4 v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1087
    :cond_3
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_0
.end method

.method public static getDefault()Landroid/icu/util/TimeZone;
    .locals 4

    #@0
    .prologue
    .line 924
    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 925
    const-class v2, Landroid/icu/util/TimeZone;

    #@6
    monitor-enter v2

    #@7
    .line 926
    :try_start_0
    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 927
    sget v1, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v1, v3, :cond_2

    #@10
    .line 928
    new-instance v1, Landroid/icu/impl/JavaTimeZone;

    #@12
    invoke-direct {v1}, Landroid/icu/impl/JavaTimeZone;-><init>()V

    #@15
    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .local v0, "temp":Ljava/util/TimeZone;
    :cond_0
    :goto_0
    monitor-exit v2

    #@18
    .line 936
    :cond_1
    sget-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@1a
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 930
    .end local v0    # "temp":Ljava/util/TimeZone;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@22
    move-result-object v0

    #@23
    .line 931
    .restart local v0    # "temp":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@2a
    move-result-object v1

    #@2b
    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 925
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method public static getDefaultTimeZoneType()I
    .locals 1

    #@0
    .prologue
    .line 803
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@2
    return v0
.end method

.method public static getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 913
    invoke-static {p0, p1}, Landroid/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2
    .param p0, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 722
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getIDForWindowsID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "winid"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    const/4 v2, 0x0

    #@1
    .line 1211
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@4
    const-string/jumbo v7, "windowsZones"

    #@7
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    .line 1210
    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v4

    #@d
    .line 1212
    .local v4, "top":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v6, "mapTimezones"

    #@10
    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v3

    #@14
    .line 1215
    .local v3, "mapTimezones":Landroid/icu/util/UResourceBundle;
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v5

    #@18
    .line 1216
    .local v5, "zones":Landroid/icu/util/UResourceBundle;
    if-eqz p1, :cond_0

    #@1a
    .line 1218
    :try_start_1
    invoke-virtual {v5, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1219
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@20
    .line 1221
    const/16 v6, 0x20

    #@22
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v1

    #@26
    .line 1222
    .local v1, "endIdx":I
    if-lez v1, :cond_0

    #@28
    .line 1223
    const/4 v6, 0x0

    #@29
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    move-result-object v2

    #@2d
    .line 1230
    .end local v1    # "endIdx":I
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@2f
    .line 1231
    :try_start_2
    const-string/jumbo v6, "001"

    #@32
    invoke-virtual {v5, v6}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@35
    move-result-object v2

    #@36
    .line 1237
    .end local v5    # "zones":Landroid/icu/util/UResourceBundle;
    :cond_1
    :goto_1
    return-object v2

    #@37
    .line 1233
    :catch_0
    move-exception v0

    #@38
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_1

    #@39
    .line 1226
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v5    # "zones":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v0

    #@3a
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1113
    const/4 v0, 0x0

    #@1
    .line 1116
    .local v0, "region":Ljava/lang/String;
    const-string/jumbo v1, "Etc/Unknown"

    #@4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1117
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1119
    .end local v0    # "region":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    #@10
    .line 1121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Unknown system zone id: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 1123
    :cond_1
    return-object v0
.end method

.method public static getTZDataVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1045
    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2
    .param p0, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;
    .locals 1
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "type"    # I

    #@0
    .prologue
    .line 738
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;
    .locals 4
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "frozen"    # Z

    #@0
    .prologue
    .line 751
    const/4 v1, 0x1

    #@1
    if-ne p1, v1, :cond_1

    #@3
    .line 752
    invoke-static {p0}, Landroid/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;

    #@6
    move-result-object v0

    #@7
    .line 753
    .local v0, "result":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_3

    #@9
    .line 754
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "result":Landroid/icu/util/TimeZone;
    :cond_0
    return-object v0

    #@10
    .line 765
    :cond_1
    if-nez p0, :cond_2

    #@12
    .line 766
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@17
    throw v1

    #@18
    .line 768
    :cond_2
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@1b
    move-result-object v0

    #@1c
    .line 771
    .restart local v0    # "result":Landroid/icu/util/TimeZone;
    :cond_3
    if-nez v0, :cond_4

    #@1e
    .line 772
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@21
    move-result-object v0

    #@22
    .line 775
    :cond_4
    if-nez v0, :cond_5

    #@24
    .line 776
    sget-object v1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "\""

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@44
    .line 777
    sget-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    #@46
    .line 780
    :cond_5
    if-eqz p2, :cond_6

    #@48
    .end local v0    # "result":Landroid/icu/util/TimeZone;
    :goto_0
    return-object v0

    #@49
    .restart local v0    # "result":Landroid/icu/util/TimeZone;
    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@4c
    move-result-object v0

    #@4d
    goto :goto_0
.end method

.method public static getWindowsID(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1148
    const/4 v9, 0x1

    #@3
    new-array v0, v9, [Z

    #@5
    aput-boolean v10, v0, v10

    #@7
    .line 1149
    .local v0, "isSystemID":[Z
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    .line 1150
    aget-boolean v9, v0, v10

    #@d
    if-nez v9, :cond_0

    #@f
    .line 1152
    return-object v13

    #@10
    .line 1156
    :cond_0
    const-string/jumbo v9, "android/icu/impl/data/icudt55b"

    #@13
    const-string/jumbo v11, "windowsZones"

    #@16
    sget-object v12, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@18
    .line 1155
    invoke-static {v9, v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v5

    #@1c
    .line 1157
    .local v5, "top":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v9, "mapTimezones"

    #@1f
    invoke-virtual {v5, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@22
    move-result-object v1

    #@23
    .line 1159
    .local v1, "mapTimezones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@26
    move-result-object v3

    #@27
    .line 1160
    .local v3, "resitr":Landroid/icu/util/UResourceBundleIterator;
    :cond_1
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_4

    #@2d
    .line 1161
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@30
    move-result-object v8

    #@31
    .line 1162
    .local v8, "winzone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getType()I

    #@34
    move-result v9

    #@35
    const/4 v11, 0x2

    #@36
    if-ne v9, v11, :cond_1

    #@38
    .line 1165
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@3b
    move-result-object v4

    #@3c
    .line 1166
    .local v4, "rgitr":Landroid/icu/util/UResourceBundleIterator;
    :cond_2
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_1

    #@42
    .line 1167
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@45
    move-result-object v2

    #@46
    .line 1168
    .local v2, "regionalData":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getType()I

    #@49
    move-result v9

    #@4a
    if-nez v9, :cond_2

    #@4c
    .line 1171
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    const-string/jumbo v11, " "

    #@53
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    .line 1172
    .local v7, "tzids":[Ljava/lang/String;
    array-length v11, v7

    #@58
    move v9, v10

    #@59
    :goto_0
    if-ge v9, v11, :cond_2

    #@5b
    aget-object v6, v7, v9

    #@5d
    .line 1173
    .local v6, "tzid":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v12

    #@61
    if-eqz v12, :cond_3

    #@63
    .line 1174
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    return-object v9

    #@68
    .line 1172
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 1180
    .end local v2    # "regionalData":Landroid/icu/util/UResourceBundle;
    .end local v4    # "rgitr":Landroid/icu/util/UResourceBundleIterator;
    .end local v6    # "tzid":Ljava/lang/String;
    .end local v7    # "tzids":[Ljava/lang/String;
    .end local v8    # "winzone":Landroid/icu/util/UResourceBundle;
    :cond_4
    return-object v13
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/TimeZone;)V
    .locals 4
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const-class v3, Landroid/icu/util/TimeZone;

    #@2
    monitor-enter v3

    #@3
    .line 948
    :try_start_0
    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@5
    .line 949
    const/4 v1, 0x0

    #@6
    .line 950
    .local v1, "jdkZone":Ljava/util/TimeZone;
    sget-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@8
    instance-of v2, v2, Landroid/icu/impl/JavaTimeZone;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 951
    sget-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    #@e
    check-cast v2, Landroid/icu/impl/JavaTimeZone;

    #@10
    invoke-virtual {v2}, Landroid/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    #@13
    move-result-object v1

    #@14
    .line 987
    .end local v1    # "jdkZone":Ljava/util/TimeZone;
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v3

    #@18
    .line 947
    return-void

    #@19
    .line 956
    .restart local v1    # "jdkZone":Ljava/util/TimeZone;
    :cond_1
    if-eqz p0, :cond_0

    #@1b
    .line 957
    :try_start_1
    instance-of v2, p0, Landroid/icu/impl/OlsonTimeZone;

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 966
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 967
    .local v0, "icuID":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@26
    move-result-object v1

    #@27
    .line 968
    .local v1, "jdkZone":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_2

    #@31
    .line 974
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 975
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@38
    move-result-object v1

    #@39
    .line 976
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_2

    #@43
    .line 978
    const/4 v1, 0x0

    #@44
    .line 982
    .end local v0    # "icuID":Ljava/lang/String;
    .end local v1    # "jdkZone":Ljava/util/TimeZone;
    :cond_2
    if-nez v1, :cond_0

    #@46
    .line 983
    invoke-static {p0}, Landroid/icu/impl/TimeZoneAdapter;->wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    move-result-object v1

    #@4a
    .restart local v1    # "jdkZone":Ljava/util/TimeZone;
    goto :goto_0

    #@4b
    .end local v1    # "jdkZone":Ljava/util/TimeZone;
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2
.end method

.method public static declared-synchronized setDefaultTimeZoneType(I)V
    .locals 3
    .param p0, "type"    # I

    #@0
    .prologue
    const-class v1, Landroid/icu/util/TimeZone;

    #@2
    monitor-enter v1

    #@3
    .line 790
    if-eqz p0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 791
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Invalid timezone type"

    #@d
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    .line 793
    :cond_0
    :try_start_1
    sput p0, Landroid/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 789
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1011
    return-object p0

    #@7
    .line 1013
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    #@0
    .prologue
    .line 1264
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1265
    .local v1, "other":Landroid/icu/util/TimeZone;
    return-object v1

    #@7
    .line 1266
    .end local v1    # "other":Landroid/icu/util/TimeZone;
    :catch_0
    move-exception v0

    #@8
    .line 1267
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@a
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1021
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 1022
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_2

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 1023
    :cond_2
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@14
    check-cast p1, Landroid/icu/util/TimeZone;

    #@16
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 2

    #@0
    .prologue
    .line 1255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Needs to be implemented by the subclass."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1254
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 628
    const v0, 0x36ee80

    #@9
    return v0

    #@a
    .line 630
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 430
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 460
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 445
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1
    .param p1, "daylight"    # Z
    .param p2, "style"    # I

    #@0
    .prologue
    .line 479
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 521
    if-ltz p2, :cond_0

    #@2
    const/4 v0, 0x7

    #@3
    if-le p2, v0, :cond_1

    #@5
    .line 522
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Illegal style: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 525
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 500
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 3
    .param p1, "date"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 319
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [I

    #@4
    .line 320
    .local v0, "result":[I
    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@7
    .line 321
    aget v1, v0, v2

    #@9
    const/4 v2, 0x1

    #@a
    aget v2, v0, v2

    #@c
    add-int/2addr v1, v2

    #@d
    return v1
.end method

.method public getOffset(JZ[I)V
    .locals 11
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 346
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@5
    move-result v0

    #@6
    aput v0, p4, v9

    #@8
    .line 347
    if-nez p3, :cond_0

    #@a
    .line 348
    aget v0, p4, v9

    #@c
    int-to-long v2, v0

    #@d
    add-long/2addr p1, v2

    #@e
    .line 363
    :cond_0
    const/4 v0, 0x6

    #@f
    new-array v7, v0, [I

    #@11
    .line 364
    .local v7, "fields":[I
    const/4 v8, 0x0

    #@12
    .line 365
    .local v8, "pass":I
    :goto_0
    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@15
    .line 367
    aget v2, v7, v9

    #@17
    aget v3, v7, v1

    #@19
    const/4 v0, 0x2

    #@1a
    aget v4, v7, v0

    #@1c
    .line 368
    const/4 v0, 0x3

    #@1d
    aget v5, v7, v0

    #@1f
    const/4 v0, 0x5

    #@20
    aget v6, v7, v0

    #@22
    move-object v0, p0

    #@23
    .line 366
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    #@26
    move-result v0

    #@27
    .line 368
    aget v2, p4, v9

    #@29
    .line 366
    sub-int/2addr v0, v2

    #@2a
    aput v0, p4, v1

    #@2c
    .line 370
    if-nez v8, :cond_1

    #@2e
    if-eqz p3, :cond_1

    #@30
    aget v0, p4, v1

    #@32
    if-nez v0, :cond_2

    #@34
    .line 345
    :cond_1
    return-void

    #@35
    .line 374
    :cond_2
    aget v0, p4, v1

    #@37
    int-to-long v2, v0

    #@38
    sub-long/2addr p1, v2

    #@39
    .line 364
    add-int/lit8 v8, v8, 0x1

    #@3b
    goto :goto_0
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1000
    if-eqz p1, :cond_0

    #@3
    .line 1001
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@a
    move-result v2

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 1002
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@10
    move-result v1

    #@11
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@14
    move-result v2

    #@15
    if-ne v1, v2, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 1000
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1247
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    new-instance v0, Ljava/util/Date;

    #@8
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@e
    move-result v0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    if-nez p1, :cond_0

    #@2
    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@10
    const-string/jumbo v1, "Attempt to modify a frozen TimeZone instance."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 416
    :cond_1
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    #@19
    .line 409
    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
