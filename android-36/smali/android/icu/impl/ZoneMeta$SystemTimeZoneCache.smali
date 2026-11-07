.class Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/OlsonTimeZone;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 573
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ZoneMeta-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "tz":Landroid/icu/impl/OlsonTimeZone;
    :try_start_1
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "zoneinfo64"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 584
    .local v1, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v1, p2}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 585
    .local v2, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v2, :cond_1a

    .line 586
    new-instance v3, Landroid/icu/impl/OlsonTimeZone;

    invoke-direct {v3, v1, v2, p2}, Landroid/icu/impl/OlsonTimeZone;-><init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V

    move-object v0, v3

    .line 587
    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->freeze()Landroid/icu/util/TimeZone;
    :try_end_1a
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 591
    .end local v1    # "top":Landroid/icu/util/UResourceBundle;
    .end local v2    # "res":Landroid/icu/util/UResourceBundle;
    :cond_1a
    goto :goto_1c

    .line 589
    :catch_1b
    move-exception v1

    .line 592
    :goto_1c
    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 573
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object p1

    return-object p1
.end method
