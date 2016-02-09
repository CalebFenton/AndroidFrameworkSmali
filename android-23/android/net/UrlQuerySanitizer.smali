.class public Landroid/net/UrlQuerySanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UrlQuerySanitizer$ParameterValuePair;,
        Landroid/net/UrlQuerySanitizer$ValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
    }
.end annotation


# static fields
.field private static final sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# instance fields
.field private mAllowUnregisteredParamaters:Z

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferFirstRepeatedParameter:Z

.field private final mSanitizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/UrlQuerySanitizer$ValueSanitizer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 439
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@2
    .line 440
    const/4 v1, 0x0

    #@3
    .line 439
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@6
    .line 438
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@8
    .line 443
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@a
    .line 444
    const/16 v1, 0x5ff

    #@c
    .line 443
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@f
    .line 442
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@11
    .line 447
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@13
    .line 448
    const/16 v1, 0x5fc

    #@15
    .line 447
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@18
    .line 446
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@1a
    .line 451
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@1c
    .line 452
    const/16 v1, 0x194

    #@1e
    .line 451
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@21
    .line 450
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@23
    .line 455
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@25
    .line 456
    const/16 v1, 0x195

    #@27
    .line 455
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@2a
    .line 454
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2c
    .line 459
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@2e
    .line 460
    const/16 v1, 0x80

    #@30
    .line 459
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@33
    .line 458
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@35
    .line 463
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@37
    .line 464
    const/16 v1, 0x81

    #@39
    .line 463
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@3c
    .line 462
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@3e
    .line 467
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@40
    .line 468
    const/4 v1, 0x1

    #@41
    .line 467
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@44
    .line 466
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@46
    .line 471
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    #@48
    .line 472
    const/16 v1, 0x59f

    #@4a
    .line 471
    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    #@4d
    .line 470
    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@4f
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 89
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@a
    .line 92
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 91
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@11
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 93
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    #@18
    .line 98
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@1b
    move-result-object v0

    #@1c
    .line 97
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@1e
    .line 562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 89
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@a
    .line 92
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 91
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@11
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 93
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    #@18
    .line 98
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@1b
    move-result-object v0

    #@1c
    .line 97
    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@1e
    .line 586
    const/4 v0, 0x1

    #@1f
    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    #@22
    .line 587
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    #@25
    .line 585
    return-void
.end method

.method public static final getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 549
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 489
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getAllButWhitespaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 498
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 480
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getAmpAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 532
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getAmpLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 524
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 540
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getUrlAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 516
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public static final getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 506
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method


# virtual methods
.method protected addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    #@2
    .line 792
    new-instance v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroid/net/UrlQuerySanitizer$ParameterValuePair;-><init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 791
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 793
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 794
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 795
    return-void

    #@17
    .line 798
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 790
    return-void
.end method

.method protected clear()V
    .locals 1

    #@0
    .prologue
    .line 910
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 911
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 909
    return-void
.end method

.method protected decodeHexDigit(C)I
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 891
    const/16 v0, 0x30

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 892
    add-int/lit8 v0, p1, -0x30

    #@a
    return v0

    #@b
    .line 894
    :cond_0
    const/16 v0, 0x41

    #@d
    if-lt p1, v0, :cond_1

    #@f
    const/16 v0, 0x46

    #@11
    if-gt p1, v0, :cond_1

    #@13
    .line 895
    add-int/lit8 v0, p1, -0x41

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 897
    :cond_1
    const/16 v0, 0x61

    #@1a
    if-lt p1, v0, :cond_2

    #@1c
    const/16 v0, 0x66

    #@1e
    if-gt p1, v0, :cond_2

    #@20
    .line 898
    add-int/lit8 v0, p1, -0x61

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 901
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public getAllowUnregisteredParamaters()Z
    .locals 1

    #@0
    .prologue
    .line 730
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    #@2
    return v0
.end method

.method public getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 821
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@3
    move-result-object v0

    #@4
    .line 822
    .local v0, "sanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v0, :cond_0

    #@6
    iget-boolean v1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 823
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@d
    move-result-object v0

    #@e
    .line 825
    :cond_0
    return-object v0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getParameterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPreferFirstRepeatedParameter()Z
    .locals 1

    #@0
    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    #@2
    return v0
.end method

.method public getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@8
    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isHexDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 879
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method protected parseEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 772
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 774
    .local v1, "unescapedParameter":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@7
    move-result-object v3

    #@8
    .line 776
    .local v3, "valueSanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v3, :cond_0

    #@a
    .line 777
    return-void

    #@b
    .line 779
    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 780
    .local v2, "unescapedValue":Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 781
    .local v0, "sanitizedValue":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Landroid/net/UrlQuerySanitizer;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 771
    return-void
