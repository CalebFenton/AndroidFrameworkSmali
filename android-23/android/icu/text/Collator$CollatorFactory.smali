.class public abstract Landroid/icu/text/Collator$CollatorFactory;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CollatorFactory"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 522
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3
    .param p1, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 547
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    #@9
    move-result-object v1

    #@a
    .line 548
    .local v1, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 549
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 550
    invoke-virtual {p1, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 553
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "objectLocale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 534
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public abstract getSupportedLocaleIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public visible()Z
    .locals 1

    #@0
    .prologue
    .line 494
    const/4 v0, 0x1

    #@1
    return v0
.end method
