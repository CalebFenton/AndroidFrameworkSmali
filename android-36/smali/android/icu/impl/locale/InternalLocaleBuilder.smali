.class public final Landroid/icu/impl/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;,
        Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o JDKIMPL:Z = false

.field private static final greylist-max-o PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private greylist-max-o _extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _language:Ljava/lang/String;

.field private greylist-max-o _region:Ljava/lang/String;

.field private greylist-max-o _script:Ljava/lang/String;

.field private greylist-max-o _uattributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _ukeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _variant:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    nop

    .line 31
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    sput-object v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private greylist-max-o checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "variants"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    .line 548
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_5
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 550
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 552
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    return v2

    .line 554
    :cond_1a
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 555
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_5

    .line 556
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method static greylist-max-o removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "privuseVal"    # Ljava/lang/String;

    .line 516
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v1, -0x1

    .line 522
    .local v1, "prefixStart":I
    const/4 v2, 0x0

    .line 523
    .local v2, "sawPrivuseVar":Z
    :goto_9
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_28

    .line 524
    const/4 v3, -0x1

    if-eq v1, v3, :cond_14

    .line 527
    const/4 v2, 0x1

    .line 528
    goto :goto_28

    .line 530
    :cond_14
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lvariant"

    invoke-static {v3, v4}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 531
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v1

    .line 533
    :cond_24
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_9

    .line 535
    :cond_28
    :goto_28
    if-nez v2, :cond_2b

    .line 536
    return-object p0

    .line 539
    :cond_2b
    nop

    .line 540
    if-nez v1, :cond_30

    const/4 v3, 0x0

    goto :goto_37

    :cond_30
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_37
    return-object v3
.end method

.method private greylist-max-o setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 11
    .param p2, "privateuse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/locale/InternalLocaleBuilder;"
        }
    .end annotation

    .line 287
    .local p1, "bcpExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 289
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5d

    .line 290
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 291
    .local v2, "processedExtensions":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .local v4, "bcpExt":Ljava/lang/String;
    new-instance v5, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v5, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 294
    .local v5, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 296
    invoke-virtual {v5}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 297
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_5c

    .line 299
    :cond_47
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v6, :cond_53

    .line 300
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 302
    :cond_53
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v4    # "bcpExt":Ljava/lang/String;
    .end local v5    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    :cond_5c
    :goto_5c
    goto :goto_1a

    .line 307
    .end local v2    # "processedExtensions":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    :cond_5d
    if-eqz p2, :cond_83

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_83

    .line 309
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v2, :cond_71

    .line 310
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 312
    :cond_71
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {v3, v0}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_83
    return-object p0
.end method

.method private greylist-max-o setUnicodeLocaleExtension(Ljava/lang/String;)V
    .registers 12
    .param p1, "subtags"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_9

    .line 567
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 569
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    .line 570
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 573
    :cond_12
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_19
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_48

    .line 577
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 578
    goto :goto_48

    .line 580
    :cond_2b
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v1, :cond_36

    .line 581
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 583
    :cond_36
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_19

    .line 588
    :cond_48
    :goto_48
    const/4 v1, 0x0

    .line 590
    .local v1, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    const/4 v3, -0x1

    .line 591
    .local v3, "typeStart":I
    const/4 v4, -0x1

    .line 592
    .local v4, "typeEnd":I
    :goto_4b
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_e5

    .line 593
    const-string v5, ""

    const/4 v6, -0x1

    if-eqz v1, :cond_9d

    .line 594
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 596
    nop

    .line 597
    if-ne v3, v6, :cond_65

    move-object v7, v5

    goto :goto_69

    :cond_65
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 598
    .local v7, "type":Ljava/lang/String;
    :goto_69
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v8, :cond_74

    .line 599
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 601
    :cond_74
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v8, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 605
    .local v8, "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v9, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const/4 v9, 0x0

    goto :goto_8d

    :cond_8c
    move-object v9, v8

    .line 606
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v9, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :goto_8d
    move v1, v6

    .end local v4    # "typeEnd":I
    .local v1, "typeEnd":I
    move v3, v6

    .line 607
    .end local v8    # "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    move v4, v1

    move-object v1, v9

    goto :goto_bf

    .line 608
    .end local v7    # "type":Ljava/lang/String;
    .end local v9    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v1, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .restart local v4    # "typeEnd":I
    :cond_92
    if-ne v3, v6, :cond_98

    .line 609
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    .line 611
    :cond_98
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    goto :goto_bf

    .line 613
    :cond_9d
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 616
    new-instance v7, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 617
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v7, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v1, :cond_be

    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 619
    const/4 v1, 0x0

    .end local v7    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .restart local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_bf

    .line 623
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .restart local v7    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_be
    move-object v1, v7

    .end local v7    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .restart local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_bf
    :goto_bf
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_e0

    .line 624
    if-eqz v1, :cond_e5

    .line 626
    nop

    .line 627
    if-ne v3, v6, :cond_cb

    goto :goto_cf

    :cond_cb
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, "type":Ljava/lang/String;
    :goto_cf
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v6, :cond_da

    .line 629
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 631
    :cond_da
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 636
    .end local v5    # "type":Ljava/lang/String;
    :cond_e0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_4b

    .line 638
    :cond_e5
    :goto_e5
    return-void
