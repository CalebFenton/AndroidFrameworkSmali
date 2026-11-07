.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static greylist-max-o available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o instances:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final greylist-max-o currencyCode:Ljava/lang/String;

.field private final transient greylist-max-o icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/Currency;)V
    .registers 3
    .param p1, "icuCurrency"    # Landroid/icu/util/Currency;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    .line 263
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public static whitelist test-api getAvailableCurrencies()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .line 447
    const-class v0, Ljava/util/Currency;

    monitor-enter v0

    .line 448
    :try_start_3
    sget-object v1, Ljava/util/Currency;->available:Ljava/util/HashSet;

    if-nez v1, :cond_40

    .line 492
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Ljava/util/Currency;->available:Ljava/util/HashSet;

    .line 494
    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v1

    .line 495
    .local v1, "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Currency;

    .line 496
    .local v3, "icuCurrency":Landroid/icu/util/Currency;
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    .line 497
    .local v4, "currency":Ljava/util/Currency;
    if-nez v4, :cond_39

    .line 498
    new-instance v5, Ljava/util/Currency;

    invoke-direct {v5, v3}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    move-object v4, v5

    .line 499
    sget-object v5, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, v4, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_39
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    nop

    .end local v3    # "icuCurrency":Landroid/icu/util/Currency;
    .end local v4    # "currency":Ljava/util/Currency;
    goto :goto_16

    .line 505
    .end local v1    # "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4a

    .line 508
    sget-object v0, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 509
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    return-object v0

    .line 505
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .registers 5
    .param p0, "currencyCode"    # Ljava/lang/String;

    .line 279
    sget-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 280
    .local v0, "instance":Ljava/util/Currency;
    if-eqz v0, :cond_b

    .line 281
    return-object v0

    .line 283
    :cond_b
    nop

    .line 284
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 285
    .local v1, "icuInstance":Landroid/icu/util/Currency;
    if-nez v1, :cond_14

    .line 286
    const/4 v2, 0x0

    return-object v2

    .line 326
    :cond_14
    new-instance v2, Ljava/util/Currency;

    invoke-direct {v2, v1}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 328
    .local v2, "currencyVal":Ljava/util/Currency;
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Currency;

    .line 329
    if-eqz v0, :cond_26

    move-object v3, v0

    goto :goto_27

    :cond_26
    move-object v3, v2

    :goto_27
    return-object v3
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .registers 8
    .param p0, "locale"    # Ljava/util/Locale;

    .line 361
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "override":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 364
    :try_start_8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v1

    .line 365
    :catch_13
    move-exception v1

    .line 412
    :cond_14
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "country":Ljava/lang/String;
    nop

    .line 414
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 418
    .local v2, "icuInstance":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "EURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 420
    const-string v4, "PREEURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 421
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    :cond_56
    invoke-static {v1}, Llibcore/icu/ICU;->isIsoCountry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 427
    invoke-static {v1}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "currencyCode":Ljava/lang/String;
    if-eqz v4, :cond_76

    if-eqz v2, :cond_76

    .line 429
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XXX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    goto :goto_76

    .line 432
    :cond_71
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    return-object v5

    .line 430
    :cond_76
    :goto_76
    const/4 v5, 0x0

    return-object v5

    .line 425
    .end local v4    # "currencyCode":Ljava/lang/String;
    :cond_78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported ISO 3166 country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 701
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCurrencyCode()Ljava/lang/String;
    .registers 2

    .line 518
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDefaultFractionDigits()I
    .registers 3

    .line 589
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 590
    const/4 v0, -0x1

    return v0

    .line 592
    :cond_10
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 2

    .line 652
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 681
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNumericCode()I
    .registers 2

    .line 605
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNumericCodeAsString()Ljava/lang/String;
    .registers 5

    .line 620
    invoke-virtual {p0}, Ljava/util/Currency;->getNumericCode()I

    move-result v0

    .line 626
    .local v0, "numericCode":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_22

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    const/16 v3, 0xa

    if-ge v0, v3, :cond_19

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    :cond_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 634
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSymbol()Ljava/lang/String;
    .registers 2

    .line 537
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 568
    if-eqz p1, :cond_9

    .line 571
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 569
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 693
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
