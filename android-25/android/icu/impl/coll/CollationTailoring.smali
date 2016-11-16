.class public final Landroid/icu/impl/coll/CollationTailoring;
.super Ljava/lang/Object;
.source "CollationTailoring.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public actualLocale:Landroid/icu/util/ULocale;

.field public data:Landroid/icu/impl/coll/CollationData;

.field public maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ownedData:Landroid/icu/impl/coll/CollationData;

.field private rules:Ljava/lang/String;

.field private rulesResource:Landroid/icu/util/UResourceBundle;

.field public settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationTailoring;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@b
    .line 34
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/SharedObject$Reference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "baseSettings":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<Landroid/icu/impl/coll/CollationSettings;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 107
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@9
    .line 113
    iput v2, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@b
    .line 36
    if-eqz p1, :cond_6

    #@d
    .line 37
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@f
    if-nez v0, :cond_1

    #@11
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@17
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@19
    array-length v0, v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    move v0, v1

    #@1d
    :goto_0
    if-nez v0, :cond_1

    #@1f
    new-instance v0, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@24
    throw v0

    #@25
    :cond_0
    move v0, v2

    #@26
    goto :goto_0

    #@27
    .line 38
    :cond_1
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@29
    if-nez v0, :cond_3

    #@2b
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@31
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@33
    if-nez v0, :cond_2

    #@35
    move v0, v1

    #@36
    :goto_1
    if-nez v0, :cond_3

    #@38
    new-instance v0, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3d
    throw v0

    #@3e
    :cond_2
    move v0, v2

    #@3f
    goto :goto_1

    #@40
    .line 39
    :cond_3
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@42
    if-nez v0, :cond_5

    #@44
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@4a
    iget-wide v4, v0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@4c
    const-wide/16 v6, 0x0

    #@4e
    cmp-long v0, v4, v6

    #@50
    if-nez v0, :cond_4

    #@52
    move v0, v1

    #@53
    :goto_2
    if-nez v0, :cond_5

    #@55
    new-instance v0, Ljava/lang/AssertionError;

    #@57
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5a
    throw v0

    #@5b
    :cond_4
    move v0, v2

    #@5c
    goto :goto_2

    #@5d
    .line 40
    :cond_5
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@63
    .line 35
    :goto_3
    return-void

    #@64
    .line 42
    :cond_6
    new-instance v0, Landroid/icu/impl/coll/SharedObject$Reference;

    #@66
    new-instance v1, Landroid/icu/impl/coll/CollationSettings;

    #@68
    invoke-direct {v1}, Landroid/icu/impl/coll/CollationSettings;-><init>()V

    #@6b
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/SharedObject$Reference;-><init>(Landroid/icu/impl/coll/SharedObject;)V

    #@6e
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@70
    goto :goto_3
.end method

.method static makeBaseVersion(Landroid/icu/util/VersionInfo;)Landroid/icu/util/VersionInfo;
    .locals 4
    .param p0, "ucaVersion"    # Landroid/icu/util/VersionInfo;

    #@0
    .prologue
    .line 76
    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@5
    move-result v0

    #@6
    .line 77
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@9
    move-result v1

    #@a
    shl-int/lit8 v1, v1, 0x3

    #@c
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@f
    move-result v2

    #@10
    add-int/2addr v1, v2

    #@11
    .line 78
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@14
    move-result v2

    #@15
    shl-int/lit8 v2, v2, 0x6

    #@17
    .line 79
    const/4 v3, 0x0

    #@18
    .line 75
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method


# virtual methods
.method ensureOwnedData()V
    .locals 2

    #@0
    .prologue
    .line 47
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 48
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v1

    #@8
    iget-object v0, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@a
    .line 49
    .local v0, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    new-instance v1, Landroid/icu/impl/coll/CollationData;

    #@c
    invoke-direct {v1, v0}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@f
    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@11
    .line 51
    .end local v0    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@13
    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@15
    .line 46
    return-void
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 66
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 68
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 69
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    #@d
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 71
    :cond_1
    const-string/jumbo v0, ""

    #@15
    return-object v0
.end method

.method getUCAVersion()I
    .locals 2

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@2
    shr-int/lit8 v0, v0, 0xc

    #@4
    and-int/lit16 v0, v0, 0xff0

    #@6
    iget v1, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@8
    shr-int/lit8 v1, v1, 0xe

    #@a
    and-int/lit8 v1, v1, 0x3

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method setRules(Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    sget-boolean v1, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 57
    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@18
    .line 55
    return-void
.end method

.method setRulesResource(Landroid/icu/util/UResourceBundle;)V
    .locals 2
    .param p1, "res"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 61
    sget-boolean v1, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 62
    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    #@18
    .line 60
    return-void
.end method

.method setVersion(II)V
    .locals 7
    .param p1, "baseVersion"    # I
    .param p2, "rulesVersion"    # I

    #@0
    .prologue
    .line 83
    shr-int/lit8 v4, p2, 0x10

    #@2
    const v5, 0xff00

    #@5
    and-int v1, v4, v5

    #@7
    .line 84
    .local v1, "r":I
    shr-int/lit8 v4, p2, 0x10

    #@9
    and-int/lit16 v2, v4, 0xff

    #@b
    .line 85
    .local v2, "s":I
    shr-int/lit8 v4, p2, 0x8

    #@d
    and-int/lit16 v3, v4, 0xff

    #@f
    .line 86
    .local v3, "t":I
    and-int/lit16 v0, p2, 0xff

    #@11
    .line 87
    .local v0, "q":I
    sget-object v4, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    #@13
    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@16
    move-result v4

    #@17
    shl-int/lit8 v4, v4, 0x18

    #@19
    .line 88
    const v5, 0xffc000

    #@1c
    and-int/2addr v5, p1

    #@1d
    .line 87
    or-int/2addr v4, v5

    #@1e
    .line 89
    shr-int/lit8 v5, v1, 0x6

    #@20
    add-int/2addr v5, v1

    #@21
    and-int/lit16 v5, v5, 0x3f00

    #@23
    .line 87
    or-int/2addr v4, v5

    #@24
    .line 90
    shl-int/lit8 v5, v2, 0x3

    #@26
    shr-int/lit8 v6, v2, 0x5

    #@28
    add-int/2addr v5, v6

    #@29
    add-int/2addr v5, v3

    #@2a
    shl-int/lit8 v6, v0, 0x4

    #@2c
    add-int/2addr v5, v6

    #@2d
    shr-int/lit8 v6, v0, 0x4

    #@2f
    add-int/2addr v5, v6

    #@30
    and-int/lit16 v5, v5, 0xff

    #@32
    .line 87
    or-int/2addr v4, v5

    #@33
    iput v4, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@35
    .line 81
    return-void
.end method