.end method

.method public parseQuery(Ljava/lang/String;)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 617
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->clear()V

    #@4
    .line 619
    new-instance v2, Ljava/util/StringTokenizer;

    #@6
    const-string/jumbo v3, "&"

    #@9
    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 620
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 621
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 622
    .local v1, "attributeValuePair":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    if-lez v3, :cond_0

    #@1c
    .line 623
    const/16 v3, 0x3d

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@21
    move-result v0

    #@22
    .line 624
    .local v0, "assignmentIndex":I
    if-gez v0, :cond_1

    #@24
    .line 626
    const-string/jumbo v3, ""

    #@27
    invoke-virtual {p0, v1, v3}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 629
    :cond_1
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 630
    add-int/lit8 v4, v0, 0x1

    #@31
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 629
    invoke-virtual {p0, v3, v4}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    goto :goto_0

    #@39
    .line 616
    .end local v0    # "assignmentIndex":I
    .end local v1    # "attributeValuePair":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public parseUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 598
    const/16 v2, 0x3f

    #@2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v1

    #@6
    .line 600
    .local v1, "queryIndex":I
    if-ltz v1, :cond_0

    #@8
    .line 601
    add-int/lit8 v2, v1, 0x1

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 606
    .local v0, "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    #@11
    .line 597
    return-void

    #@12
    .line 604
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@15
    .restart local v0    # "query":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerParameter(Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@0
    .prologue
    .line 690
    if-nez p2, :cond_0

    #@2
    .line 691
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 693
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 689
    return-void
.end method

.method public registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@0
    .prologue
    .line 704
    array-length v1, p1

    #@1
    .line 705
    .local v1, "length":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@4
    .line 706
    iget-object v2, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    #@6
    aget-object v3, p1, v0

    #@8
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 705
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 703
    :cond_0
    return-void
.end method

.method public setAllowUnregisteredParamaters(Z)V
    .locals 0
    .param p1, "allowUnregisteredParamaters"    # Z

    #@0
    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    #@2
    .line 719
    return-void
.end method

.method public setPreferFirstRepeatedParameter(Z)V
    .locals 0
    .param p1, "preferFirstRepeatedParameter"    # Z

    #@0
    .prologue
    .line 748
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    #@2
    .line 747
    return-void
.end method

.method public setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 0
    .param p1, "sanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@0
    .prologue
    .line 432
    iput-object p1, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    #@2
    .line 431
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v10, 0x2b

    #@2
    const/16 v9, 0x25

    #@4
    const/4 v7, 0x0

    #@5
    .line 842
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v3

    #@9
    .line 843
    .local v3, "firstEscape":I
    if-gez v3, :cond_0

    #@b
    .line 844
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v3

    #@f
    .line 845
    if-gez v3, :cond_0

    #@11
    .line 846
    return-object p1

    #@12
    .line 850
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15
    move-result v5

    #@16
    .line 852
    .local v5, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b
    .line 853
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 854
    move v4, v3

    #@23
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    #@25
    .line 855
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v0

    #@29
    .line 856
    .local v0, "c":C
    if-ne v0, v10, :cond_2

    #@2b
    .line 857
    const/16 v0, 0x20

    #@2d
    .line 867
    .end local v0    # "c":C
    :cond_1
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 854
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 859
    .restart local v0    # "c":C
    :cond_2
    if-ne v0, v9, :cond_1

    #@35
    add-int/lit8 v7, v4, 0x2

    #@37
    if-ge v7, v5, :cond_1

    #@39
    .line 860
    add-int/lit8 v7, v4, 0x1

    #@3b
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    .line 861
    .local v1, "c1":C
    add-int/lit8 v7, v4, 0x2

    #@41
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v2

    #@45
    .line 862
    .local v2, "c2":C
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_1

    #@4b
    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_1

    #@51
    .line 863
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    #@54
    move-result v7

    #@55
    mul-int/lit8 v7, v7, 0x10

    #@57
    invoke-virtual {p0, v2}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    #@5a
    move-result v8

    #@5b
    add-int/2addr v7, v8

    #@5c
    int-to-char v0, v7

    #@5d
    .line 864
    add-int/lit8 v4, v4, 0x2

    #@5f
    goto :goto_1

    #@60
    .line 869
    .end local v0    # "c":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    return-object v7
.end method
