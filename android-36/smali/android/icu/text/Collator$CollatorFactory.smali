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
.method protected constructor greylist-max-o <init>()V
    .registers 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    return-void
.end method


# virtual methods
.method public greylist-max-o createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .registers 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 499
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 513
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 6
    .param p1, "objectLocale"    # Landroid/icu/util/ULocale;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 535
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 536
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object v0

    .line 537
    .local v0, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 539
    invoke-virtual {p1, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 542
    .end local v0    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "objectLocale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;

    .line 524
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o getSupportedLocaleIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public greylist-max-o visible()Z
    .registers 2

    .line 487
    const/4 v0, 0x1

    return v0
.end method