.end method


# virtual methods
.method public blacklist addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 93
    if-eqz p1, :cond_1f

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 97
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v0, :cond_14

    .line 98
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 100
    :cond_14
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0

    .line 94
    :cond_1f
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clear()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 2

    .line 442
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 443
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 444
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 445
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 447
    return-object p0
.end method

.method public blacklist clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 452
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 454
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_12

    .line 455
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 457
    :cond_12
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_1b

    .line 458
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 460
    :cond_1b
    return-object p0
.end method

.method public blacklist getBaseLocale()Landroid/icu/impl/locale/BaseLocale;
    .registers 13

    .line 464
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 465
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 466
    .local v1, "script":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 467
    .local v2, "region":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 471
    .local v3, "variant":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v4, :cond_61

    .line 472
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    sget-object v5, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    .local v4, "privuse":Ljava/lang/String;
    if-eqz v4, :cond_61

    .line 474
    new-instance v5, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v6, "-"

    invoke-direct {v5, v4, v6}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v5, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v7, 0x0

    .line 476
    .local v7, "sawPrefix":Z
    const/4 v8, -0x1

    .line 477
    .local v8, "privVarStart":I
    :goto_21
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_3f

    .line 478
    if-eqz v7, :cond_2e

    .line 479
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v8

    .line 480
    goto :goto_3f

    .line 482
    :cond_2e
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v9

    const-string v10, "lvariant"

    invoke-static {v9, v10}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 483
    const/4 v7, 0x1

    .line 485
    :cond_3b
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_21

    .line 487
    :cond_3f
    :goto_3f
    const/4 v9, -0x1

    if-eq v8, v9, :cond_61

    .line 488
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const-string v11, "_"

    if-eqz v10, :cond_52

    .line 490
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_52
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    .end local v4    # "privuse":Ljava/lang/String;
    .end local v5    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v7    # "sawPrefix":Z
    .end local v8    # "privVarStart":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_61
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v4

    return-object v4
.end method

.method public blacklist getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;
    .registers 5

    .line 502
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_25

    :cond_c
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 503
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_25

    :cond_18
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 504
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_31

    .line 508
    :cond_25
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0

    .line 505
    :cond_31
    :goto_31
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    return-object v0
.end method

