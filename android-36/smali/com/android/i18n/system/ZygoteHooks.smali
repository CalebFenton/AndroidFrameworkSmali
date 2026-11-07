.class public final Lcom/android/i18n/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# static fields
.field private static final blacklist HIDE_PROP_ICUBINARY_DATA_PATH:J = 0xa4033f6L

.field public static final blacklist PROP_ICUBINARY_DATA_PATH:Ljava/lang/String; = "android.icu.impl.ICUBinary.dataPath"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static blacklist handleCompatChangesBeforeBindingApplication()V
    .registers 2

    .line 113
    const-wide/32 v0, 0xa4033f6

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 114
    const-string v0, "android.icu.impl.ICUBinary.dataPath"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    :cond_e
    return-void
.end method

.method public static blacklist onBeginPreload()V
    .registers 5

    .line 55
    const-string v0, "IcuZygoteHooksOnBeginPreload"

    invoke-static {v0}, Lcom/android/i18n/util/ATrace;->traceBegin(Ljava/lang/String;)V

    .line 59
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/util/ULocale;

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v3

    aput-object v3, v0, v1

    .line 63
    .local v0, "localesToPin":[Landroid/icu/util/ULocale;
    array-length v1, v0

    :goto_1f
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 64
    .local v3, "uLocale":Landroid/icu/util/ULocale;
    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, v3}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 65
    new-instance v4, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v4, v3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 63
    .end local v3    # "uLocale":Landroid/icu/util/ULocale;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 70
    :cond_30
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    .line 73
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    .line 74
    invoke-static {}, Lcom/android/i18n/util/ATrace;->traceEnd()V

    .line 75
    return-void
.end method

.method public static blacklist onEndPreload()V
    .registers 2

    .line 82
    const-string v0, "IcuZygoteHooksOnEndPreload"

    invoke-static {v0}, Lcom/android/i18n/util/ATrace;->traceBegin(Ljava/lang/String;)V

    .line 84
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    .line 93
    const-string v0, "android.icu.impl.ICUBinary.dataPath"

    invoke-static {}, Landroid/icu/platform/AndroidDataFiles;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/android/icu/util/UResourceBundleNative;->cacheTimeZoneBundles()V

    .line 98
    invoke-static {}, Lcom/android/i18n/util/ATrace;->traceEnd()V

    .line 99
    return-void
.end method
