.class public final Lsun/util/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;,
        Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private uattributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private ukeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const-class v0, Lsun/util/locale/InternalLocaleBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@b
    .line 44
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@d
    const-string/jumbo v1, "x"

    #@10
    const/4 v2, 0x0

    #@11
    invoke-direct {v0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    #@14
    .line 43
    sput-object v0, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@16
    .line 41
    return-void

    #@17
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@8
    .line 47
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@d
    .line 48
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@12
    .line 49
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@17
    .line 56
    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "variants"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    .line 576
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    #@2
    invoke-direct {v0, p1, p2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 577
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 578
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 579
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 580
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 582
    :cond_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@1d
    goto :goto_0

    #@1e
    .line 584
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    #@1f
    return v2
.end method

.method static removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "privuseVal"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 544
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    #@4
    const-string/jumbo v5, "-"

    #@7
    invoke-direct {v0, p0, v5}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 549
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v1, -0x1

    #@b
    .line 550
    .local v1, "prefixStart":I
    const/4 v2, 0x0

    #@c
    .line 551
    .local v2, "sawPrivuseVar":Z
    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_0

    #@12
    .line 552
    const/4 v5, -0x1

    #@13
    if-eq v1, v5, :cond_1

    #@15
    .line 555
    const/4 v2, 0x1

    #@16
    .line 563
    :cond_0
    if-nez v2, :cond_3

    #@18
    .line 564
    return-object p0

    #@19
    .line 558
    :cond_1
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    const-string/jumbo v6, "lvariant"

    #@20
    invoke-static {v5, v6}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 559
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@29
    move-result v1

    #@2a
    .line 561
    :cond_2
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@2d
    goto :goto_0

    #@2e
    .line 567
    :cond_3
    sget-boolean v5, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@30
    if-nez v5, :cond_6

    #@32
    if-eqz v1, :cond_4

    #@34
    if-le v1, v3, :cond_5

    #@36
    :cond_4
    :goto_1
    if-nez v3, :cond_6

    #@38
    new-instance v3, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@3d
    throw v3

    #@3e
    :cond_5
    move v3, v4

    #@3f
    goto :goto_1

    #@40
    .line 568
    :cond_6
    if-nez v1, :cond_7

    #@42
    const/4 v3, 0x0

    #@43
    :goto_2
    return-object v3

    #@44
    :cond_7
    add-int/lit8 v3, v1, -0x1

    #@46
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    goto :goto_2
.end method

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 8
    .param p2, "privateuse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lsun/util/locale/InternalLocaleBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "bcpExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 313
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    #@5
    .line 315
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/List;)Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_3

    #@b
    .line 316
    new-instance v2, Ljava/util/HashSet;

    #@d
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    #@14
    .line 317
    .local v2, "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "bcpExt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_3

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    .line 318
    .local v0, "bcpExt":Ljava/lang/String;
    new-instance v3, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@26
    invoke-direct {v3, v0, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    #@29
    .line 320
    .local v3, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_0

    #@2f
    .line 322
    invoke-virtual {v3}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@32
    move-result v4

    #@33
    invoke-static {v4}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {p0, v4}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    #@40
    .line 331
    :cond_0
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 325
    :cond_1
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@46
    if-nez v4, :cond_2

    #@48
    .line 326
    new-instance v4, Ljava/util/HashMap;

    #@4a
    const/4 v5, 0x4

    #@4b
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@4e
    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@50
    .line 328
    :cond_2
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@52
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_1

    #@5a
    .line 334
    .end local v0    # "bcpExt":Ljava/lang/String;
    .end local v1    # "bcpExt$iterator":Ljava/util/Iterator;
    .end local v2    # "done":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    .end local v3    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    :cond_3
    if-eqz p2, :cond_5

    #@5c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5f
    move-result v4

    #@60
    if-lez v4, :cond_5

    #@62
    .line 336
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@64
    if-nez v4, :cond_4

    #@66
    .line 337
    new-instance v4, Ljava/util/HashMap;

    #@68
    const/4 v5, 0x1

    #@69
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@6c
    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@6e
    .line 339
    :cond_4
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@70
    new-instance v5, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@72
    invoke-direct {v5, p2, v6}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V

    #@75
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 342
    :cond_5
    return-object p0
.end method

.method private setUnicodeLocaleExtension(Ljava/lang/String;)V
    .locals 13
    .param p1, "subtags"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v12, 0x4

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v11, -0x1

    #@4
    .line 594
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 595
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@a
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    #@d
    .line 597
    :cond_0
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 598
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@13
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    #@16
    .line 601
    :cond_1
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    #@18
    const-string/jumbo v8, "-"

    #@1b
    invoke-direct {v0, p1, v8}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 604
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_2

    #@24
    .line 605
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@2b
    move-result v8

    #@2c
    if-nez v8, :cond_4

    #@2e
    .line 616
    :cond_2
    const/4 v1, 0x0

    #@2f
    .line 618
    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    const/4 v5, -0x1

    #@30
    .line 619
    .local v5, "typeStart":I
    const/4 v4, -0x1

    #@31
    .line 620
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v4, "typeEnd":I
    :goto_1
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@34
    move-result v8

    #@35
    if-nez v8, :cond_13

    #@37
    .line 621
    if-eqz v1, :cond_f

    #@39
    .line 622
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_d

    #@43
    .line 624
    sget-boolean v8, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@45
    if-nez v8, :cond_7

    #@47
    if-eq v5, v11, :cond_3

    #@49
    if-eq v4, v11, :cond_6

    #@4b
    :cond_3
    move v8, v6

    #@4c
    :goto_2
    if-nez v8, :cond_7

    #@4e
    new-instance v6, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v6

    #@54
    .line 608
    .end local v4    # "typeEnd":I
    .end local v5    # "typeStart":I
    :cond_4
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@56
    if-nez v8, :cond_5

    #@58
    .line 609
    new-instance v8, Ljava/util/HashSet;

    #@5a
    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    #@5d
    iput-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@5f
    .line 611
    :cond_5
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@61
    new-instance v9, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@63
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@66
    move-result-object v10

    #@67
    invoke-direct {v9, v10}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@6a
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    .line 612
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@70
    goto :goto_0

    #@71
    .restart local v4    # "typeEnd":I
    .restart local v5    # "typeStart":I
    :cond_6
    move v8, v7

    #@72
    .line 624
    goto :goto_2

    #@73
    .line 625
    :cond_7
    if-ne v5, v11, :cond_b

    #@75
    const-string/jumbo v3, ""

    #@78
    .line 626
    .local v3, "type":Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@7a
    if-nez v8, :cond_8

    #@7c
    .line 627
    new-instance v8, Ljava/util/HashMap;

    #@7e
    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    #@81
    iput-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@83
    .line 629
    :cond_8
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@85
    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 632
    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@8a
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-direct {v2, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@91
    .line 633
    .local v2, "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@93
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@96
    move-result v8

    #@97
    if-eqz v8, :cond_c

    #@99
    const/4 v1, 0x0

    #@9a
    .line 634
    :goto_4
    const/4 v4, -0x1

    #@9b
    const/4 v5, -0x1

    #@9c
    .line 651
    .end local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    #@9f
    move-result v8

    #@a0
    if-nez v8, :cond_15

    #@a2
    .line 652
    if-eqz v1, :cond_13

    #@a4
    .line 654
    sget-boolean v8, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@a6
    if-nez v8, :cond_11

    #@a8
    if-eq v5, v11, :cond_a

    #@aa
    if-eq v4, v11, :cond_10

    #@ac
    :cond_a
    :goto_6
    if-nez v6, :cond_11

    #@ae
    new-instance v6, Ljava/lang/AssertionError;

    #@b0
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@b3
    throw v6

    #@b4
    .line 625
    :cond_b
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_3

    #@b9
    .line 633
    .restart local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_c
    move-object v1, v2

    #@ba
    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_4

    #@bb
    .line 636
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v2    # "tmpKey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_d
    if-ne v5, v11, :cond_e

    #@bd
    .line 637
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@c0
    move-result v5

    #@c1
    .line 639
    :cond_e
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@c4
    move-result v4

    #@c5
    goto :goto_5

    #@c6
    .line 641
    :cond_f
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@c9
    move-result-object v8

    #@ca
    invoke-static {v8}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@cd
    move-result v8

    #@ce
    if-eqz v8, :cond_9

    #@d0
    .line 644
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@d2
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@d5
    move-result-object v8

    #@d6
    invoke-direct {v1, v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@d9
    .line 645
    .restart local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@db
    if-eqz v8, :cond_9

    #@dd
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@df
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e2
    move-result v8

    #@e3
    if-eqz v8, :cond_9

    #@e5
    .line 647
    const/4 v1, 0x0

    #@e6
    .local v1, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_5

    #@e7
    .end local v1    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_10
    move v6, v7

    #@e8
    .line 654
    goto :goto_6

    #@e9
    .line 655
    :cond_11
    if-ne v5, v11, :cond_14

    #@eb
    const-string/jumbo v3, ""

    #@ee
    .line 656
    .restart local v3    # "type":Ljava/lang/String;
    :goto_7
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@f0
    if-nez v6, :cond_12

    #@f2
    .line 657
    new-instance v6, Ljava/util/HashMap;

    #@f4
    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(I)V

    #@f7
    iput-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@f9
    .line 659
    :cond_12
    iget-object v6, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@fb
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 592
    .end local v3    # "type":Ljava/lang/String;
    :cond_13
    return-void

    #@ff
    .line 655
    :cond_14
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@102
    move-result-object v3

    #@103
    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_7

    #@104
    .line 664
    .end local v3    # "type":Ljava/lang/String;
    :cond_15
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@107
    goto/16 :goto_1
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 112
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 115
    :cond_0
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@22
    if-nez v0, :cond_1

    #@24
    .line 116
    new-instance v0, Ljava/util/HashSet;

    #@26
    const/4 v1, 0x4

    #@27
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@2a
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@2c
    .line 118
    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@2e
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@30
    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 119
    return-object p0
.end method

.method public clear()Lsun/util/locale/InternalLocaleBuilder;
    .locals 1

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@5
    .line 470
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@a
    .line 471
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@f
    .line 472
    const-string/jumbo v0, ""

    #@12
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@14
    .line 473
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    #@17
    .line 474
    return-object p0
.end method

.method public clearExtensions()Lsun/util/locale/InternalLocaleBuilder;
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 479
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@9
    .line 481
    :cond_0
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 482
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@f
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@12
    .line 484
    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 485
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@18
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@1b
    .line 487
    :cond_2
    return-object p0
.end method

.method public getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 12

    #@0
    .prologue
    .line 491
    iget-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@2
    .line 492
    .local v1, "language":Ljava/lang/String;
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@4
    .line 493
    .local v7, "script":Ljava/lang/String;
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@6
    .line 494
    .local v4, "region":Ljava/lang/String;
    iget-object v8, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@8
    .line 498
    .local v8, "variant":Ljava/lang/String;
    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@a
    if-eqz v9, :cond_2

    #@c
    .line 499
    iget-object v9, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@e
    sget-object v10, Lsun/util/locale/InternalLocaleBuilder;->PRIVATEUSE_KEY:Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@10
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/String;

    #@16
    .line 500
    .local v3, "privuse":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@18
    .line 501
    new-instance v0, Lsun/util/locale/StringTokenIterator;

    #@1a
    const-string/jumbo v9, "-"

    #@1d
    invoke-direct {v0, v3, v9}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 502
    .local v0, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v5, 0x0

    #@21
    .line 503
    .local v5, "sawPrefix":Z
    const/4 v2, -0x1

    #@22
    .line 504
    .local v2, "privVarStart":I
    :goto_0
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@25
    move-result v9

    #@26
    if-nez v9, :cond_0

    #@28
    .line 505
    if-eqz v5, :cond_3

    #@2a
    .line 506
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@2d
    move-result v2

    #@2e
    .line 514
    :cond_0
    const/4 v9, -0x1

    #@2f
    if-eq v2, v9, :cond_2

    #@31
    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    .line 516
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_1

    #@3c
    .line 517
    const-string/jumbo v9, "_"

    #@3f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 519
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    const-string/jumbo v10, "-"

    #@49
    .line 520
    const-string/jumbo v11, "_"

    #@4c
    .line 519
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 521
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    .line 526
    .end local v0    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v2    # "privVarStart":I
    .end local v3    # "privuse":Ljava/lang/String;
    .end local v5    # "sawPrefix":Z
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v1, v7, v4, v8}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    #@5a
    move-result-object v9

    #@5b
    return-object v9

    #@5c
    .line 509
    .restart local v0    # "itr":Lsun/util/locale/StringTokenIterator;
    .restart local v2    # "privVarStart":I
    .restart local v3    # "privuse":Ljava/lang/String;
    .restart local v5    # "sawPrefix":Z
    :cond_3
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    const-string/jumbo v10, "lvariant"

    #@63
    invoke-static {v9, v10}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@66
    move-result v9

    #@67
    if-eqz v9, :cond_4

    #@69
    .line 510
    const/4 v5, 0x1

    #@6a
    .line 512
    :cond_4
    invoke-virtual {v0}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@6d
    goto :goto_0
.end method

.method public getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 530
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@3
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@b
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 531
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@13
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    #@16
    move-result v2

    #@17
    .line 530
    if-eqz v2, :cond_0

    #@19
    .line 532
    return-object v1

    #@1a
    .line 535
    :cond_0
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    #@1c
    iget-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@1e
    iget-object v3, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@20
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@22
    invoke-direct {v0, v2, v3, v4}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    #@25
    .line 536
    .local v0, "lext":Lsun/util/locale/LocaleExtensions;
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->isEmpty()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    move-object v0, v1

    #@2c
    .end local v0    # "lext":Lsun/util/locale/LocaleExtensions;
    :cond_1
    return-object v0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    if-eqz p1, :cond_1

    #@2
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 126
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 127
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@e
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@10
    invoke-direct {v1, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@13
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@16
    .line 129
    :cond_0
    return-object p0

    #@17
    .line 124
    :cond_1
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 10
    .param p1, "singleton"    # C
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@3
    move-result v0

    #@4
    .line 170
    .local v0, "isBcpPrivateuse":Z
    if-nez v0, :cond_0

    #@6
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_3

    #@c
    .line 174
    :cond_0
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    .line 175
    .local v3, "remove":Z
    new-instance v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@12
    invoke-direct {v2, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@15
    .line 177
    .local v2, "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    if-eqz v3, :cond_5

    #@17
    .line 178
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@1a
    move-result v7

    #@1b
    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_4

    #@21
    .line 180
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@23
    if-eqz v7, :cond_1

    #@25
    .line 181
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@27
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    #@2a
    .line 183
    :cond_1
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 184
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@30
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    #@33
    .line 219
    :cond_2
    :goto_0
    return-object p0

    #@34
    .line 171
    .end local v2    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    .end local v3    # "remove":Z
    :cond_3
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    #@36
    new-instance v8, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v9, "Ill-formed extension key: "

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-direct {v7, v8}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v7

    #@4e
    .line 187
    .restart local v2    # "key":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    .restart local v3    # "remove":Z
    :cond_4
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@50
    if-eqz v7, :cond_2

    #@52
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@54
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_2

    #@5a
    .line 188
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@5c
    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    goto :goto_0

    #@60
    .line 193
    :cond_5
    const-string/jumbo v7, "_"

    #@63
    const-string/jumbo v8, "-"

    #@66
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    .line 194
    .local v5, "val":Ljava/lang/String;
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    #@6c
    const-string/jumbo v7, "-"

    #@6f
    invoke-direct {v1, v5, v7}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    .line 195
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@75
    move-result v7

    #@76
    if-nez v7, :cond_8

    #@78
    .line 196
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    .line 198
    .local v4, "s":Ljava/lang/String;
    if-eqz v0, :cond_6

    #@7e
    .line 199
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@81
    move-result v6

    #@82
    .line 203
    .local v6, "validSubtag":Z
    :goto_2
    if-nez v6, :cond_7

    #@84
    .line 204
    new-instance v7, Lsun/util/locale/LocaleSyntaxException;

    #@86
    new-instance v8, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v9, "Ill-formed extension value: "

    #@8e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    .line 205
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@9d
    move-result v9

    #@9e
    .line 204
    invoke-direct {v7, v8, v9}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@a1
    throw v7

    #@a2
    .line 201
    .end local v6    # "validSubtag":Z
    :cond_6
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@a5
    move-result v6

    #@a6
    .restart local v6    # "validSubtag":Z
    goto :goto_2

    #@a7
    .line 207
    :cond_7
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@aa
    goto :goto_1

    #@ab
    .line 210
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    :cond_8
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@ae
    move-result v7

    #@af
    invoke-static {v7}, Lsun/util/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_9

    #@b5
    .line 211
    invoke-direct {p0, v5}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 213
    :cond_9
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@bc
    if-nez v7, :cond_a

    #@be
    .line 214
    new-instance v7, Ljava/util/HashMap;

    #@c0
    const/4 v8, 0x4

    #@c1
    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    #@c4
    iput-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@c6
    .line 216
    :cond_a
    iget-object v7, p0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@c8
    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    goto/16 :goto_0
.end method

.method public setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 11
    .param p1, "subtags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 227
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    #@9
    .line 228
    return-object p0

    #@a
    .line 230
    :cond_0
    const-string/jumbo v8, "_"

    #@d
    const-string/jumbo v9, "-"

    #@10
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 231
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    #@16
    const-string/jumbo v8, "-"

    #@19
    invoke-direct {v1, p1, v8}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 233
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    const/4 v0, 0x0

    #@1d
    .line 234
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1e
    .line 236
    .local v3, "privateuse":Ljava/lang/String;
    const/4 v2, 0x0

    #@1f
    .line 240
    .end local v0    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "parsed":I
    :goto_0
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@22
    move-result v8

    #@23
    if-nez v8, :cond_4

    #@25
    .line 241
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 242
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_4

    #@2f
    .line 243
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@32
    move-result v7

    #@33
    .line 244
    .local v7, "start":I
    move-object v6, v4

    #@34
    .line 245
    .local v6, "singleton":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    .line 247
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@3c
    .line 248
    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3f
    move-result v8

    #@40
    if-nez v8, :cond_1

    #@42
    .line 249
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 250
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_1

    #@4c
    .line 251
    const-string/jumbo v8, "-"

    #@4f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 252
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@59
    move-result v2

    #@5a
    .line 256
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@5d
    goto :goto_1

    #@5e
    .line 259
    :cond_1
    if-ge v2, v7, :cond_2

    #@60
    .line 260
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    #@62
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v10, "Incomplete extension \'"

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    const-string/jumbo v10, "\'"

    #@75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v9

    #@7d
    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@80
    throw v8

    #@81
    .line 264
    :cond_2
    if-nez v0, :cond_3

    #@83
    .line 265
    new-instance v0, Ljava/util/ArrayList;

    #@85
    const/4 v8, 0x4

    #@86
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@89
    .line 267
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v8

    #@8d
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    goto :goto_0

    #@91
    .line 272
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "singleton":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_4
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@94
    move-result v8

    #@95
    if-nez v8, :cond_8

    #@97
    .line 273
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    .line 274
    .restart local v4    # "s":Ljava/lang/String;
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_8

    #@a1
    .line 275
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@a4
    move-result v7

    #@a5
    .line 276
    .restart local v7    # "start":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@aa
    .line 278
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@ad
    .line 279
    :goto_2
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@b0
    move-result v8

    #@b1
    if-nez v8, :cond_5

    #@b3
    .line 280
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    .line 281
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@ba
    move-result v8

    #@bb
    if-nez v8, :cond_6

    #@bd
    .line 289
    :cond_5
    if-gt v2, v7, :cond_7

    #@bf
    .line 290
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    #@c1
    new-instance v9, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v10, "Incomplete privateuse:"

    #@c9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v9

    #@cd
    .line 291
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d0
    move-result-object v10

    #@d1
    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-direct {v8, v9, v7}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@dc
    throw v8

    #@dd
    .line 284
    :cond_6
    const-string/jumbo v8, "-"

    #@e0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v8

    #@e4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 285
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@ea
    move-result v2

    #@eb
    .line 287
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@ee
    goto :goto_2

    #@ef
    .line 294
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    .line 299
    .end local v3    # "privateuse":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_8
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@f6
    move-result v8

    #@f7
    if-nez v8, :cond_9

    #@f9
    .line 300
    new-instance v8, Lsun/util/locale/LocaleSyntaxException;

    #@fb
    new-instance v9, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v10, "Ill-formed extension subtags:"

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    .line 301
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@10a
    move-result v10

    #@10b
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10e
    move-result-object v10

    #@10f
    .line 300
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v9

    #@117
    .line 302
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@11a
    move-result v10

    #@11b
    .line 300
    invoke-direct {v8, v9, v10}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@11e
    throw v8

    #@11f
    .line 305
    :cond_9
    invoke-direct {p0, v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    #@122
    move-result-object v8

    #@123
    return-object v8
.end method

.method public setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 61
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@b
    .line 68
    :goto_0
    return-object p0

    #@c
    .line 63
    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 64
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Ill-formed language: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x0

    #@29
    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2c
    throw v0

    #@2d
    .line 66
    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@2f
    goto :goto_0
.end method

.method public setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 7
    .param p1, "langtag"    # Lsun/util/locale/LanguageTag;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 349
    invoke-virtual {p0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    #@4
    .line 350
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_1

    #@e
    .line 351
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    #@11
    move-result-object v5

    #@12
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/String;

    #@18
    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@1a
    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@20
    .line 359
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@26
    .line 361
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    .line 362
    .local v0, "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_3

    #@30
    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Ljava/lang/String;

    #@38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 364
    .local v4, "var":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3e
    move-result v3

    #@3f
    .line 365
    .local v3, "size":I
    const/4 v1, 0x1

    #@40
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@42
    .line 366
    const-string/jumbo v5, "_"

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Ljava/lang/String;

    #@4f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 365
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_1

    #@55
    .line 353
    .end local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "var":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 354
    .local v2, "lang":Ljava/lang/String;
    const-string/jumbo v5, "und"

    #@5c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v5

    #@60
    if-nez v5, :cond_0

    #@62
    .line 355
    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@64
    goto :goto_0

    #@65
    .line 368
    .end local v2    # "lang":Ljava/lang/String;
    .restart local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "var":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    iput-object v5, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@6b
    .line 371
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "var":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {p1}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-direct {p0, v5, v6}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    #@76
    .line 373
    return-object p0
.end method

.method public setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 19
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .param p2, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v7

    #@4
    .line 378
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    .line 379
    .local v9, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 380
    .local v8, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@f
    move-result-object v15

    #@10
    .line 385
    .local v15, "variant":Ljava/lang/String;
    const-string/jumbo v16, "ja"

    #@13
    move-object/from16 v0, v16

    #@15
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v16

    #@19
    if-eqz v16, :cond_5

    #@1b
    const-string/jumbo v16, "JP"

    #@1e
    move-object/from16 v0, v16

    #@20
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v16

    #@24
    if-eqz v16, :cond_5

    #@26
    const-string/jumbo v16, "JP"

    #@29
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v16

    #@2d
    if-eqz v16, :cond_5

    #@2f
    .line 388
    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@31
    if-nez v16, :cond_0

    #@33
    const-string/jumbo v16, "japanese"

    #@36
    const-string/jumbo v17, "ca"

    #@39
    move-object/from16 v0, p2

    #@3b
    move-object/from16 v1, v17

    #@3d
    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v17

    #@41
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v16

    #@45
    if-nez v16, :cond_0

    #@47
    new-instance v16, Ljava/lang/AssertionError;

    #@49
    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v16

    #@4d
    .line 389
    :cond_0
    const-string/jumbo v15, ""

    #@50
    .line 409
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@53
    move-result v16

    #@54
    if-lez v16, :cond_2

    #@56
    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@59
    move-result v16

    #@5a
    if-eqz v16, :cond_8

    #@5c
    .line 413
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@5f
    move-result v16

    #@60
    if-lez v16, :cond_3

    #@62
    invoke-static {v9}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@65
    move-result v16

    #@66
    if-eqz v16, :cond_9

    #@68
    .line 417
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@6b
    move-result v16

    #@6c
    if-lez v16, :cond_4

    #@6e
    invoke-static {v8}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@71
    move-result v16

    #@72
    if-eqz v16, :cond_a

    #@74
    .line 421
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@77
    move-result v16

    #@78
    if-lez v16, :cond_b

    #@7a
    .line 423
    const-string/jumbo v16, "-"

    #@7d
    const-string/jumbo v17, "_"

    #@80
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v15

    #@84
    .line 424
    const-string/jumbo v16, "_"

    #@87
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, v16

    #@8b
    invoke-direct {v0, v15, v1}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    move-result v3

    #@8f
    .line 425
    .local v3, "errIdx":I
    const/16 v16, -0x1

    #@91
    move/from16 v0, v16

    #@93
    if-eq v3, v0, :cond_b

    #@95
    .line 426
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    #@97
    new-instance v17, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v18, "Ill-formed variant: "

    #@9f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v17

    #@a3
    move-object/from16 v0, v17

    #@a5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v17

    #@a9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v17

    #@ad
    move-object/from16 v0, v16

    #@af
    move-object/from16 v1, v17

    #@b1
    invoke-direct {v0, v1, v3}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@b4
    throw v16

    #@b5
    .line 392
    .end local v3    # "errIdx":I
    :cond_5
    const-string/jumbo v16, "th"

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v16

    #@be
    if-eqz v16, :cond_7

    #@c0
    const-string/jumbo v16, "TH"

    #@c3
    move-object/from16 v0, v16

    #@c5
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v16

    #@c9
    if-eqz v16, :cond_7

    #@cb
    const-string/jumbo v16, "TH"

    #@ce
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v16

    #@d2
    if-eqz v16, :cond_7

    #@d4
    .line 395
    sget-boolean v16, Lsun/util/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@d6
    if-nez v16, :cond_6

    #@d8
    const-string/jumbo v16, "thai"

    #@db
    const-string/jumbo v17, "nu"

    #@de
    move-object/from16 v0, p2

    #@e0
    move-object/from16 v1, v17

    #@e2
    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v17

    #@e6
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v16

    #@ea
    if-nez v16, :cond_6

    #@ec
    new-instance v16, Ljava/lang/AssertionError;

    #@ee
    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    #@f1
    throw v16

    #@f2
    .line 396
    :cond_6
    const-string/jumbo v15, ""

    #@f5
    goto/16 :goto_0

    #@f7
    .line 399
    :cond_7
    const-string/jumbo v16, "no"

    #@fa
    move-object/from16 v0, v16

    #@fc
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v16

    #@100
    if-eqz v16, :cond_1

    #@102
    const-string/jumbo v16, "NO"

    #@105
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v16

    #@10b
    if-eqz v16, :cond_1

    #@10d
    const-string/jumbo v16, "NY"

    #@110
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v16

    #@114
    if-eqz v16, :cond_1

    #@116
    .line 402
    const-string/jumbo v7, "nn"

    #@119
    .line 403
    const-string/jumbo v15, ""

    #@11c
    goto/16 :goto_0

    #@11e
    .line 410
    :cond_8
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    #@120
    new-instance v17, Ljava/lang/StringBuilder;

    #@122
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v18, "Ill-formed language: "

    #@128
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v17

    #@12c
    move-object/from16 v0, v17

    #@12e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v17

    #@132
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v17

    #@136
    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@139
    throw v16

    #@13a
    .line 414
    :cond_9
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    #@13c
    new-instance v17, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v18, "Ill-formed script: "

    #@144
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v17

    #@148
    move-object/from16 v0, v17

    #@14a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v17

    #@14e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v17

    #@152
    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@155
    throw v16

    #@156
    .line 418
    :cond_a
    new-instance v16, Lsun/util/locale/LocaleSyntaxException;

    #@158
    new-instance v17, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v18, "Ill-formed region: "

    #@160
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v17

    #@164
    move-object/from16 v0, v17

    #@166
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v17

    #@16a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v17

    #@16e
    invoke-direct/range {v16 .. v17}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@171
    throw v16

    #@172
    .line 432
    :cond_b
    move-object/from16 v0, p0

    #@174
    iput-object v7, v0, Lsun/util/locale/InternalLocaleBuilder;->language:Ljava/lang/String;

    #@176
    .line 433
    move-object/from16 v0, p0

    #@178
    iput-object v9, v0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@17a
    .line 434
    move-object/from16 v0, p0

    #@17c
    iput-object v8, v0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@17e
    .line 435
    move-object/from16 v0, p0

    #@180
    iput-object v15, v0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@182
    .line 436
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    #@185
    .line 438
    if-nez p2, :cond_e

    #@187
    const/4 v4, 0x0

    #@188
    .line 439
    .local v4, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :goto_1
    if-eqz v4, :cond_13

    #@18a
    .line 441
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18d
    move-result-object v6

    #@18e
    .local v6, "key$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@191
    move-result v16

    #@192
    if-eqz v16, :cond_13

    #@194
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@197
    move-result-object v5

    #@198
    check-cast v5, Ljava/lang/Character;

    #@19a
    .line 442
    .local v5, "key":Ljava/lang/Character;
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v5}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    #@19f
    move-result-object v2

    #@1a0
    .line 443
    .local v2, "e":Lsun/util/locale/Extension;
    instance-of v0, v2, Lsun/util/locale/UnicodeLocaleExtension;

    #@1a2
    move/from16 v16, v0

    #@1a4
    if-eqz v16, :cond_11

    #@1a6
    move-object v12, v2

    #@1a7
    .line 444
    check-cast v12, Lsun/util/locale/UnicodeLocaleExtension;

    #@1a9
    .line 445
    .local v12, "ue":Lsun/util/locale/UnicodeLocaleExtension;
    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@1ac
    move-result-object v16

    #@1ad
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b0
    move-result-object v11

    #@1b1
    .local v11, "uatr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1b4
    move-result v16

    #@1b5
    if-eqz v16, :cond_f

    #@1b7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ba
    move-result-object v10

    #@1bb
    check-cast v10, Ljava/lang/String;

    #@1bd
    .line 446
    .local v10, "uatr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@1c1
    move-object/from16 v16, v0

    #@1c3
    if-nez v16, :cond_d

    #@1c5
    .line 447
    new-instance v16, Ljava/util/HashSet;

    #@1c7
    const/16 v17, 0x4

    #@1c9
    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(I)V

    #@1cc
    move-object/from16 v0, v16

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@1d2
    .line 449
    :cond_d
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->uattributes:Ljava/util/Set;

    #@1d6
    move-object/from16 v16, v0

    #@1d8
    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@1da
    move-object/from16 v0, v17

    #@1dc
    invoke-direct {v0, v10}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@1df
    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e2
    goto :goto_3

    #@1e3
    .line 438
    .end local v2    # "e":Lsun/util/locale/Extension;
    .end local v4    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v5    # "key":Ljava/lang/Character;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v10    # "uatr":Ljava/lang/String;
    .end local v11    # "uatr$iterator":Ljava/util/Iterator;
    .end local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@1e6
    move-result-object v4

    #@1e7
    goto :goto_1

    #@1e8
    .line 451
    .restart local v2    # "e":Lsun/util/locale/Extension;
    .restart local v4    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v5    # "key":Ljava/lang/Character;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v11    # "uatr$iterator":Ljava/util/Iterator;
    .restart local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_f
    invoke-virtual {v12}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@1eb
    move-result-object v16

    #@1ec
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ef
    move-result-object v14

    #@1f0
    .local v14, "ukey$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@1f3
    move-result v16

    #@1f4
    if-eqz v16, :cond_c

    #@1f6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f9
    move-result-object v13

    #@1fa
    check-cast v13, Ljava/lang/String;

    #@1fc
    .line 452
    .local v13, "ukey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@200
    move-object/from16 v16, v0

    #@202
    if-nez v16, :cond_10

    #@204
    .line 453
    new-instance v16, Ljava/util/HashMap;

    #@206
    const/16 v17, 0x4

    #@208
    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    #@20b
    move-object/from16 v0, v16

    #@20d
    move-object/from16 v1, p0

    #@20f
    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@211
    .line 455
    :cond_10
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@215
    move-object/from16 v16, v0

    #@217
    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@219
    move-object/from16 v0, v17

    #@21b
    invoke-direct {v0, v13}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@21e
    invoke-virtual {v12, v13}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@221
    move-result-object v18

    #@222
    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@225
    goto :goto_4

    #@226
    .line 458
    .end local v11    # "uatr$iterator":Ljava/util/Iterator;
    .end local v12    # "ue":Lsun/util/locale/UnicodeLocaleExtension;
    .end local v13    # "ukey":Ljava/lang/String;
    .end local v14    # "ukey$iterator":Ljava/util/Iterator;
    :cond_11
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@22a
    move-object/from16 v16, v0

    #@22c
    if-nez v16, :cond_12

    #@22e
    .line 459
    new-instance v16, Ljava/util/HashMap;

    #@230
    const/16 v17, 0x4

    #@232
    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    #@235
    move-object/from16 v0, v16

    #@237
    move-object/from16 v1, p0

    #@239
    iput-object v0, v1, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@23b
    .line 461
    :cond_12
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Lsun/util/locale/InternalLocaleBuilder;->extensions:Ljava/util/Map;

    #@23f
    move-object/from16 v16, v0

    #@241
    new-instance v17, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@243
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    #@246
    move-result v18

    #@247
    invoke-direct/range {v17 .. v18}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@24a
    invoke-virtual {v2}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    #@24d
    move-result-object v18

    #@24e
    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@251
    goto/16 :goto_2

    #@253
    .line 465
    .end local v2    # "e":Lsun/util/locale/Extension;
    .end local v5    # "key":Ljava/lang/Character;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    :cond_13
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 85
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@b
    .line 92
    :goto_0
    return-object p0

    #@c
    .line 87
    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 88
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Ill-formed region: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x0

    #@29
    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2c
    throw v0

    #@2d
    .line 90
    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->region:Ljava/lang/String;

    #@2f
    goto :goto_0
.end method

.method public setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 73
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@b
    .line 80
    :goto_0
    return-object p0

    #@c
    .line 75
    :cond_0
    invoke-static {p1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 76
    new-instance v0, Lsun/util/locale/LocaleSyntaxException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Ill-formed script: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x0

    #@29
    invoke-direct {v0, v1, v2}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2c
    throw v0

    #@2d
    .line 78
    :cond_1
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder;->script:Ljava/lang/String;

    #@2f
    goto :goto_0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 134
    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "Ill-formed Unicode locale keyword key: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v4, v5}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 137
    :cond_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@22
    invoke-direct {v0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@25
    .line 138
    .local v0, "cikey":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    if-nez p2, :cond_2

    #@27
    .line 139
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 141
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@2d
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 164
    :cond_1
    :goto_0
    return-object p0

    #@31
    .line 144
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_4

    #@37
    .line 146
    const-string/jumbo v4, "_"

    #@3a
    const-string/jumbo v5, "-"

    #@3d
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 148
    .local v3, "tp":Ljava/lang/String;
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    #@43
    const-string/jumbo v4, "-"

    #@46
    invoke-direct {v1, v3, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@49
    .line 149
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_1
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@4c
    move-result v4

    #@4d
    if-nez v4, :cond_4

    #@4f
    .line 150
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 151
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lsun/util/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_3

    #@59
    .line 152
    new-instance v4, Lsun/util/locale/LocaleSyntaxException;

    #@5b
    new-instance v5, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v6, "Ill-formed Unicode locale keyword type: "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    .line 154
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@72
    move-result v6

    #@73
    .line 152
    invoke-direct {v4, v5, v6}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@76
    throw v4

    #@77
    .line 156
    :cond_3
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@7a
    goto :goto_1

    #@7b
    .line 159
    .end local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "tp":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@7d
    if-nez v4, :cond_5

    #@7f
    .line 160
    new-instance v4, Ljava/util/HashMap;

    #@81
    const/4 v5, 0x4

    #@82
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@85
    iput-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@87
    .line 162
    :cond_5
    iget-object v4, p0, Lsun/util/locale/InternalLocaleBuilder;->ukeywords:Ljava/util/Map;

    #@89
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    goto :goto_0
.end method

.method public setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/util/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 97
    const-string/jumbo v2, ""

    #@9
    iput-object v2, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@b
    .line 107
    :goto_0
    return-object p0

    #@c
    .line 100
    :cond_0
    const-string/jumbo v2, "-"

    #@f
    const-string/jumbo v3, "_"

    #@12
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 101
    .local v1, "var":Ljava/lang/String;
    const-string/jumbo v2, "_"

    #@19
    invoke-direct {p0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    .line 102
    .local v0, "errIdx":I
    const/4 v2, -0x1

    #@1e
    if-eq v0, v2, :cond_1

    #@20
    .line 103
    new-instance v2, Lsun/util/locale/LocaleSyntaxException;

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Ill-formed variant: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, v3, v0}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@39
    throw v2

    #@3a
    .line 105
    :cond_1
    iput-object v1, p0, Lsun/util/locale/InternalLocaleBuilder;->variant:Ljava/lang/String;

    #@3c
    goto :goto_0
.end method
