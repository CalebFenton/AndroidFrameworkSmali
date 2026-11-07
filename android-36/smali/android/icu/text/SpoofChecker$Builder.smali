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
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    }
.end annotation


# instance fields
.field final greylist-max-o fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field final greylist-max-o fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o fChecks:I

.field private greylist-max-o fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field greylist-max-o fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 464
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    .line 473
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 475
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 476
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/SpoofChecker;)V
    .registers 5
    .param p1, "src"    # Landroid/icu/text/SpoofChecker;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 464
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    .line 485
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfChecks(Landroid/icu/text/SpoofChecker;)I

    move-result v0

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 486
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfSpoofData(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 490
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfAllowedCharsSet(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 491
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfAllowedLocales(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 492
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfRestrictionLevel(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 493
    return-void
.end method

.method private greylist-max-o addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "allowedChars"    # Landroid/icu/text/UnicodeSet;

    .line 697
    invoke-static {p1}, Landroid/icu/lang/UScript;->getCode(Landroid/icu/util/ULocale;)[I

    move-result-object v0

    .line 698
    .local v0, "scripts":[I
    if-eqz v0, :cond_1c

    .line 699
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 700
    .local v1, "tmpSet":Landroid/icu/text/UnicodeSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_1c

    .line 701
    const/16 v3, 0x100a

    aget v4, v0, v2

    invoke-virtual {v1, v3, v4}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 702
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 708
    .end local v1    # "tmpSet":Landroid/icu/text/UnicodeSet;
    .end local v2    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/icu/text/SpoofChecker;
    .registers 4

    .line 502
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-nez v0, :cond_a

    .line 504
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData;->getDefault()Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 516
    :cond_a
    new-instance v0, Landroid/icu/text/SpoofChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker;-><init>(Landroid/icu/text/SpoofChecker-IA;)V

    .line 517
    .local v0, "result":Landroid/icu/text/SpoofChecker;
    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fputfChecks(Landroid/icu/text/SpoofChecker;I)V

    .line 518
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fputfSpoofData(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)V

    .line 519
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fputfAllowedCharsSet(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)V

    .line 520
    invoke-static {v0}, Landroid/icu/text/SpoofChecker;->-$$Nest$fgetfAllowedCharsSet(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 521
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fputfAllowedLocales(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)V

    .line 522
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-$$Nest$fputfRestrictionLevel(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)V

    .line 523
    return-object v0
.end method

.method public greylist-max-o setAllowedChars(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 3
    .param p1, "chars"    # Landroid/icu/text/UnicodeSet;

    .line 724
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 725
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 726
    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 727
    return-object p0
.end method

.method public greylist-max-o setAllowedJavaLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 686
    .local p1, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 687
    .local v0, "ulocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/icu/util/ULocale;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 688
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_d

    .line 690
    :cond_21
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$Builder;->setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 642
    .local p1, "locales":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 644
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 647
    .local v1, "locale":Landroid/icu/util/ULocale;
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/SpoofChecker$Builder;->addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V

    .line 648
    .end local v1    # "locale":Landroid/icu/util/ULocale;
    goto :goto_9

    .line 652
    :cond_1b
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 653
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    .line 654
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    const v2, 0x10ffff

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 655
    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 656
    return-object p0

    .line 661
    :cond_36
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 662
    .local v0, "tempSet":Landroid/icu/text/UnicodeSet;
    const/16 v2, 0x100a

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 663
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 665
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 668
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 669
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 670
    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 671
    return-object p0
.end method

.method public greylist-max-o setChecks(I)Landroid/icu/text/SpoofChecker$Builder;
    .registers 3
    .param p1, "checks"    # I

    .line 607
    nop

    .line 610
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 611
    return-object p0
.end method

.method public greylist-max-o setData(Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 4
    .param p1, "confusables"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Landroid/icu/text/SpoofChecker-IA;)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 544
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {p1, v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    .line 545
    return-object p0
.end method

.method public greylist-max-o setData(Ljava/io/Reader;Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 3
    .param p1, "confusables"    # Ljava/io/Reader;
    .param p2, "confusablesWholeScript"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker$Builder;->setData(Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;

    .line 564
    return-object p0
.end method

.method public greylist-max-o setRestrictionLevel(Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$Builder;
    .registers 3
    .param p1, "restrictionLevel"    # Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 741
    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 742
    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit16 v0, v0, 0x90

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 743
    return-object p0
.end method
