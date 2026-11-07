.class public Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICUResourceBundleFactory"
.end annotation


# instance fields
.field protected final blacklist bundleName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 563
    const-string v0, "android/icu/impl/data/icudata"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 573
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    .line 574
    return-void
.end method


# virtual methods
.method protected blacklist getSupportedIDs()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 6
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "service"    # Landroid/icu/impl/ICUService;

    .line 601
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist loader()Ljava/lang/ClassLoader;
    .registers 2

    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVisibleIDs(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    .line 590
    .local v0, "visibleIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_e

    .line 593
    :cond_1e
    return-void
.end method
