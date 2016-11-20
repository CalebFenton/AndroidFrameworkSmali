.class public Landroid/icu/text/SpoofChecker$Builder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;,
        Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;
    }
.end annotation


# instance fields
.field final fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field final fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 375
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@5
    const/4 v1, 0x0

    #@6
    const v2, 0x10ffff

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@c
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@e
    .line 377
    new-instance v0, Ljava/util/LinkedHashSet;

    #@10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@13
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@15
    .line 386
    const/4 v0, -0x1

    #@16
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@18
    .line 387
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@1b
    .line 388
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@1d
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@1f
    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/SpoofChecker;)V
    .locals 3
    .param p1, "src"    # Landroid/icu/text/SpoofChecker;

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 375
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@5
    const/4 v1, 0x0

    #@6
    const v2, 0x10ffff

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@c
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@e
    .line 377
    new-instance v0, Ljava/util/LinkedHashSet;

    #@10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@13
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@15
    .line 398
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get2(Landroid/icu/text/SpoofChecker;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@1b
    .line 399
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get4(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@21
    .line 403
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@23
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@2a
    .line 404
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@2c
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get1(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@33
    .line 405
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get3(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@39
    .line 397
    return-void
.end method

.method private addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V
    .locals 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "allowedChars"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 565
    invoke-static {p1}, Landroid/icu/lang/UScript;->getCode(Landroid/icu/util/ULocale;)[I

    #@3
    move-result-object v1

    #@4
    .line 566
    .local v1, "scripts":[I
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@6
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@9
    .line 568
    .local v2, "tmpSet":Landroid/icu/text/UnicodeSet;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@b
    if-ge v0, v3, :cond_0

    #@d
    .line 569
    aget v3, v1, v0

    #@f
    const/16 v4, 0x100a

    #@11
    invoke-virtual {v2, v4, v3}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@14
    .line 570
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@17
    .line 568
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/icu/text/SpoofChecker;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 414
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 415
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData;->getDefault()Landroid/icu/text/SpoofChecker$SpoofData;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@b
    .line 428
    :cond_0
    new-instance v0, Landroid/icu/text/SpoofChecker;

    #@d
    invoke-direct {v0, v2}, Landroid/icu/text/SpoofChecker;-><init>(Landroid/icu/text/SpoofChecker;)V

    #@10
    .line 429
    .local v0, "result":Landroid/icu/text/SpoofChecker;
    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@12
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set2(Landroid/icu/text/SpoofChecker;I)I

    #@15
    .line 430
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@17
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set4(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;

    #@1a
    .line 431
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@1c
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/icu/text/UnicodeSet;

    #@22
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set0(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@25
    .line 432
    invoke-static {v0}, Landroid/icu/text/SpoofChecker;->-get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@2c
    .line 433
    new-instance v1, Ljava/util/HashSet;

    #@2e
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@30
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@33
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set1(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;

    #@36
    .line 434
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@38
    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set3(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@3b
    .line 435
    return-object v0
.end method

.method public setAllowedChars(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1
    .param p1, "chars"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@5
    .line 589
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@a
    .line 590
    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@c
    or-int/lit8 v0, v0, 0x40

    #@e
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@10
    .line 591
    return-object p0
.end method

.method public setAllowedJavaLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    .local p1, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@9
    .line 555
    .local v2, "ulocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/icu/util/ULocale;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "locale$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Locale;

    #@19
    .line 556
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 558
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/icu/text/SpoofChecker$Builder;->setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "locales":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    const/16 v4, 0x100a

    #@2
    const/4 v5, 0x0

    #@3
    .line 511
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@5
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@8
    .line 513
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "locale$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/icu/util/ULocale;

    #@18
    .line 516
    .local v0, "locale":Landroid/icu/util/ULocale;
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-direct {p0, v0, v3}, Landroid/icu/text/SpoofChecker$Builder;->addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V

    #@1d
    goto :goto_0

    #@1e
    .line 521
    .end local v0    # "locale":Landroid/icu/util/ULocale;
    :cond_0
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@20
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@23
    .line 522
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 523
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2b
    const v4, 0x10ffff

    #@2e
    invoke-virtual {v3, v5, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@31
    .line 524
    iget v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@33
    and-int/lit8 v3, v3, -0x41

    #@35
    iput v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@37
    .line 525
    return-object p0

    #@38
    .line 530
    :cond_1
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@3a
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3d
    .line 531
    .local v2, "tempSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2, v4, v5}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@40
    .line 532
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@42
    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@45
    .line 533
    const/4 v3, 0x1

    #@46
    invoke-virtual {v2, v4, v3}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@49
    .line 534
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@4b
    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@4e
    .line 537
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@50
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@53
    .line 538
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    #@55
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@58
    .line 539
    iget v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@5a
    or-int/lit8 v3, v3, 0x40

    #@5c
    iput v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@5e
    .line 540
    return-object p0
.end method

.method public setChecks(I)Landroid/icu/text/SpoofChecker$Builder;
    .locals 2
    .param p1, "checks"    # I

    #@0
    .prologue
    .line 476
    and-int/lit8 v0, p1, 0x0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Bad Spoof Checks value."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 479
    :cond_0
    and-int/lit8 v0, p1, -0x1

    #@f
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@11
    .line 480
    return-object p0
.end method

.method public setData(Ljava/io/Reader;Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1
    .param p1, "confusables"    # Ljava/io/Reader;
    .param p2, "confusablesWholeScript"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData;

    #@2
    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>()V

    #@5
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@7
    .line 460
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@9
    invoke-static {p1, v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    #@c
    .line 461
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@e
    invoke-static {p2, v0}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->buildWSConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    #@11
    .line 462
    return-object p0
.end method

.method public setRestrictionLevel(Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1
    .param p1, "restrictionLevel"    # Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 605
    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    .line 606
    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    #@8
    .line 607
    return-object p0
.end method
