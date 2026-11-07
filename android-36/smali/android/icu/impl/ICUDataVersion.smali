.class public final Landroid/icu/impl/ICUDataVersion;
.super Ljava/lang/Object;
.source "ICUDataVersion.java"


# static fields
.field private static final blacklist U_ICU_DATA_KEY:Ljava/lang/String; = "DataVersion"

.field private static final blacklist U_ICU_VERSION_BUNDLE:Ljava/lang/String; = "icuver"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDataVersion()Landroid/icu/util/VersionInfo;
    .registers 4

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "icudatares":Landroid/icu/util/UResourceBundle;
    :try_start_1
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "icuver"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    move-object v0, v1

    .line 38
    const-string v1, "DataVersion"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_12} :catch_1c

    .line 41
    .end local v0    # "icudatares":Landroid/icu/util/UResourceBundle;
    .local v1, "icudatares":Landroid/icu/util/UResourceBundle;
    nop

    .line 43
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0

    .line 39
    .end local v1    # "icudatares":Landroid/icu/util/UResourceBundle;
    .restart local v0    # "icudatares":Landroid/icu/util/UResourceBundle;
    :catch_1c
    move-exception v1

    .line 40
    .local v1, "ex":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    return-object v2
.end method
