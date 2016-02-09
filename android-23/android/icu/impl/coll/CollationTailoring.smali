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

.field public rules:Ljava/lang/String;

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
    .line 31
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
    .local p1, "baseSettings":Landroid/icu/impl/coll/SharedObject$Reference;, "Lcom/ibm/icu/impl/coll/SharedObject$Reference<Lcom/ibm/icu/impl/coll/CollationSettings;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 78
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@a
    .line 81
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@c
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@e
    .line 87
    iput v2, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@10
    .line 33
    if-eqz p1, :cond_6

    #@12
    .line 34
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@1c
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@1e
    array-length v0, v0

    #@1f
    if-nez v0, :cond_0

    #@21
    move v0, v1

    #@22
    :goto_0
    if-nez v0, :cond_1

    #@24
    new-instance v0, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v0

    #@2a
    :cond_0
    move v0, v2

    #@2b
    goto :goto_0

    #@2c
    .line 35
    :cond_1
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@2e
    if-nez v0, :cond_3

    #@30
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@36
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@38
    if-nez v0, :cond_2

    #@3a
    move v0, v1

    #@3b
    :goto_1
    if-nez v0, :cond_3

    #@3d
    new-instance v0, Ljava/lang/AssertionError;

    #@3f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v0

    #@43
    :cond_2
    move v0, v2

    #@44
    goto :goto_1

    #@45
    .line 36
    :cond_3
    sget-boolean v0, Landroid/icu/impl/coll/CollationTailoring;->-assertionsDisabled:Z

    #@47
    if-nez v0, :cond_5

    #@49
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@4f
    iget-wide v4, v0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@51
    const-wide/16 v6, 0x0

    #@53
    cmp-long v0, v4, v6

    #@55
    if-nez v0, :cond_4

    #@57
    move v0, v1

    #@58
    :goto_2
    if-nez v0, :cond_5

    #@5a
    new-instance v0, Ljava/lang/AssertionError;

    #@5c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5f
    throw v0

    #@60
    :cond_4
    move v0, v2

    #@61
    goto :goto_2

    #@62
    .line 37
    :cond_5
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@65
    move-result-object v0

    #@66
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@68
    .line 32
    :goto_3
    return-void

    #@69
    .line 39
    :cond_6
    new-instance v0, Landroid/icu/impl/coll/SharedObject$Reference;

    #@6b
    new-instance v1, Landroid/icu/impl/coll/CollationSettings;

    #@6d
    invoke-direct {v1}, Landroid/icu/impl/coll/CollationSettings;-><init>()V

    #@70
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/SharedObject$Reference;-><init>(Landroid/icu/impl/coll/SharedObject;)V

    #@73
    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@75
    goto :goto_3
.end method

.method static makeBaseVersion(Landroid/icu/util/VersionInfo;)Landroid/icu/util/VersionInfo;
    .locals 4
    .param p0, "ucaVersion"    # Landroid/icu/util/VersionInfo;

    #@0
    .prologue
    .line 53
    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@5
    move-result v0

    #@6
    .line 54
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
    .line 55
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@14
    move-result v2

    #@15
    shl-int/lit8 v2, v2, 0x6

    #@17
    .line 56
    const/4 v3, 0x0

    #@18
    .line 52
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
    .line 44
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 45
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@7
    move-result-object v1

    #@8
    iget-object v0, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@a
    .line 46
    .local v0, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    new-instance v1, Landroid/icu/impl/coll/CollationData;

    #@c
    invoke-direct {v1, v0}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@f
    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@11
    .line 48
    .end local v0    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@13
    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@15
    .line 43
    return-void
.end method

.method getUCAVersion()I
    .locals 2

    #@0
    .prologue
    .line 72
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

.method setVersion(II)V
    .locals 7
    .param p1, "baseVersion"    # I
    .param p2, "rulesVersion"    # I

    #@0
    .prologue
    .line 60
    shr-int/lit8 v4, p2, 0x10

    #@2
    const v5, 0xff00

    #@5
    and-int v1, v4, v5

    #@7
    .line 61
    .local v1, "r":I
    shr-int/lit8 v4, p2, 0x10

    #@9
    and-int/lit16 v2, v4, 0xff

    #@b
    .line 62
    .local v2, "s":I
    shr-int/lit8 v4, p2, 0x8

    #@d
    and-int/lit16 v3, v4, 0xff

    #@f
    .line 63
    .local v3, "t":I
    and-int/lit16 v0, p2, 0xff

    #@11
    .line 64
    .local v0, "q":I
    sget-object v4, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    #@13
    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@16
    move-result v4

    #@17
    shl-int/lit8 v4, v4, 0x18

    #@19
    .line 65
    const v5, 0xffc000

    #@1c
    and-int/2addr v5, p1

    #@1d
    .line 64
    or-int/2addr v4, v5

    #@1e
    .line 66
    shr-int/lit8 v5, v1, 0x6

    #@20
    add-int/2addr v5, v1

    #@21
    and-int/lit16 v5, v5, 0x3f00

    #@23
    .line 64
    or-int/2addr v4, v5

    #@24
    .line 67
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
    .line 64
    or-int/2addr v4, v5

    #@33
    iput v4, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@35
    .line 58
    return-void
.end method
