.class Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastResortLocaleDisplayNames"
.end annotation


# instance fields
.field private greylist-max-o contexts:[Landroid/icu/text/DisplayContext;

.field private greylist-max-o locale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 422
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    .line 423
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    .line 424
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_c

    .line 425
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_e

    :cond_c
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .line 426
    .local v0, "context":Landroid/icu/text/DisplayContext;
    :goto_e
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    .line 427
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    return-void
.end method

.method private varargs constructor blacklist <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 429
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    .line 430
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    .line 431
    array-length v0, p2

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    .line 432
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .registers 8
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    .line 456
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .line 457
    .local v0, "result":Landroid/icu/text/DisplayContext;
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 458
    .local v4, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v5

    if-ne v5, p1, :cond_12

    .line 459
    move-object v0, v4

    .line 460
    goto :goto_15

    .line 457
    .end local v4    # "context":Landroid/icu/text/DisplayContext;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 463
    :cond_15
    :goto_15
    return-object v0
.end method

.method public whitelist test-api getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .registers 8

    .line 442
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 443
    .local v0, "result":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 444
    .local v4, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v5

    sget-object v6, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    if-ne v5, v6, :cond_21

    .line 445
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->value()I

    move-result v5

    sget-object v6, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_21

    .line 446
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 447
    goto :goto_24

    .line 443
    .end local v4    # "context":Landroid/icu/text/DisplayContext;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 451
    :cond_24
    :goto_24
    return-object v0
.end method

.method public whitelist test-api getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 518
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/icu/text/LocaleDisplayNames$UiListItem;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 508
    return-object p1
.end method

.method public whitelist test-api keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 513
    return-object p2
.end method

.method public whitelist test-api languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "lang"    # Ljava/lang/String;

    .line 483
    return-object p1
.end method

.method public whitelist test-api localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 468
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "localeId"    # Ljava/lang/String;

    .line 478
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 473
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "region"    # Ljava/lang/String;

    .line 498
    return-object p1
.end method

.method public whitelist test-api scriptDisplayName(I)Ljava/lang/String;
    .registers 3
    .param p1, "scriptCode"    # I

    .line 493
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "script"    # Ljava/lang/String;

    .line 488
    return-object p1
.end method

.method public whitelist test-api variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "variant"    # Ljava/lang/String;

    .line 503
    return-object p1
.end method
