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
.field protected final bundleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 540
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    #@6
    .line 539
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 548
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    #@4
    .line 550
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    #@6
    .line 547
    return-void
.end method


# virtual methods
.method protected getSupportedIDs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "service"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected loader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", bundle: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 564
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    iget-object v3, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v4

    #@6
    invoke-static {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@9
    move-result-object v2

    #@a
    .line 565
    .local v2, "visibleIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 566
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    goto :goto_0

    #@1e
    .line 563
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method
