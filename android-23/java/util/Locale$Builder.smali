.class public final Ljava/util/Locale$Builder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variant:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "subTag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "script"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/Locale$Builder;->normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 379
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    #@8
    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@a
    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@c
    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@e
    .line 385
    new-instance v0, Ljava/util/TreeSet;

    #@10
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@13
    iput-object v0, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@15
    .line 386
    new-instance v0, Ljava/util/TreeMap;

    #@17
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@1c
    .line 387
    new-instance v0, Ljava/util/TreeMap;

    #@1e
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@21
    iput-object v0, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@23
    .line 378
    return-void
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x5

    #@7
    if-lt v1, v2, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    const/16 v2, 0x8

    #@f
    if-gt v1, v2, :cond_0

    #@11
    .line 543
    invoke-static {p0}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 544
    return v4

    #@18
    .line 546
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x4

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    .line 547
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    .line 548
    .local v0, "firstChar":C
    const/16 v1, 0x30

    #@25
    if-lt v0, v1, :cond_1

    #@27
    const/16 v1, 0x39

    #@29
    if-gt v0, v1, :cond_1

    #@2b
    invoke-static {p0}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 549
    return v4

    #@32
    .line 553
    .end local v0    # "firstChar":C
    :cond_1
    return v3
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 414
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 415
    :cond_0
    const-string/jumbo v1, ""

    #@b
    return-object v1

    #@c
    .line 418
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 419
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    #@13
    const/4 v2, 0x3

    #@14
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->-wrap2(Ljava/lang/String;II)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 420
    if-eqz p1, :cond_2

    #@1c
    .line 421
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Invalid language: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 423
    :cond_2
    const-string/jumbo v1, "und"

    #@39
    return-object v1

    #@3a
    .line 427
    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 478
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 479
    :cond_0
    const-string/jumbo v1, ""

    #@c
    return-object v1

    #@d
    .line 482
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 483
    .local v0, "uppercaseRegion":Ljava/lang/String;
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->-wrap2(Ljava/lang/String;II)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    .line 484
    invoke-static {v0}, Ljava/util/Locale;->-wrap1(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 492
    :cond_2
    return-object v0

    #@20
    .line 485
    :cond_3
    if-eqz p1, :cond_4

    #@22
    .line 486
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Invalid region: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 488
    :cond_4
    const-string/jumbo v1, ""

    #@3f
    return-object v1
.end method

.method private static normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "script"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 576
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 577
    :cond_0
    const-string/jumbo v0, ""

    #@c
    return-object v0

    #@d
    .line 580
    :cond_1
    invoke-static {p0, v1, v1}, Ljava/util/Locale;->-wrap2(Ljava/lang/String;II)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_3

    #@13
    .line 581
    if-eqz p1, :cond_2

    #@15
    .line 582
    new-instance v0, Ljava/util/IllformedLocaleException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Invalid script: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 584
    :cond_2
    const-string/jumbo v0, ""

    #@32
    return-object v0

    #@33
    .line 588
    :cond_3
    invoke-static {p0}, Ljava/util/Locale;->-wrap5(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 520
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 521
    :cond_0
    const-string/jumbo v3, ""

    #@b
    return-object v3

    #@c
    .line 526
    :cond_1
    const/16 v3, 0x2d

    #@e
    const/16 v4, 0x5f

    #@10
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 527
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v3, "_"

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 529
    .local v2, "subTags":[Ljava/lang/String;
    const/4 v3, 0x0

    #@1c
    array-length v4, v2

    #@1d
    :goto_0
    if-ge v3, v4, :cond_3

    #@1f
    aget-object v1, v2, v3

    #@21
    .line 530
    .local v1, "subTag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale$Builder;->isValidVariantSubtag(Ljava/lang/String;)Z

    #@24
    move-result v5

    #@25
    if-nez v5, :cond_2

    #@27
    .line 531
    new-instance v3, Ljava/util/IllformedLocaleException;

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Invalid variant: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3

    #@41
    .line 529
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 535
    .end local v1    # "subTag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    if-nez p1, :cond_0

    #@2
    .line 662
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "attribute == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 665
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 666
    .local v0, "lowercaseAttribute":Ljava/lang/String;
    const/4 v1, 0x3

    #@12
    const/16 v2, 0x8

    #@14
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->-wrap3(Ljava/lang/String;II)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 667
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Invalid locale attribute: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 670
    :cond_1
    iget-object v1, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    .line 672
    return-object p0
.end method

.method public build()Ljava/util/Locale;
    .locals 9

    #@0
    .prologue
    .line 863
    new-instance v0, Ljava/util/Locale;

    #@2
    iget-object v1, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@4
    iget-object v2, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@6
    iget-object v3, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@8
    iget-object v4, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    #@a
    .line 864
    iget-object v5, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@c
    iget-object v6, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@e
    iget-object v7, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@10
    .line 865
    const/4 v8, 0x1

    #@11
    .line 863
    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@14
    return-object v0
.end method

.method public clear()Ljava/util/Locale$Builder;
    .locals 1

    #@0
    .prologue
    .line 849
    invoke-virtual {p0}, Ljava/util/Locale$Builder;->clearExtensions()Ljava/util/Locale$Builder;

    #@3
    .line 850
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    #@8
    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@a
    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@c
    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@e
    .line 852
    return-object p0
.end method

.method public clearExtensions()Ljava/util/Locale$Builder;
    .locals 1

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 788
    iget-object v0, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@a
    .line 789
    iget-object v0, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@c
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@f
    .line 790
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    if-nez p1, :cond_0

    #@2
    .line 690
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "attribute == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 695
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 696
    .local v0, "lowercaseAttribute":Ljava/lang/String;
    const/4 v1, 0x3

    #@12
    const/16 v2, 0x8

    #@14
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->-wrap3(Ljava/lang/String;II)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 697
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Invalid locale attribute: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 700
    :cond_1
    iget-object v1, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@36
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@39
    .line 701
    return-object p0
.end method

.method public setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .locals 8
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 744
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 745
    :cond_0
    iget-object v5, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@a
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 746
    return-object p0

    #@12
    .line 749
    :cond_1
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@14
    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    const/16 v6, 0x5f

    #@1a
    const/16 v7, 0x2d

    #@1c
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 750
    .local v2, "normalizedValue":Ljava/lang/String;
    const-string/jumbo v5, "-"

    #@23
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 751
    .local v4, "subtags":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@2a
    move-result v1

    #@2b
    .line 757
    .local v1, "normalizedKey":C
    const/16 v5, 0x78

    #@2d
    if-ne v1, v5, :cond_2

    #@2f
    const/4 v0, 0x1

    #@30
    .line 758
    .local v0, "minimumLength":I
    :goto_0
    const/4 v5, 0x0

    #@31
    array-length v6, v4

    #@32
    :goto_1
    if-ge v5, v6, :cond_4

    #@34
    aget-object v3, v4, v5

    #@36
    .line 759
    .local v3, "subtag":Ljava/lang/String;
    const/16 v7, 0x8

    #@38
    invoke-static {v3, v0, v7}, Ljava/util/Locale;->-wrap3(Ljava/lang/String;II)Z

    #@3b
    move-result v7

    #@3c
    if-nez v7, :cond_3

    #@3e
    .line 760
    new-instance v5, Ljava/util/IllformedLocaleException;

    #@40
    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "Invalid private use extension : "

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    .line 760
    invoke-direct {v5, v6}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@57
    throw v5

    #@58
    .line 757
    .end local v0    # "minimumLength":I
    .end local v3    # "subtag":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    #@59
    .restart local v0    # "minimumLength":I
    goto :goto_0

    #@5a
    .line 758
    .restart local v3    # "subtag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 767
    .end local v3    # "subtag":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x75

    #@5f
    if-ne v1, v5, :cond_5

    #@61
    .line 769
    iget-object v5, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@63
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    #@66
    .line 770
    iget-object v5, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@68
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    #@6b
    .line 772
    iget-object v5, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@6d
    iget-object v6, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@6f
    invoke-static {v4, v5, v6}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    #@72
    .line 777
    :goto_2
    return-object p0

    #@73
    .line 774
    :cond_5
    iget-object v5, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@75
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@78
    move-result-object v6

    #@79
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    goto :goto_2
.end method

.method public setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@7
    .line 410
    return-object p0
.end method

.method public setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 4
    .param p1, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 446
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale$Builder;->clear()Ljava/util/Locale$Builder;

    #@b
    .line 447
    return-object p0

    #@c
    .line 450
    :cond_1
    const/4 v1, 0x1

    #@d
    invoke-static {p1, v1}, Ljava/util/Locale;->-wrap6(Ljava/lang/String;Z)Ljava/util/Locale;

    #@10
    move-result-object v0

    #@11
    .line 453
    .local v0, "fromIcu":Ljava/util/Locale;
    if-nez v0, :cond_2

    #@13
    .line 454
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Invalid languageTag: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 457
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    #@30
    .line 458
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 605
    if-nez p1, :cond_0

    #@2
    .line 606
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "locale == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 611
    :cond_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@d
    .line 612
    .local v0, "backupLanguage":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@f
    .line 613
    .local v1, "backupRegion":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@11
    .line 616
    .local v2, "backupVariant":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@18
    .line 617
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@1f
    .line 618
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {p0, v4}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 630
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    iput-object v4, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    #@2c
    .line 632
    iget-object v4, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@2e
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    #@31
    .line 633
    iget-object v4, p0, Ljava/util/Locale$Builder;->extensions:Ljava/util/Map;

    #@33
    invoke-static {p1}, Ljava/util/Locale;->-get0(Ljava/util/Locale;)Ljava/util/Map;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@3a
    .line 635
    iget-object v4, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@3c
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    #@3f
    .line 636
    iget-object v4, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@41
    invoke-static {p1}, Ljava/util/Locale;->-get2(Ljava/util/Locale;)Ljava/util/Map;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@48
    .line 638
    iget-object v4, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@4a
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@4d
    .line 639
    iget-object v4, p0, Ljava/util/Locale$Builder;->attributes:Ljava/util/Set;

    #@4f
    invoke-static {p1}, Ljava/util/Locale;->-get1(Ljava/util/Locale;)Ljava/util/Set;

    #@52
    move-result-object v5

    #@53
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@56
    .line 641
    return-object p0

    #@57
    .line 619
    :catch_0
    move-exception v3

    #@58
    .line 620
    .local v3, "ifle":Ljava/util/IllformedLocaleException;
    iput-object v0, p0, Ljava/util/Locale$Builder;->language:Ljava/lang/String;

    #@5a
    .line 621
    iput-object v1, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@5c
    .line 622
    iput-object v2, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@5e
    .line 624
    throw v3
.end method

.method public setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Ljava/util/Locale$Builder;->region:Ljava/lang/String;

    #@7
    .line 474
    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/Locale$Builder;->normalizeAndValidateScript(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Ljava/util/Locale$Builder;->script:Ljava/lang/String;

    #@7
    .line 572
    return-object p0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    if-nez p1, :cond_0

    #@2
    .line 816
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "key == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 819
    :cond_0
    if-nez p2, :cond_1

    #@d
    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 820
    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@13
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 821
    return-object p0

    #@17
    .line 824
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 826
    .local v0, "lowerCaseKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x2

    #@22
    if-ne v2, v3, :cond_2

    #@24
    invoke-static {v0}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 834
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "_"

    #@33
    const-string/jumbo v4, "-"

    #@36
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 835
    .local v1, "lowerCaseType":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->-wrap4(Ljava/lang/String;)Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_3

    #@40
    .line 836
    new-instance v2, Ljava/util/IllformedLocaleException;

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "Invalid unicode locale type: "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 827
    .end local v1    # "lowerCaseType":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/IllformedLocaleException;

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "Invalid unicode locale keyword: "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2

    #@74
    .line 840
    .restart local v1    # "lowerCaseType":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Ljava/util/Locale$Builder;->keywords:Ljava/util/Map;

    #@76
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 842
    return-object p0
.end method

.method public setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .locals 1
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 515
    invoke-static {p1}, Ljava/util/Locale$Builder;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/util/Locale$Builder;->variant:Ljava/lang/String;

    #@6
    .line 516
    return-object p0
.end method