.method public blacklist removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_17

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 108
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_16

    .line 109
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_16
    return-object p0

    .line 106
    :cond_17
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "singleton"    # C
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    .line 150
    .local v0, "isBcpPrivateuse":Z
    if-nez v0, :cond_26

    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_26

    .line 151
    :cond_d
    new-instance v1, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ill-formed extension key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_26
    :goto_26
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v1, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v1, 0x1

    .line 155
    .local v1, "remove":Z
    :goto_32
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 157
    .local v2, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    if-eqz v1, :cond_69

    .line 158
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 160
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v3, :cond_4c

    .line 161
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 163
    :cond_4c
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v3, :cond_cd

    .line 164
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_cd

    .line 167
    :cond_57
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v3, :cond_cd

    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 168
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 173
    :cond_69
    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "val":Ljava/lang/String;
    new-instance v5, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v5, v3, v4}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v5, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_76
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 176
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "s":Ljava/lang/String;
    if-eqz v0, :cond_87

    .line 179
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v6

    .local v6, "validSubtag":Z
    goto :goto_8b

    .line 181
    .end local v6    # "validSubtag":Z
    :cond_87
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    .line 183
    .restart local v6    # "validSubtag":Z
    :goto_8b
    if-eqz v6, :cond_91

    .line 186
    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 187
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    goto :goto_76

    .line 184
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v6    # "validSubtag":Z
    :cond_91
    new-instance v7, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ill-formed extension value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 189
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    :cond_ae
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 190
    invoke-direct {p0, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_cd

    .line 192
    :cond_bc
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v4, :cond_c8

    .line 193
    new-instance v4, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 195
    :cond_c8
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v3    # "val":Ljava/lang/String;
    .end local v5    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_cd
    :goto_cd
    return-object p0
.end method

.method public blacklist setExtensions(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 13
    .param p1, "subtags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 205
    if-eqz p1, :cond_118

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_118

    .line 209
    :cond_a
    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v2, 0x0

    .line 213
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 215
    .local v3, "privateuse":Ljava/lang/String;
    const/4 v4, 0x0

    .line 219
    .local v4, "parsed":I
    :goto_1a
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_88

    .line 220
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 222
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 223
    .local v6, "start":I
    move-object v7, v5

    .line 224
    .local v7, "singleton":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 227
    :goto_37
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_56

    .line 228
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 230
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 235
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_37

    .line 238
    :cond_56
    if-lt v4, v6, :cond_69

    .line 242
    if-nez v2, :cond_61

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v9

    .line 245
    :cond_61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "singleton":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1a

    .line 239
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v7    # "singleton":Ljava/lang/String;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_69
    new-instance v1, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incomplete extension \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 250
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "singleton":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_88
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_e8

    .line 251
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 253
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 254
    .restart local v6    # "start":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 257
    :goto_a4
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_c4

    .line 258
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b5

    .line 260
    goto :goto_c4

    .line 262
    :cond_b5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 265
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_a4

    .line 267
    :cond_c4
    :goto_c4
    if-le v4, v6, :cond_cb

    .line 270
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e8

    .line 268
    :cond_cb
    new-instance v1, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incomplete privateuse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 275
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "start":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_e8
    :goto_e8
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 279
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    move-result-object v1

    return-object v1

    .line 276
    :cond_f3
    new-instance v1, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ill-formed extension subtags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 206
    .end local v0    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v2    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "privateuse":Ljava/lang/String;
    .end local v4    # "parsed":I
    :cond_118
    :goto_118
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 207
    return-object p0
.end method

.method public blacklist setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 42
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 45
    :cond_9
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_30

    .line 46
    :cond_12
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 43
    :cond_2c
    :goto_2c
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 50
    :goto_30
    return-object p0
.end method

.method public blacklist setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 7
    .param p1, "langtag"    # Landroid/icu/impl/locale/LanguageTag;

    .line 322
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 323
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1b

    .line 324
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_29

    .line 326
    :cond_1b
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "language":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 328
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 331
    .end local v0    # "language":Ljava/lang/String;
    :cond_29
    :goto_29
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v0, "bcpVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_71

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .local v2, "var":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6b

    .line 339
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 341
    .end local v1    # "i":I
    :cond_6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 344
    .end local v2    # "var":Ljava/lang/StringBuilder;
    :cond_71
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 346
    return-object p0
.end method

.method public blacklist setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 19
    .param p1, "base"    # Landroid/icu/impl/locale/BaseLocale;
    .param p2, "extensions"    # Landroid/icu/impl/locale/LocaleExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "variant":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3a

    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_3a

    .line 385
    :cond_21
    new-instance v6, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 388
    :cond_3a
    :goto_3a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_60

    invoke-static {v3}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    goto :goto_60

    .line 389
    :cond_47
    new-instance v6, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed script: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 392
    :cond_60
    :goto_60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_86

    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    goto :goto_86

    .line 393
    :cond_6d
    new-instance v6, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ill-formed region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 396
    :cond_86
    :goto_86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_af

    .line 397
    const-string v6, "_"

    invoke-direct {v0, v5, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 398
    .local v6, "errIdx":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_96

    goto :goto_af

    .line 399
    :cond_96
    new-instance v7, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ill-formed variant: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 405
    .end local v6    # "errIdx":I
    :cond_af
    :goto_af
    iput-object v2, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 406
    iput-object v3, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 407
    iput-object v4, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 408
    iput-object v5, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 409
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 411
    if-nez v1, :cond_be

    const/4 v6, 0x0

    goto :goto_c2

    :cond_be
    invoke-virtual {v1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v6

    .line 412
    .local v6, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :goto_c2
    if-eqz v6, :cond_15a

    .line 414
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    .line 415
    .local v8, "key":Ljava/lang/Character;
    invoke-virtual {v1, v8}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v9

    .line 416
    .local v9, "e":Landroid/icu/impl/locale/Extension;
    instance-of v10, v9, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const/4 v11, 0x4

    if-eqz v10, :cond_13a

    .line 417
    move-object v10, v9

    check-cast v10, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 418
    .local v10, "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    invoke-virtual {v10}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 419
    .local v13, "uatr":Ljava/lang/String;
    iget-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v14, :cond_ff

    .line 420
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v11}, Ljava/util/HashSet;-><init>(I)V

    iput-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 422
    :cond_ff
    iget-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v15, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v15, v13}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v13    # "uatr":Ljava/lang/String;
    goto :goto_e8

    .line 424
    :cond_10a
    invoke-virtual {v10}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_112
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_139

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 425
    .local v13, "ukey":Ljava/lang/String;
    iget-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v14, :cond_129

    .line 426
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 428
    :cond_129
    iget-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    new-instance v15, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v15, v13}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v13    # "ukey":Ljava/lang/String;
    const/4 v11, 0x4

    goto :goto_112

    .line 430
    .end local v10    # "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    :cond_139
    goto :goto_158

    .line 431
    :cond_13a
    iget-object v10, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v10, :cond_146

    .line 432
    new-instance v10, Ljava/util/HashMap;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 434
    :cond_146
    iget-object v10, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v11, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v12

    invoke-direct {v11, v12}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v9}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .end local v8    # "key":Ljava/lang/Character;
    .end local v9    # "e":Landroid/icu/impl/locale/Extension;
    :goto_158
    goto/16 :goto_c8

    .line 438
    :cond_15a
    return-object v0
