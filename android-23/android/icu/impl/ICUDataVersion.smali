.class public final Landroid/icu/impl/ICUDataVersion;
.super Ljava/lang/Object;
.source "ICUDataVersion.java"


# static fields
.field private static final U_ICU_DATA_KEY:Ljava/lang/String; = "DataVersion"

.field private static final U_ICU_VERSION_BUNDLE:Ljava/lang/String; = "icuver"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDataVersion()Landroid/icu/util/VersionInfo;
    .locals 5

    #@0
    .prologue
    .line 26
    const/4 v1, 0x0

    #@1
    .line 28
    .local v1, "icudatares":Landroid/icu/util/UResourceBundle;
    :try_start_0
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@4
    const-string/jumbo v3, "icuver"

    #@7
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@9
    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v1

    #@d
    .line 29
    .local v1, "icudatares":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v2, "DataVersion"

    #@10
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    .line 34
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 30
    :catch_0
    move-exception v0

    #@1e
    .line 31
    .local v0, "ex":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    #@1f
    return-object v2
.end method
