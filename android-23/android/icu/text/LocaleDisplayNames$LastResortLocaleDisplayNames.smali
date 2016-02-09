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
.field private contexts:[Landroid/icu/text/DisplayContext;

.field private locale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    .line 449
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    #@3
    .line 450
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    #@5
    .line 451
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@7
    if-ne p2, v1, :cond_0

    #@9
    .line 452
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@b
    .line 453
    .local v0, "context":Landroid/icu/text/DisplayContext;
    :goto_0
    const/4 v1, 0x1

    #@c
    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v0, v1, v2

    #@11
    iput-object v1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    #@13
    .line 449
    return-void

    #@14
    .line 452
    .end local v0    # "context":Landroid/icu/text/DisplayContext;
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@16
    .restart local v0    # "context":Landroid/icu/text/DisplayContext;
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    #@3
    return-void
.end method

.method private varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 456
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    #@4
    .line 457
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    #@6
    .line 458
    array-length v0, p2

    #@7
    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    #@9
    iput-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    #@b
    .line 459
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    #@d
    array-length v1, p2

    #@e
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 456
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    #@3
    return-void
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 6
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    #@0
    .prologue
    .line 483
    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@2
    .line 484
    .local v1, "result":Landroid/icu/text/DisplayContext;
    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    #@4
    const/4 v2, 0x0

    #@5
    array-length v4, v3

    #@6
    :goto_0
    if-ge v2, v4, :cond_0

    #@8
    aget-object v0, v3, v2

    #@a
    .line 485
    .local v0, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@d
    move-result-object v5

    #@e
    if-ne v5, p1, :cond_1

    #@10
    .line 486
    move-object v1, v0

    #@11
    .line 490
    .end local v0    # "context":Landroid/icu/text/DisplayContext;
    :cond_0
    return-object v1

    #@12
    .line 484
    .restart local v0    # "context":Landroid/icu/text/DisplayContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 7

    #@0
    .prologue
    .line 469
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    .line 470
    .local v1, "result":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    #@4
    const/4 v2, 0x0

    #@5
    array-length v4, v3

    #@6
    :goto_0
    if-ge v2, v4, :cond_0

    #@8
    aget-object v0, v3, v2

    #@a
    .line 471
    .local v0, "context":Landroid/icu/text/DisplayContext;
    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@d
    move-result-object v5

    #@e
    sget-object v6, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@10
    if-ne v5, v6, :cond_1

    #@12
    .line 472
    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->value()I

    #@15
    move-result v5

    #@16
    sget-object v6, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@18
    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->ordinal()I

    #@1b
    move-result v6

    #@1c
    if-ne v5, v6, :cond_1

    #@1e
    .line 473
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@20
    .line 478
    .end local v0    # "context":Landroid/icu/text/DisplayContext;
    :cond_0
    return-object v1

    #@21
    .line 470
    .restart local v0    # "context":Landroid/icu/text/DisplayContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 545
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    return-object p1
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 540
    return-object p2
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    #@0
    .prologue
    .line 510
    return-object p1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 500
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 525
    return-object p1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p1, "scriptCode"    # I

    #@0
    .prologue
    .line 520
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 515
    return-object p1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 530
    return-object p1
.end method
