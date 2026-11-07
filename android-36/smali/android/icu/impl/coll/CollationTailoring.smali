.class public final Landroid/icu/impl/coll/CollationTailoring;
.super Ljava/lang/Object;
.source "CollationTailoring.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public blacklist actualLocale:Landroid/icu/util/ULocale;

.field public blacklist data:Landroid/icu/impl/coll/CollationData;

.field public blacklist maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist ownedData:Landroid/icu/impl/coll/CollationData;

.field private blacklist rules:Ljava/lang/String;

.field private blacklist rulesResource:Landroid/icu/util/UResourceBundle;

.field public blacklist settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field blacklist trie:Landroid/icu/impl/Trie2_32;

.field blacklist unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

.field public blacklist version:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/coll/SharedObject$Reference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "baseSettings":Landroid/icu/impl/coll/SharedObject$Reference;, "Landroid/icu/impl/coll/SharedObject$Reference<Landroid/icu/impl/coll/CollationSettings;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    .line 38
    if-eqz p1, :cond_16

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 42
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    goto :goto_22

    .line 44
    :cond_16
    new-instance v0, Landroid/icu/impl/coll/SharedObject$Reference;

    new-instance v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationSettings;-><init>()V

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/SharedObject$Reference;-><init>(Landroid/icu/impl/coll/SharedObject;)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 46
    :goto_22
    return-void
.end method

.method static blacklist makeBaseVersion(Landroid/icu/util/VersionInfo;)Landroid/icu/util/VersionInfo;
    .registers 5
    .param p0, "ucaVersion"    # Landroid/icu/util/VersionInfo;

    .line 77
    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    .line 78
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    add-int/2addr v1, v2

    .line 80
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    .line 77
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist ensureOwnedData()V
    .registers 3

    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    if-nez v0, :cond_11

    .line 50
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 51
    .local v0, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    new-instance v1, Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    .line 53
    .end local v0    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_11
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    .line 54
    return-void
.end method

.method public blacklist getRules()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    return-object v0

    .line 70
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    if-eqz v0, :cond_12

    .line 71
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method blacklist getUCAVersion()I
    .registers 3

    .line 97
    iget v0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v0, v0, 0xc

    and-int/lit16 v0, v0, 0xff0

    iget v1, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    return v0
.end method

.method blacklist setRules(Ljava/lang/String;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/String;

    .line 58
    nop

    .line 59
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    .line 60
    return-void
.end method

.method blacklist setRulesResource(Landroid/icu/util/UResourceBundle;)V
    .registers 2
    .param p1, "res"    # Landroid/icu/util/UResourceBundle;

    .line 63
    nop

    .line 64
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    .line 65
    return-void
.end method

.method blacklist setVersion(II)V
    .registers 10
    .param p1, "baseVersion"    # I
    .param p2, "rulesVersion"    # I

    .line 85
    shr-int/lit8 v0, p2, 0x10

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 86
    .local v0, "r":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 87
    .local v1, "s":I
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 88
    .local v2, "t":I
    and-int/lit16 v3, p2, 0xff

    .line 89
    .local v3, "q":I
    sget-object v4, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffc000

    and-int/2addr v5, p1

    or-int/2addr v4, v5

    shr-int/lit8 v5, v0, 0x6

    add-int/2addr v5, v0

    and-int/lit16 v5, v5, 0x3f00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x3

    shr-int/lit8 v6, v1, 0x5

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    shl-int/lit8 v6, v3, 0x4

    add-int/2addr v5, v6

    shr-int/lit8 v6, v3, 0x4

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    .line 93
    return-void
.end method
