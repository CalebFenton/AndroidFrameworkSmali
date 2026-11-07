.class final Landroid/icu/text/NumberFormatServiceShim$NFFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFFactory"
.end annotation


# instance fields
.field private blacklist delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V
    .registers 3
    .param p1, "delegate"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    .line 48
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->visible()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 50
    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "srvc"    # Landroid/icu/impl/ICUService;

    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    instance-of v0, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    if-nez v0, :cond_c

    goto :goto_24

    .line 58
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 59
    .local v0, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    iget-object v2, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v2

    .line 60
    .local v2, "result":Ljava/lang/Object;
    if-nez v2, :cond_23

    .line 61
    invoke-virtual {p2, p1, v1, p0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    :cond_23
    return-object v2

    .line 55
    .end local v0    # "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_24
    :goto_24
    return-object v1
.end method

.method protected blacklist getSupportedIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->getSupportedLocaleNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
