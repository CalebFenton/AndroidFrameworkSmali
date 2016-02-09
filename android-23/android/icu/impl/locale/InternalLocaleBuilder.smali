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
.field static final synthetic -assertionsDisabled:Z

.field private static final JDKIMPL:Z

.field private static final PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private _extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _uattributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private _ukeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

    #@c
    .line 24
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@e
    const-string/jumbo v2, "x"

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    invoke-direct {v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@18
    sput-object v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@1a
    .line 15
    return-void

    #@1b
    :cond_0
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@8
    .line 20
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@d
    .line 21
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@12
    .line 22
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@17
    .line 31
    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "variants"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    .line 540
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 541
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 542
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 543
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 544
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@1d
    goto :goto_0

    #@1e
    .line 548
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
    .line 508
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    #@4
    const-string/jumbo v5, "-"

    #@7
    invoke-direct {v0, p0, v5}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 513
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v1, -0x1

    #@b
    .line 514
    .local v1, "prefixStart":I
    const/4 v2, 0x0

    #@c
    .line 515
    .local v2, "sawPrivuseVar":Z
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_0

    #@12
    .line 516
    const/4 v5, -0x1

    #@13
    if-eq v1, v5, :cond_1

    #@15
    .line 519
    const/4 v2, 0x1

    #@16
    .line 527
    :cond_0
    if-nez v2, :cond_3

    #@18
    .line 528
    return-object p0

    #@19
    .line 522
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    const-string/jumbo v6, "lvariant"

    #@20
    invoke-static {v5, v6}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 523
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@29
    move-result v1

    #@2a
    .line 525
    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@2d
    goto :goto_0

    #@2e
    .line 531
    :cond_3
    sget-boolean v5, Landroid/icu/impl/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

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
    .line 532
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

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
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
            "Landroid/icu/impl/locale/InternalLocaleBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "bcpExtensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 280
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@5
    .line 282
    if-eqz p1, :cond_3

    #@7
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v4

    #@b
    if-lez v4, :cond_3

    #@d
    .line 283
    new-instance v3, Ljava/util/HashSet;

    #@f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@16
    .line 284
    .local v3, "processedExtensions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "bcpExt$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_3

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .line 285
    .local v0, "bcpExt":Ljava/lang/String;
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@28
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v4

    #@2c
    invoke-direct {v2, v4}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@2f
    .line 287
    .local v2, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_0

    #@35
    .line 289
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@38
    move-result v4

    #@39
    invoke-static {v4}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-direct {p0, v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    #@46
    goto :goto_0

    #@47
    .line 292
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@49
    if-nez v4, :cond_2

    #@4b
    .line 293
    new-instance v4, Ljava/util/HashMap;

    #@4d
    const/4 v5, 0x4

    #@4e
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@51
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@53
    .line 295
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@55
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    goto :goto_0

    #@5d
    .line 300
    .end local v0    # "bcpExt":Ljava/lang/String;
    .end local v1    # "bcpExt$iterator":Ljava/util/Iterator;
    .end local v2    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    .end local v3    # "processedExtensions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;>;"
    :cond_3
    if-eqz p2, :cond_5

    #@5f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@62
    move-result v4

    #@63
    if-lez v4, :cond_5

    #@65
    .line 302
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@67
    if-nez v4, :cond_4

    #@69
    .line 303
    new-instance v4, Ljava/util/HashMap;

    #@6b
    const/4 v5, 0x1

    #@6c
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@6f
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@71
    .line 305
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@73
    new-instance v5, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@75
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    #@78
    move-result v6

    #@79
    invoke-direct {v5, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@7c
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 308
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
    .line 558
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 559
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@a
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    #@d
    .line 561
    :cond_0
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 562
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@13
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    #@16
    .line 565
    :cond_1
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    #@18
    const-string/jumbo v8, "-"

    #@1b
    invoke-direct {v0, p1, v8}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 568
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_2

    #@24
    .line 569
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    invoke-static {v8}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@2b
    move-result v8

    #@2c
    if-nez v8, :cond_4

    #@2e
    .line 580
    :cond_2
    const/4 v1, 0x0

    #@2f
    .line 582
    .local v1, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    const/4 v5, -0x1

    #@30
    .line 583
    .local v5, "typeStart":I
    const/4 v4, -0x1

    #@31
    .line 584
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .local v4, "typeEnd":I
    :goto_1
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@34
    move-result v8

    #@35
    if-nez v8, :cond_13

    #@37
    .line 585
    if-eqz v1, :cond_f

    #@39
    .line 586
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-static {v8}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_d

    #@43
    .line 588
    sget-boolean v8, Landroid/icu/impl/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

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
    .line 572
    .end local v4    # "typeEnd":I
    .end local v5    # "typeStart":I
    :cond_4
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@56
    if-nez v8, :cond_5

    #@58
    .line 573
    new-instance v8, Ljava/util/HashSet;

    #@5a
    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    #@5d
    iput-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@5f
    .line 575
    :cond_5
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@61
    new-instance v9, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@63
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@66
    move-result-object v10

    #@67
    invoke-direct {v9, v10}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@6a
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6d
    .line 576
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@70
    goto :goto_0

    #@71
    .restart local v4    # "typeEnd":I
    .restart local v5    # "typeStart":I
    :cond_6
    move v8, v7

    #@72
    .line 588
    goto :goto_2

    #@73
    .line 589
    :cond_7
    if-ne v5, v11, :cond_b

    #@75
    const-string/jumbo v3, ""

    #@78
    .line 590
    .local v3, "type":Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@7a
    if-nez v8, :cond_8

    #@7c
    .line 591
    new-instance v8, Ljava/util/HashMap;

    #@7e
    invoke-direct {v8, v12}, Ljava/util/HashMap;-><init>(I)V

    #@81
    iput-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@83
    .line 593
    :cond_8
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@85
    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 596
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@8a
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-direct {v2, v8}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@91
    .line 597
    .local v2, "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@93
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@96
    move-result v8

    #@97
    if-eqz v8, :cond_c

    #@99
    const/4 v1, 0x0

    #@9a
    .line 598
    :goto_4
    const/4 v4, -0x1

    #@9b
    const/4 v5, -0x1

    #@9c
    .line 615
    .end local v2    # "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_9
    :goto_5
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    #@9f
    move-result v8

    #@a0
    if-nez v8, :cond_15

    #@a2
    .line 616
    if-eqz v1, :cond_13

    #@a4
    .line 618
    sget-boolean v8, Landroid/icu/impl/locale/InternalLocaleBuilder;->-assertionsDisabled:Z

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
    .line 589
    :cond_b
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_3

    #@b9
    .line 597
    .restart local v2    # "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_c
    move-object v1, v2

    #@ba
    .local v1, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_4

    #@bb
    .line 600
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v2    # "tmpKey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "type":Ljava/lang/String;
    :cond_d
    if-ne v5, v11, :cond_e

    #@bd
    .line 601
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@c0
    move-result v5

    #@c1
    .line 603
    :cond_e
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@c4
    move-result v4

    #@c5
    goto :goto_5

    #@c6
    .line 605
    :cond_f
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@c9
    move-result-object v8

    #@ca
    invoke-static {v8}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@cd
    move-result v8

    #@ce
    if-eqz v8, :cond_9

    #@d0
    .line 608
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@d2
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@d5
    move-result-object v8

    #@d6
    invoke-direct {v1, v8}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@d9
    .line 609
    .restart local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@db
    if-eqz v8, :cond_9

    #@dd
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@df
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@e2
    move-result v8

    #@e3
    if-eqz v8, :cond_9

    #@e5
    .line 611
    const/4 v1, 0x0

    #@e6
    .local v1, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_5

    #@e7
    .end local v1    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    :cond_10
    move v6, v7

    #@e8
    .line 618
    goto :goto_6

    #@e9
    .line 619
    :cond_11
    if-ne v5, v11, :cond_14

    #@eb
    const-string/jumbo v3, ""

    #@ee
    .line 620
    .restart local v3    # "type":Ljava/lang/String;
    :goto_7
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@f0
    if-nez v6, :cond_12

    #@f2
    .line 621
    new-instance v6, Ljava/util/HashMap;

    #@f4
    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(I)V

    #@f7
    iput-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@f9
    .line 623
    :cond_12
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@fb
    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 556
    .end local v3    # "type":Ljava/lang/String;
    :cond_13
    return-void

    #@ff
    .line 619
    :cond_14
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@102
    move-result-object v3

    #@103
    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_7

    #@104
    .line 628
    .end local v3    # "type":Ljava/lang/String;
    :cond_15
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@107
    goto/16 :goto_1
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    if-eqz p1, :cond_1

    #@2
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 90
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 91
    new-instance v0, Ljava/util/HashSet;

    #@e
    const/4 v1, 0x4

    #@f
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@12
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@14
    .line 93
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@16
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@18
    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 94
    return-object p0

    #@1f
    .line 87
    :cond_1
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Ill-formed Unicode locale attribute: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method

.method public clear()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    #@0
    .prologue
    .line 434
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@5
    .line 435
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@a
    .line 436
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@f
    .line 437
    const-string/jumbo v0, ""

    #@12
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@14
    .line 438
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@17
    .line 439
    return-object p0
.end method

.method public clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 444
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@9
    .line 446
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 447
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@f
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@12
    .line 449
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 450
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@18
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@1b
    .line 452
    :cond_2
    return-object p0
.end method

.method public getBaseLocale()Landroid/icu/impl/locale/BaseLocale;
    .locals 12

    #@0
    .prologue
    .line 456
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@2
    .line 457
    .local v1, "language":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@4
    .line 458
    .local v7, "script":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@6
    .line 459
    .local v4, "region":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@8
    .line 463
    .local v8, "variant":Ljava/lang/String;
    iget-object v9, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@a
    if-eqz v9, :cond_2

    #@c
    .line 464
    iget-object v9, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@e
    sget-object v10, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@10
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/String;

    #@16
    .line 465
    .local v3, "privuse":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@18
    .line 466
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    #@1a
    const-string/jumbo v9, "-"

    #@1d
    invoke-direct {v0, v3, v9}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 467
    .local v0, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v5, 0x0

    #@21
    .line 468
    .local v5, "sawPrefix":Z
    const/4 v2, -0x1

    #@22
    .line 469
    .local v2, "privVarStart":I
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@25
    move-result v9

    #@26
    if-nez v9, :cond_0

    #@28
    .line 470
    if-eqz v5, :cond_3

    #@2a
    .line 471
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@2d
    move-result v2

    #@2e
    .line 479
    :cond_0
    const/4 v9, -0x1

    #@2f
    if-eq v2, v9, :cond_2

    #@31
    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    .line 481
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_1

    #@3c
    .line 482
    const-string/jumbo v9, "_"

    #@3f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 484
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    const-string/jumbo v10, "-"

    #@49
    const-string/jumbo v11, "_"

    #@4c
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 485
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    .line 490
    .end local v0    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v2    # "privVarStart":I
    .end local v3    # "privuse":Ljava/lang/String;
    .end local v5    # "sawPrefix":Z
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v1, v7, v4, v8}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    #@5a
    move-result-object v9

    #@5b
    return-object v9

    #@5c
    .line 474
    .restart local v0    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .restart local v2    # "privVarStart":I
    .restart local v3    # "privuse":Ljava/lang/String;
    .restart local v5    # "sawPrefix":Z
    :cond_3
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    const-string/jumbo v10, "lvariant"

    #@63
    invoke-static {v9, v10}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@66
    move-result v9

    #@67
    if-eqz v9, :cond_4

    #@69
    .line 475
    const/4 v5, 0x1

    #@6a
    .line 477
    :cond_4
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@6d
    goto :goto_0
.end method

.method public getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;
    .locals 4

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_3

    #@c
    .line 495
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@12
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_3

    #@18
    .line 496
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_3

    #@24
    .line 497
    :cond_2
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    #@26
    return-object v0

    #@27
    .line 500
    :cond_3
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    #@29
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@2b
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@2d
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@2f
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    #@32
    return-object v0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    if-eqz p1, :cond_1

    #@2
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 101
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 102
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@e
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@10
    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@16
    .line 104
    :cond_0
    return-object p0

    #@17
    .line 99
    :cond_1
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

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
    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 10
    .param p1, "singleton"    # C
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@3
    move-result v0

    #@4
    .line 143
    .local v0, "isBcpPrivateuse":Z
    if-nez v0, :cond_0

    #@6
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_4

    #@c
    .line 147
    :cond_0
    if-eqz p2, :cond_1

    #@e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@11
    move-result v7

    #@12
    if-nez v7, :cond_5

    #@14
    :cond_1
    const/4 v3, 0x1

    #@15
    .line 148
    .local v3, "remove":Z
    :goto_0
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@17
    invoke-direct {v2, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@1a
    .line 150
    .local v2, "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    if-eqz v3, :cond_7

    #@1c
    .line 151
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@1f
    move-result v7

    #@20
    invoke-static {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_6

    #@26
    .line 153
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@28
    if-eqz v7, :cond_2

    #@2a
    .line 154
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@2c
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    #@2f
    .line 156
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@31
    if-eqz v7, :cond_3

    #@33
    .line 157
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@35
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@38
    .line 191
    :cond_3
    :goto_1
    return-object p0

    #@39
    .line 144
    .end local v2    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    .end local v3    # "remove":Z
    :cond_4
    new-instance v7, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@3b
    new-instance v8, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v9, "Ill-formed extension key: "

    #@43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-direct {v7, v8}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@52
    throw v7

    #@53
    .line 147
    :cond_5
    const/4 v3, 0x0

    #@54
    .restart local v3    # "remove":Z
    goto :goto_0

    #@55
    .line 160
    .restart local v2    # "key":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
    :cond_6
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@57
    if-eqz v7, :cond_3

    #@59
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@5b
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_3

    #@61
    .line 161
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@63
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_1

    #@67
    .line 166
    :cond_7
    const-string/jumbo v7, "_"

    #@6a
    const-string/jumbo v8, "-"

    #@6d
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    .line 167
    .local v5, "val":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    #@73
    const-string/jumbo v7, "-"

    #@76
    invoke-direct {v1, v5, v7}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 168
    .local v1, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_2
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@7c
    move-result v7

    #@7d
    if-nez v7, :cond_a

    #@7f
    .line 169
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    .line 171
    .local v4, "s":Ljava/lang/String;
    if-eqz v0, :cond_8

    #@85
    .line 172
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@88
    move-result v6

    #@89
    .line 176
    .local v6, "validSubtag":Z
    :goto_3
    if-nez v6, :cond_9

    #@8b
    .line 177
    new-instance v7, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@8d
    new-instance v8, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v9, "Ill-formed extension value: "

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@a4
    move-result v9

    #@a5
    invoke-direct {v7, v8, v9}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@a8
    throw v7

    #@a9
    .line 174
    .end local v6    # "validSubtag":Z
    :cond_8
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@ac
    move-result v6

    #@ad
    .restart local v6    # "validSubtag":Z
    goto :goto_3

    #@ae
    .line 179
    :cond_9
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@b1
    goto :goto_2

    #@b2
    .line 182
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "validSubtag":Z
    :cond_a
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@b5
    move-result v7

    #@b6
    invoke-static {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    #@b9
    move-result v7

    #@ba
    if-eqz v7, :cond_b

    #@bc
    .line 183
    invoke-direct {p0, v5}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    #@bf
    goto/16 :goto_1

    #@c1
    .line 185
    :cond_b
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@c3
    if-nez v7, :cond_c

    #@c5
    .line 186
    new-instance v7, Ljava/util/HashMap;

    #@c7
    const/4 v8, 0x4

    #@c8
    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    #@cb
    iput-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@cd
    .line 188
    :cond_c
    iget-object v7, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@cf
    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    goto/16 :goto_1
.end method

.method public setExtensions(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 11
    .param p1, "subtags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_1

    #@8
    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@b
    .line 200
    return-object p0

    #@c
    .line 202
    :cond_1
    const-string/jumbo v8, "_"

    #@f
    const-string/jumbo v9, "-"

    #@12
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    .line 203
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    #@18
    const-string/jumbo v8, "-"

    #@1b
    invoke-direct {v1, p1, v8}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 205
    .local v1, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v0, 0x0

    #@1f
    .line 206
    .local v0, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@20
    .line 208
    .local v3, "privateuse":Ljava/lang/String;
    const/4 v2, 0x0

    #@21
    .line 212
    .end local v0    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "parsed":I
    :goto_0
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@24
    move-result v8

    #@25
    if-nez v8, :cond_5

    #@27
    .line 213
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 214
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_5

    #@31
    .line 215
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@34
    move-result v7

    #@35
    .line 216
    .local v7, "start":I
    move-object v6, v4

    #@36
    .line 217
    .local v6, "singleton":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 219
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@3e
    .line 220
    :goto_1
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@41
    move-result v8

    #@42
    if-nez v8, :cond_2

    #@44
    .line 221
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 222
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_2

    #@4e
    .line 223
    const-string/jumbo v8, "-"

    #@51
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 224
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@5b
    move-result v2

    #@5c
    .line 228
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@5f
    goto :goto_1

    #@60
    .line 231
    :cond_2
    if-ge v2, v7, :cond_3

    #@62
    .line 232
    new-instance v8, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@64
    new-instance v9, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v10, "Incomplete extension \'"

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    const-string/jumbo v10, "\'"

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-direct {v8, v9, v7}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@82
    throw v8

    #@83
    .line 235
    :cond_3
    if-nez v0, :cond_4

    #@85
    .line 236
    new-instance v0, Ljava/util/ArrayList;

    #@87
    const/4 v8, 0x4

    #@88
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@8b
    .line 238
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_0

    #@93
    .line 243
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "singleton":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_5
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@96
    move-result v8

    #@97
    if-nez v8, :cond_9

    #@99
    .line 244
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    .line 245
    .restart local v4    # "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    #@a0
    move-result v8

    #@a1
    if-eqz v8, :cond_9

    #@a3
    .line 246
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@a6
    move-result v7

    #@a7
    .line 247
    .restart local v7    # "start":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ac
    .line 249
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@af
    .line 250
    :goto_2
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@b2
    move-result v8

    #@b3
    if-nez v8, :cond_6

    #@b5
    .line 251
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@b8
    move-result-object v4

    #@b9
    .line 252
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@bc
    move-result v8

    #@bd
    if-nez v8, :cond_7

    #@bf
    .line 260
    :cond_6
    if-gt v2, v7, :cond_8

    #@c1
    .line 261
    new-instance v8, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@c3
    new-instance v9, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v10, "Incomplete privateuse:"

    #@cb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v9

    #@cf
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v9

    #@db
    invoke-direct {v8, v9, v7}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@de
    throw v8

    #@df
    .line 255
    :cond_7
    const-string/jumbo v8, "-"

    #@e2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v8

    #@e6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 256
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@ec
    move-result v2

    #@ed
    .line 258
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@f0
    goto :goto_2

    #@f1
    .line 263
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    .line 268
    .end local v3    # "privateuse":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_9
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@f8
    move-result v8

    #@f9
    if-nez v8, :cond_a

    #@fb
    .line 269
    new-instance v8, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@fd
    new-instance v9, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v10, "Ill-formed extension subtags:"

    #@105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v9

    #@109
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@10c
    move-result v10

    #@10d
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@110
    move-result-object v10

    #@111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v9

    #@115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v9

    #@119
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@11c
    move-result v10

    #@11d
    invoke-direct {v8, v9, v10}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@120
    throw v8

    #@121
    .line 272
    :cond_a
    invoke-direct {p0, v0, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@124
    move-result-object v8

    #@125
    return-object v8
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 35
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 36
    :cond_0
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@e
    .line 43
    :goto_0
    return-object p0

    #@f
    .line 38
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 39
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Ill-formed language: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2e
    throw v0

    #@2f
    .line 41
    :cond_2
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@31
    goto :goto_0
.end method

.method public setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 6
    .param p1, "langtag"    # Landroid/icu/impl/locale/LanguageTag;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 315
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@4
    .line 316
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    if-lez v4, :cond_1

    #@e
    .line 317
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/lang/String;

    #@18
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@1a
    .line 324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@20
    .line 325
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@26
    .line 327
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    .line 328
    .local v0, "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2d
    move-result v4

    #@2e
    if-lez v4, :cond_3

    #@30
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Ljava/lang/String;

    #@38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 330
    .local v3, "var":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@3c
    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3f
    move-result v4

    #@40
    if-ge v1, v4, :cond_2

    #@42
    .line 331
    const-string/jumbo v4, "_"

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v4

    #@4d
    check-cast v4, Ljava/lang/String;

    #@4f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 330
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_1

    #@55
    .line 319
    .end local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v3    # "var":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 320
    .local v2, "language":Ljava/lang/String;
    sget-object v4, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    #@5b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-nez v4, :cond_0

    #@61
    .line 321
    iput-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@63
    goto :goto_0

    #@64
    .line 333
    .end local v2    # "language":Ljava/lang/String;
    .restart local v0    # "bcpVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v3    # "var":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@6a
    .line 336
    .end local v1    # "i":I
    .end local v3    # "var":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@75
    .line 338
    return-object p0
.end method

.method public setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 18
    .param p1, "base"    # Landroid/icu/impl/locale/BaseLocale;
    .param p2, "extensions"    # Landroid/icu/impl/locale/LocaleExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 343
    .local v6, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v8

    #@8
    .line 344
    .local v8, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    .line 345
    .local v7, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@f
    move-result-object v14

    #@10
    .line 376
    .local v14, "variant":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@13
    move-result v15

    #@14
    if-lez v15, :cond_0

    #@16
    invoke-static {v6}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@19
    move-result v15

    #@1a
    if-eqz v15, :cond_3

    #@1c
    .line 380
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1f
    move-result v15

    #@20
    if-lez v15, :cond_1

    #@22
    invoke-static {v8}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@25
    move-result v15

    #@26
    if-eqz v15, :cond_4

    #@28
    .line 384
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@2b
    move-result v15

    #@2c
    if-lez v15, :cond_2

    #@2e
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@31
    move-result v15

    #@32
    if-eqz v15, :cond_5

    #@34
    .line 388
    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@37
    move-result v15

    #@38
    if-lez v15, :cond_6

    #@3a
    .line 389
    const-string/jumbo v15, "_"

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v14, v15}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    move-result v2

    #@43
    .line 390
    .local v2, "errIdx":I
    const/4 v15, -0x1

    #@44
    if-eq v2, v15, :cond_6

    #@46
    .line 391
    new-instance v15, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@48
    new-instance v16, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v17, "Ill-formed variant: "

    #@50
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v16

    #@54
    move-object/from16 v0, v16

    #@56
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v16

    #@5a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v16

    #@5e
    move-object/from16 v0, v16

    #@60
    invoke-direct {v15, v0, v2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@63
    throw v15

    #@64
    .line 377
    .end local v2    # "errIdx":I
    :cond_3
    new-instance v15, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@66
    new-instance v16, Ljava/lang/StringBuilder;

    #@68
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v17, "Ill-formed language: "

    #@6e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v16

    #@72
    move-object/from16 v0, v16

    #@74
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v16

    #@78
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v16

    #@7c
    invoke-direct/range {v15 .. v16}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v15

    #@80
    .line 381
    :cond_4
    new-instance v15, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@82
    new-instance v16, Ljava/lang/StringBuilder;

    #@84
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v17, "Ill-formed script: "

    #@8a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v16

    #@8e
    move-object/from16 v0, v16

    #@90
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v16

    #@94
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v16

    #@98
    invoke-direct/range {v15 .. v16}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v15

    #@9c
    .line 385
    :cond_5
    new-instance v15, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@9e
    new-instance v16, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v17, "Ill-formed region: "

    #@a6
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v16

    #@aa
    move-object/from16 v0, v16

    #@ac
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v16

    #@b0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v16

    #@b4
    invoke-direct/range {v15 .. v16}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v15

    #@b8
    .line 397
    :cond_6
    move-object/from16 v0, p0

    #@ba
    iput-object v6, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    #@bc
    .line 398
    move-object/from16 v0, p0

    #@be
    iput-object v8, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@c0
    .line 399
    move-object/from16 v0, p0

    #@c2
    iput-object v7, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@c4
    .line 400
    move-object/from16 v0, p0

    #@c6
    iput-object v14, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@c8
    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@cb
    .line 403
    if-nez p2, :cond_9

    #@cd
    const/4 v3, 0x0

    #@ce
    .line 404
    :goto_0
    if-eqz v3, :cond_e

    #@d0
    .line 406
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d3
    move-result-object v5

    #@d4
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d7
    move-result v15

    #@d8
    if-eqz v15, :cond_e

    #@da
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@dd
    move-result-object v4

    #@de
    check-cast v4, Ljava/lang/Character;

    #@e0
    .line 407
    .local v4, "key":Ljava/lang/Character;
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v4}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    #@e5
    move-result-object v1

    #@e6
    .line 408
    .local v1, "e":Landroid/icu/impl/locale/Extension;
    instance-of v15, v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@e8
    if-eqz v15, :cond_c

    #@ea
    move-object v11, v1

    #@eb
    .line 409
    check-cast v11, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@ed
    .line 410
    .local v11, "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    invoke-virtual {v11}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@f0
    move-result-object v15

    #@f1
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f4
    move-result-object v10

    #@f5
    .local v10, "uatr$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@f8
    move-result v15

    #@f9
    if-eqz v15, :cond_a

    #@fb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fe
    move-result-object v9

    #@ff
    check-cast v9, Ljava/lang/String;

    #@101
    .line 411
    .local v9, "uatr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@103
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@105
    if-nez v15, :cond_8

    #@107
    .line 412
    new-instance v15, Ljava/util/HashSet;

    #@109
    const/16 v16, 0x4

    #@10b
    invoke-direct/range {v15 .. v16}, Ljava/util/HashSet;-><init>(I)V

    #@10e
    move-object/from16 v0, p0

    #@110
    iput-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@112
    .line 414
    :cond_8
    move-object/from16 v0, p0

    #@114
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    #@116
    new-instance v16, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@118
    move-object/from16 v0, v16

    #@11a
    invoke-direct {v0, v9}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@11d
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@120
    goto :goto_2

    #@121
    .line 403
    .end local v1    # "e":Landroid/icu/impl/locale/Extension;
    .end local v4    # "key":Ljava/lang/Character;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v9    # "uatr":Ljava/lang/String;
    .end local v10    # "uatr$iterator":Ljava/util/Iterator;
    .end local v11    # "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@124
    move-result-object v3

    #@125
    .local v3, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    goto :goto_0

    #@126
    .line 416
    .end local v3    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v1    # "e":Landroid/icu/impl/locale/Extension;
    .restart local v4    # "key":Ljava/lang/Character;
    .restart local v5    # "key$iterator":Ljava/util/Iterator;
    .restart local v10    # "uatr$iterator":Ljava/util/Iterator;
    .restart local v11    # "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    :cond_a
    invoke-virtual {v11}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@129
    move-result-object v15

    #@12a
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12d
    move-result-object v13

    #@12e
    .local v13, "ukey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@131
    move-result v15

    #@132
    if-eqz v15, :cond_7

    #@134
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@137
    move-result-object v12

    #@138
    check-cast v12, Ljava/lang/String;

    #@13a
    .line 417
    .local v12, "ukey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13c
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@13e
    if-nez v15, :cond_b

    #@140
    .line 418
    new-instance v15, Ljava/util/HashMap;

    #@142
    const/16 v16, 0x4

    #@144
    invoke-direct/range {v15 .. v16}, Ljava/util/HashMap;-><init>(I)V

    #@147
    move-object/from16 v0, p0

    #@149
    iput-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@14b
    .line 420
    :cond_b
    move-object/from16 v0, p0

    #@14d
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@14f
    new-instance v16, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@151
    move-object/from16 v0, v16

    #@153
    invoke-direct {v0, v12}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@156
    invoke-virtual {v11, v12}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@159
    move-result-object v17

    #@15a
    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15d
    goto :goto_3

    #@15e
    .line 423
    .end local v10    # "uatr$iterator":Ljava/util/Iterator;
    .end local v11    # "ue":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    .end local v12    # "ukey":Ljava/lang/String;
    .end local v13    # "ukey$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@160
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@162
    if-nez v15, :cond_d

    #@164
    .line 424
    new-instance v15, Ljava/util/HashMap;

    #@166
    const/16 v16, 0x4

    #@168
    invoke-direct/range {v15 .. v16}, Ljava/util/HashMap;-><init>(I)V

    #@16b
    move-object/from16 v0, p0

    #@16d
    iput-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@16f
    .line 426
    :cond_d
    move-object/from16 v0, p0

    #@171
    iget-object v15, v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    #@173
    new-instance v16, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@175
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    #@178
    move-result v17

    #@179
    invoke-direct/range {v16 .. v17}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    #@17c
    invoke-virtual {v1}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    #@17f
    move-result-object v17

    #@180
    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@183
    goto/16 :goto_1

    #@185
    .line 430
    .end local v1    # "e":Landroid/icu/impl/locale/Extension;
    .end local v4    # "key":Ljava/lang/Character;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :cond_e
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 59
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 60
    :cond_0
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@e
    .line 67
    :goto_0
    return-object p0

    #@f
    .line 62
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 63
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Ill-formed region: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2e
    throw v0

    #@2f
    .line 65
    :cond_2
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    #@31
    goto :goto_0
.end method

.method public setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 47
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 48
    :cond_0
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@e
    .line 55
    :goto_0
    return-object p0

    #@f
    .line 50
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    .line 51
    new-instance v0, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Ill-formed script: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@2e
    throw v0

    #@2f
    .line 53
    :cond_2
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    #@31
    goto :goto_0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 109
    new-instance v4, Landroid/icu/impl/locale/LocaleSyntaxException;

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
    invoke-direct {v4, v5}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 112
    :cond_0
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@22
    invoke-direct {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@25
    .line 113
    .local v0, "cikey":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    if-nez p2, :cond_2

    #@27
    .line 114
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 116
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 137
    :cond_1
    :goto_0
    return-object p0

    #@31
    .line 119
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_4

    #@37
    .line 121
    const-string/jumbo v4, "_"

    #@3a
    const-string/jumbo v5, "-"

    #@3d
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 123
    .local v3, "tp":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    #@43
    const-string/jumbo v4, "-"

    #@46
    invoke-direct {v1, v3, v4}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@49
    .line 124
    .local v1, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_1
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@4c
    move-result v4

    #@4d
    if-nez v4, :cond_4

    #@4f
    .line 125
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 126
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_3

    #@59
    .line 127
    new-instance v4, Landroid/icu/impl/locale/LocaleSyntaxException;

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
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@72
    move-result v6

    #@73
    invoke-direct {v4, v5, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@76
    throw v4

    #@77
    .line 129
    :cond_3
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@7a
    goto :goto_1

    #@7b
    .line 132
    .end local v1    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "tp":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@7d
    if-nez v4, :cond_5

    #@7f
    .line 133
    new-instance v4, Ljava/util/HashMap;

    #@81
    const/4 v5, 0x4

    #@82
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@85
    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@87
    .line 135
    :cond_5
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    #@89
    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    goto :goto_0
.end method

.method public setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 72
    :cond_0
    const-string/jumbo v2, ""

    #@b
    iput-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@d
    .line 82
    :goto_0
    return-object p0

    #@e
    .line 75
    :cond_1
    const-string/jumbo v2, "-"

    #@11
    const-string/jumbo v3, "_"

    #@14
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 76
    .local v1, "var":Ljava/lang/String;
    const-string/jumbo v2, "_"

    #@1b
    invoke-direct {p0, v1, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    move-result v0

    #@1f
    .line 77
    .local v0, "errIdx":I
    const/4 v2, -0x1

    #@20
    if-eq v0, v2, :cond_2

    #@22
    .line 78
    new-instance v2, Landroid/icu/impl/locale/LocaleSyntaxException;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Ill-formed variant: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@3b
    throw v2

    #@3c
    .line 80
    :cond_2
    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    #@3e
    goto :goto_0
.end method