.end method

.method public blacklist setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 69
    :cond_9
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    goto :goto_30

    .line 70
    :cond_12
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 67
    :cond_2c
    :goto_2c
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 74
    :goto_30
    return-object p0
.end method

.method public blacklist setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 5
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 57
    :cond_9
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    goto :goto_30

    .line 58
    :cond_12
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 55
    :cond_2c
    :goto_2c
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 62
    :goto_30
    return-object p0
.end method

.method public blacklist setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 119
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "cikey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    if-nez p2, :cond_17

    .line 121
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v1, :cond_6c

    .line 123
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 126
    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5b

    .line 128
    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "tp":Ljava/lang/String;
    new-instance v3, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v3, v1, v2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v3, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_2a
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 132
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 136
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 137
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_2a

    .line 134
    .restart local v2    # "s":Ljava/lang/String;
    :cond_3e
    new-instance v4, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 139
    .end local v1    # "tp":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_5b
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v1, :cond_67

    .line 140
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 142
    :cond_67
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_6c
    :goto_6c
    return-object p0

    .line 116
    .end local v0    # "cikey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_6d
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .registers 7
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    .line 82
    :cond_9
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "var":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "errIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 87
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    goto :goto_38

    .line 85
    :cond_1b
    new-instance v2, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ill-formed variant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 79
    .end local v0    # "var":Ljava/lang/String;
    .end local v1    # "errIdx":I
    :cond_34
    :goto_34
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 89
    :goto_38
    return-object p0
.end method
