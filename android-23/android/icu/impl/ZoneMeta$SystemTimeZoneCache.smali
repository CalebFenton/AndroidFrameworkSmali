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
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/OlsonTimeZone;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 545
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 552
    const/4 v3, 0x0

    #@1
    .line 554
    .local v3, "tz":Landroid/icu/impl/OlsonTimeZone;
    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@4
    .line 555
    const-string/jumbo v6, "zoneinfo64"

    #@7
    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    .line 554
    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v2

    #@d
    .line 556
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v2, p2}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v1

    #@11
    .line 557
    .local v1, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v1, :cond_0

    #@13
    .line 558
    new-instance v4, Landroid/icu/impl/OlsonTimeZone;

    #@15
    invoke-direct {v4, v2, v1, p2}, Landroid/icu/impl/OlsonTimeZone;-><init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 559
    .local v4, "tz":Landroid/icu/impl/OlsonTimeZone;
    :try_start_1
    invoke-virtual {v4}, Landroid/icu/impl/OlsonTimeZone;->freeze()Landroid/icu/util/TimeZone;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .end local v3    # "tz":Landroid/icu/impl/OlsonTimeZone;
    move-object v3, v4

    #@1c
    .line 564
    .end local v1    # "res":Landroid/icu/util/UResourceBundle;
    .end local v2    # "top":Landroid/icu/util/UResourceBundle;
    .end local v4    # "tz":Landroid/icu/impl/OlsonTimeZone;
    :cond_0
    :goto_0
    return-object v3

    #@1d
    .line 561
    .restart local v3    # "tz":Landroid/icu/impl/OlsonTimeZone;
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0

    #@1f
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .end local v3    # "tz":Landroid/icu/impl/OlsonTimeZone;
    .restart local v1    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "top":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "tz":Landroid/icu/impl/OlsonTimeZone;
    :catch_1
    move-exception v0

    #@20
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    move-object v3, v4

    #@21
    .end local v4    # "tz":Landroid/icu/impl/OlsonTimeZone;
    .local v3, "tz":Landroid/icu/impl/OlsonTimeZone;
    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 551
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
