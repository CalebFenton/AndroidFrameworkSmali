.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 64
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@7
    .line 66
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@9
    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    #@b
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@10
    .line 113
    new-instance v0, Landroid/util/LongSparseArray;

    #@12
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@17
    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    #@19
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@1e
    .line 115
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@20
    .line 111
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_1

    #@8
    .line 397
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v9, "Cannot add an empty set of keys!"

    #@d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 401
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@16
    move-result v8

    #@17
    invoke-direct {v0, v8}, Landroid/util/ArraySet;-><init>(I)V

    #@1a
    .line 402
    .local v0, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@1d
    move-result v6

    #@1e
    .line 403
    .local v6, "kSize":I
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    #@21
    .line 404
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Ljava/security/PublicKey;

    #@27
    invoke-direct {p0, v8}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    #@2a
    move-result-wide v4

    #@2b
    .line 405
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@32
    .line 403
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 409
    .end local v4    # "id":J
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    #@38
    move-result-wide v2

    #@39
    .line 410
    .local v2, "existingKeySetId":J
    const-wide/16 v8, -0x1

    #@3b
    cmp-long v8, v2, v8

    #@3d
    if-eqz v8, :cond_4

    #@3f
    .line 413
    const/4 v1, 0x0

    #@40
    :goto_1
    if-ge v1, v6, :cond_3

    #@42
    .line 414
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    check-cast v8, Ljava/lang/Long;

    #@48
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@4b
    move-result-wide v8

    #@4c
    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    #@4f
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_1

    #@52
    .line 416
    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@54
    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@57
    move-result-object v7

    #@58
    check-cast v7, Lcom/android/server/pm/KeySetHandle;

    #@5a
    .line 417
    .local v7, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v7}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    #@5d
    .line 418
    return-object v7

    #@5e
    .line 422
    .end local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    #@61
    move-result-wide v4

    #@62
    .line 425
    .restart local v4    # "id":J
    new-instance v7, Lcom/android/server/pm/KeySetHandle;

    #@64
    invoke-direct {v7, v4, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    #@67
    .line 426
    .restart local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@69
    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@6c
    .line 427
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@6e
    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@71
    .line 428
    return-object v7
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 472
    const-string/jumbo v2, "Cannot add null public key!"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    #@9
    move-result-wide v0

    #@a
    .line 474
    .local v0, "id":J
    const-wide/16 v2, -0x1

    #@c
    cmp-long v2, v0, v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 477
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@12
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@18
    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    #@1b
    .line 478
    return-wide v0

    #@1c
    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    #@1f
    move-result-wide v0

    #@20
    .line 483
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@22
    new-instance v3, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@24
    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    #@27
    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@2a
    .line 484
    return-wide v0
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 783
    .local p1, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v5

    #@4
    .line 784
    .local v5, "numRefCounts":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@7
    .line 785
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@9
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c
    move-result-object v9

    #@d
    check-cast v9, Ljava/lang/Long;

    #@f
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v12

    #@13
    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    #@19
    .line 786
    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v2, :cond_0

    #@1b
    .line 788
    const-string/jumbo v9, "KeySetManagerService"

    #@1e
    const-string/jumbo v10, "Encountered non-existent key-set reference when reading settings"

    #@21
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 784
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 791
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Ljava/lang/Integer;

    #@2d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@30
    move-result v9

    #@31
    invoke-virtual {v2, v9}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    #@34
    goto :goto_1

    #@35
    .line 800
    .end local v2    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_1
    new-instance v6, Landroid/util/ArraySet;

    #@37
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@3a
    .line 801
    .local v6, "orphanedKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@3c
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    #@3f
    move-result v3

    #@40
    .line 802
    .local v3, "numKeySets":I
    const/4 v0, 0x0

    #@41
    :goto_2
    if-ge v0, v3, :cond_4

    #@43
    .line 803
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@45
    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@48
    move-result-object v9

    #@49
    check-cast v9, Lcom/android/server/pm/KeySetHandle;

    #@4b
    invoke-virtual {v9}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    #@4e
    move-result v9

    #@4f
    if-nez v9, :cond_2

    #@51
    .line 804
    const-string/jumbo v9, "KeySetManagerService"

    #@54
    const-string/jumbo v10, "Encountered key-set w/out package references when reading settings"

    #@57
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 805
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@5c
    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@5f
    move-result-wide v10

    #@60
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@67
    .line 807
    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@69
    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v8

    #@6d
    check-cast v8, Landroid/util/ArraySet;

    #@6f
    .line 808
    .local v8, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    #@72
    move-result v7

    #@73
    .line 809
    .local v7, "pkSize":I
    const/4 v1, 0x0

    #@74
    .local v1, "j":I
    :goto_3
    if-ge v1, v7, :cond_3

    #@76
    .line 810
    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@78
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@7b
    move-result-object v9

    #@7c
    check-cast v9, Ljava/lang/Long;

    #@7e
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@81
    move-result-wide v12

    #@82
    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@85
    move-result-object v9

    #@86
    check-cast v9, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@88
    invoke-virtual {v9}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    #@8b
    .line 809
    add-int/lit8 v1, v1, 0x1

    #@8d
    goto :goto_3

    #@8e
    .line 802
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@90
    goto :goto_2

    #@91
    .line 813
    .end local v1    # "j":I
    .end local v7    # "pkSize":I
    .end local v8    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@94
    move-result v4

    #@95
    .line 814
    .local v4, "numOrphans":I
    const/4 v0, 0x0

    #@96
    :goto_4
    if-ge v0, v4, :cond_5

    #@98
    .line 815
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@9b
    move-result-object v9

    #@9c
    check-cast v9, Ljava/lang/Long;

    #@9e
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@a1
    move-result-wide v10

    #@a2
    invoke-direct {p0, v10, v11}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    #@a5
    .line 814
    add-int/lit8 v0, v0, 0x1

    #@a7
    goto :goto_4

    #@a8
    .line 782
    :cond_5
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 557
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    #@7
    .line 558
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    #@c
    .line 559
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    #@11
    .line 560
    return-void
.end method

.method private decrementKeySetLPw(J)V
    .locals 7
    .param p1, "id"    # J

    #@0
    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    #@8
    .line 438
    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v1, :cond_0

    #@a
    .line 440
    return-void

    #@b
    .line 442
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    #@e
    move-result v4

    #@f
    if-gtz v4, :cond_2

    #@11
    .line 443
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@13
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/util/ArraySet;

    #@19
    .line 444
    .local v3, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@1c
    move-result v2

    #@1d
    .line 445
    .local v2, "pkSize":I
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@20
    .line 446
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Ljava/lang/Long;

    #@26
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@29
    move-result-wide v4

    #@2a
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    #@2d
    .line 445
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 448
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@32
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    #@35
    .line 449
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@37
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    #@3a
    .line 436
    .end local v0    # "i":I
    .end local v2    # "pkSize":I
    .end local v3    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private decrementPublicKeyLPw(J)V
    .locals 7
    .param p1, "id"    # J

    #@0
    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@8
    .line 459
    .local v0, "pk":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    if-nez v0, :cond_0

    #@a
    .line 461
    return-void

    #@b
    .line 463
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    #@e
    move-result-wide v2

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v1, v2, v4

    #@13
    if-gtz v1, :cond_1

    #@15
    .line 464
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    #@1a
    .line 457
    :cond_1
    return-void
.end method

.method private getFreeKeySetIDLPw()J
    .locals 4

    #@0
    .prologue
    .line 521
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@7
    .line 522
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@9
    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .locals 4

    #@0
    .prologue
    .line 529
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@7
    .line 530
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@9
    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .locals 4
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    .local v0, "keySetIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 268
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    #@11
    .line 269
    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Lcom/android/server/pm/KeySetHandle;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 270
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@19
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@1c
    move-result-wide v2

    #@1d
    return-wide v2

    #@1e
    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 273
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_1
    const-wide/16 v2, -0x1

    #@23
    return-wide v2
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "k"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 506
    new-instance v1, Ljava/lang/String;

    #@2
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@5
    move-result-object v4

    #@6
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    #@9
    .line 507
    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    #@a
    .local v2, "publicKeyIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@c
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    #@f
    move-result v4

    #@10
    if-ge v2, v4, :cond_1

    #@12
    .line 508
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@14
    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@1a
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    #@1d
    move-result-object v3

    #@1e
    .line 509
    .local v3, "value":Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    #@20
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    #@23
    move-result-object v4

    #@24
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    #@27
    .line 510
    .local v0, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 511
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@2f
    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@32
    move-result-wide v4

    #@33
    return-wide v4

    #@34
    .line 507
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 514
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :cond_1
    const-wide/16 v4, -0x1

    #@39
    return-wide v4
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 493
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "keyMapIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 494
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@b
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/util/ArraySet;

    #@11
    .line 495
    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 496
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@19
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@1c
    move-result-wide v2

    #@1d
    return-wide v2

    #@1e
    .line 493
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 499
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-wide/16 v2, -0x1

    #@23
    return-wide v2
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p2, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@2
    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@5
    move-result-object v6

    #@6
    .line 285
    .local v6, "prevDefinedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/ArrayMap;

    #@8
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@b
    .line 286
    .local v4, "newKeySetAliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v1

    #@f
    .line 287
    .local v1, "defMapSize":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@12
    .line 288
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    .line 289
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v7

    #@1c
    check-cast v7, Landroid/util/ArraySet;

    #@1e
    .line 290
    .local v7, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_1

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 291
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    #@25
    move-result-object v3

    #@26
    .line 292
    .local v3, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v3}, Lcom/android/server/pm/KeySetHandle;->getId()J

    #@29
    move-result-wide v8

    #@2a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v4, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 287
    .end local v3    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 290
    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@37
    move-result v8

    #@38
    if-lez v8, :cond_0

    #@3a
    goto :goto_1

    #@3b
    .line 297
    .end local v0    # "alias":Ljava/lang/String;
    .end local v7    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@3e
    move-result v5

    #@3f
    .line 298
    .local v5, "prevDefSize":I
    const/4 v2, 0x0

    #@40
    :goto_2
    if-ge v2, v5, :cond_3

    #@42
    .line 299
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    check-cast v8, Ljava/lang/Long;

    #@48
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@4b
    move-result-wide v8

    #@4c
    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    #@4f
    .line 298
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_2

    #@52
    .line 301
    :cond_3
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@54
    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    #@57
    .line 304
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@59
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Landroid/util/ArrayMap;)V

    #@5c
    .line 305
    return-void
.end method

.method public addScannedPackageLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 219
    const-string/jumbo v1, "Attempted to add null pkg to ksms."

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 220
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@8
    const-string/jumbo v2, "Attempted to add null pkg to ksms."

    #@b
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 221
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@10
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@18
    .line 222
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "pkg: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 223
    const-string/jumbo v2, "does not have a corresponding entry in mPackages."

    #@2d
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 224
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@3a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    #@3d
    .line 225
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@3f
    if-eqz v1, :cond_0

    #@41
    .line 226
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    #@46
    .line 227
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 228
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@4c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    #@4f
    .line 218
    :cond_0
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@2
    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@5
    move-result-wide v4

    #@6
    .line 242
    .local v4, "signingKeySetId":J
    const-wide/16 v6, -0x1

    #@8
    cmp-long v6, v4, v6

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 243
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    #@f
    move-result-object v0

    #@10
    .line 244
    .local v0, "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 247
    return-void

    #@19
    .line 251
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    #@1c
    .line 256
    .end local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    #@1f
    move-result-object v1

    #@20
    .line 257
    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->getId()J

    #@23
    move-result-wide v2

    #@24
    .line 258
    .local v2, "id":J
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@26
    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    #@29
    .line 259
    return-void
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 315
    .local p2, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    #@3
    move-result v1

    #@4
    .line 316
    .local v1, "uaSize":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 317
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@9
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/String;

    #@f
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    #@12
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 319
    :cond_0
    return-void
.end method

.method public assertScannedPackageValid(Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 185
    if-eqz p1, :cond_0

    #@4
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6
    if-nez v5, :cond_1

    #@8
    .line 186
    :cond_0
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 187
    const-string/jumbo v6, "Passed invalid package to keyset validation."

    #@d
    .line 186
    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@10
    throw v5

    #@11
    .line 189
    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    #@13
    .line 190
    .local v3, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v3, :cond_2

    #@15
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@18
    move-result v5

    #@19
    if-gtz v5, :cond_3

    #@1b
    .line 191
    :cond_2
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    #@1d
    .line 192
    const-string/jumbo v6, "Package has invalid signing-key-set."

    #@20
    .line 191
    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 190
    :cond_3
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_2

    #@2a
    .line 194
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    #@2c
    .line 195
    .local v1, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    if-eqz v1, :cond_8

    #@2e
    .line 196
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_4

    #@34
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_5

    #@3a
    .line 197
    :cond_4
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    #@3c
    .line 198
    const-string/jumbo v6, "Package has null defined key set."

    #@3f
    .line 197
    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@42
    throw v5

    #@43
    .line 200
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@46
    move-result v0

    #@47
    .line 201
    .local v0, "defMapSize":I
    const/4 v2, 0x0

    #@48
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    #@4a
    .line 202
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroid/util/ArraySet;

    #@50
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@53
    move-result v5

    #@54
    if-lez v5, :cond_6

    #@56
    .line 203
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/util/ArraySet;

    #@5c
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5f
    move-result v5

    #@60
    .line 202
    if-eqz v5, :cond_7

    #@62
    .line 204
    :cond_6
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    #@64
    .line 205
    const-string/jumbo v6, "Package has null/no public keys for defined key-sets."

    #@67
    .line 204
    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 201
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 209
    .end local v0    # "defMapSize":I
    .end local v2    # "i":I
    :cond_8
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    #@70
    .line 210
    .local v4, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_9

    #@72
    .line 211
    if-eqz v1, :cond_a

    #@74
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@77
    move-result-object v5

    #@78
    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@7b
    move-result v5

    #@7c
    if-eqz v5, :cond_a

    #@7e
    .line 184
    :cond_9
    return-void

    #@7f
    .line 212
    :cond_a
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    #@81
    .line 213
    const-string/jumbo v6, "Package has upgrade-key-sets without corresponding definitions."

    #@84
    .line 212
    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@87
    throw v5
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    #@0
    .prologue
    .line 569
    const/4 v13, 0x0

    #@1
    .line 570
    .local v13, "printedHeader":Z
    move-object/from16 v0, p0

    #@3
    iget-object v15, v0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v15

    #@9
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v5

    #@d
    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v15

    #@11
    if-eqz v15, :cond_c

    #@13
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/util/Map$Entry;

    #@19
    .line 571
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v9

    #@1d
    check-cast v9, Ljava/lang/String;

    #@1f
    .line 572
    .local v9, "keySetPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@21
    move-object/from16 v0, p2

    #@23
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v15

    #@27
    if-eqz v15, :cond_0

    #@29
    .line 575
    :cond_1
    if-nez v13, :cond_3

    #@2b
    .line 576
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@2e
    move-result v15

    #@2f
    if-eqz v15, :cond_2

    #@31
    .line 577
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@34
    .line 578
    :cond_2
    const-string/jumbo v15, "Key Set Manager:"

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 579
    const/4 v13, 0x1

    #@3d
    .line 581
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v12

    #@41
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    #@43
    .line 582
    .local v12, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v15, "  ["

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    move-object/from16 v0, p1

    #@4d
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    const-string/jumbo v15, "]"

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 583
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@5a
    if-eqz v15, :cond_0

    #@5c
    .line 584
    const/4 v14, 0x0

    #@5d
    .line 585
    .local v14, "printedLabel":Z
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@5f
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@62
    move-result-object v15

    #@63
    invoke-virtual {v15}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@66
    move-result-object v15

    #@67
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v7

    #@6b
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v15

    #@6f
    if-eqz v15, :cond_5

    #@71
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v6

    #@75
    check-cast v6, Ljava/util/Map$Entry;

    #@77
    .line 586
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v14, :cond_4

    #@79
    .line 587
    const-string/jumbo v15, "      KeySets Aliases: "

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    .line 588
    const/4 v14, 0x1

    #@82
    .line 592
    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@85
    move-result-object v15

    #@86
    check-cast v15, Ljava/lang/String;

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 593
    const/16 v15, 0x3d

    #@8f
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    #@94
    .line 594
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@97
    move-result-object v15

    #@98
    check-cast v15, Ljava/lang/Long;

    #@9a
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@9d
    move-result-wide v18

    #@9e
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@a1
    move-result-object v15

    #@a2
    move-object/from16 v0, p1

    #@a4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    goto :goto_1

    #@a8
    .line 590
    :cond_4
    const-string/jumbo v15, ", "

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b0
    goto :goto_2

    #@b1
    .line 596
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    if-eqz v14, :cond_6

    #@b3
    .line 597
    const-string/jumbo v15, ""

    #@b6
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bb
    .line 599
    :cond_6
    const/4 v14, 0x0

    #@bc
    .line 600
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@be
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    #@c1
    move-result v15

    #@c2
    if-eqz v15, :cond_8

    #@c4
    .line 601
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@c6
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@c9
    move-result-object v2

    #@ca
    .line 602
    .local v2, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@cd
    move-result v3

    #@ce
    .line 603
    .local v3, "dksSize":I
    const/4 v8, 0x0

    #@cf
    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_8

    #@d1
    .line 604
    if-nez v14, :cond_7

    #@d3
    .line 605
    const-string/jumbo v15, "      Defined KeySets: "

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 606
    const/4 v14, 0x1

    #@dc
    .line 610
    :goto_4
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@df
    move-result-object v15

    #@e0
    check-cast v15, Ljava/lang/Long;

    #@e2
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@e5
    move-result-wide v18

    #@e6
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@e9
    move-result-object v15

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    .line 603
    add-int/lit8 v8, v8, 0x1

    #@f1
    goto :goto_3

    #@f2
    .line 608
    :cond_7
    const-string/jumbo v15, ", "

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    goto :goto_4

    #@fb
    .line 613
    .end local v2    # "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "dksSize":I
    .end local v8    # "i":I
    :cond_8
    if-eqz v14, :cond_9

    #@fd
    .line 614
    const-string/jumbo v15, ""

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@105
    .line 616
    :cond_9
    const/4 v14, 0x0

    #@106
    .line 617
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@108
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@10b
    move-result-wide v16

    #@10c
    .line 618
    .local v16, "signingKeySet":J
    const-string/jumbo v15, "      Signing KeySets: "

    #@10f
    move-object/from16 v0, p1

    #@111
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    .line 619
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@117
    move-result-object v15

    #@118
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11d
    .line 620
    const-string/jumbo v15, ""

    #@120
    move-object/from16 v0, p1

    #@122
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@125
    .line 621
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@127
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    #@12a
    move-result v15

    #@12b
    if-eqz v15, :cond_b

    #@12d
    .line 622
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@12f
    invoke-virtual {v15}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    #@132
    move-result-object v18

    #@133
    const/4 v15, 0x0

    #@134
    move-object/from16 v0, v18

    #@136
    array-length v0, v0

    #@137
    move/from16 v19, v0

    #@139
    :goto_5
    move/from16 v0, v19

    #@13b
    if-ge v15, v0, :cond_b

    #@13d
    aget-wide v10, v18, v15

    #@13f
    .line 623
    .local v10, "keySetId":J
    if-nez v14, :cond_a

    #@141
    .line 624
    const-string/jumbo v20, "      Upgrade KeySets: "

    #@144
    move-object/from16 v0, p1

    #@146
    move-object/from16 v1, v20

    #@148
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14b
    .line 625
    const/4 v14, 0x1

    #@14c
    .line 629
    :goto_6
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@14f
    move-result-object v20

    #@150
    move-object/from16 v0, p1

    #@152
    move-object/from16 v1, v20

    #@154
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@157
    .line 622
    add-int/lit8 v15, v15, 0x1

    #@159
    goto :goto_5

    #@15a
    .line 627
    :cond_a
    const-string/jumbo v20, ", "

    #@15d
    move-object/from16 v0, p1

    #@15f
    move-object/from16 v1, v20

    #@161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    goto :goto_6

    #@165
    .line 632
    .end local v10    # "keySetId":J
    :cond_b
    if-eqz v14, :cond_0

    #@167
    .line 633
    const-string/jumbo v15, ""

    #@16a
    move-object/from16 v0, p1

    #@16c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    goto/16 :goto_0

    #@171
    .line 568
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "keySetPackage":Ljava/lang/String;
    .end local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "printedLabel":Z
    .end local v16    # "signingKeySet":J
    :cond_c
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x2

    #@7
    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@e
    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 328
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 329
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    #@b
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 330
    :cond_0
    return-object v3

    #@10
    .line 332
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@12
    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/Long;

    #@1c
    .line 333
    .local v0, "keySetId":Ljava/lang/Long;
    if-nez v0, :cond_2

    #@1e
    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Unknown KeySet alias: "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 336
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@3a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3d
    move-result-wide v4

    #@3e
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    #@44
    return-object v2
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .locals 9
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 352
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@3
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/util/ArraySet;

    #@9
    .line 353
    .local v2, "pkIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v2, :cond_0

    #@b
    .line 354
    return-object v5

    #@c
    .line 356
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    #@e
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 357
    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@14
    move-result v3

    #@15
    .line 358
    .local v3, "pkSize":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@18
    .line 359
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/lang/Long;

    #@20
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@23
    move-result-wide v6

    #@24
    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@2a
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@31
    .line 358
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 361
    :cond_1
    return-object v1
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 372
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 373
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@b
    .line 374
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 377
    :cond_0
    return-object v6

    #@10
    .line 375
    :cond_1
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@12
    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@15
    move-result-wide v2

    #@16
    .line 376
    const-wide/16 v4, -0x1

    #@18
    .line 375
    cmp-long v1, v2, v4

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 379
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@1e
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@20
    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    #@2a
    return-object v1
.end method

.method public isIdValidKeySetId(J)Z
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 156
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@a
    .line 157
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@c
    .line 158
    new-instance v5, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v6, "Invalid package name"

    #@11
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v5

    #@15
    .line 160
    :cond_0
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 161
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@1b
    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@1e
    move-result-wide v6

    #@1f
    cmp-long v5, v6, v8

    #@21
    if-nez v5, :cond_2

    #@23
    .line 163
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    #@25
    const-string/jumbo v6, "Package has no KeySet data"

    #@28
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v5

    #@2c
    .line 165
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    #@2f
    move-result-wide v0

    #@30
    .line 166
    .local v0, "id":J
    cmp-long v5, v0, v8

    #@32
    if-nez v5, :cond_3

    #@34
    .line 167
    const/4 v5, 0x0

    #@35
    return v5

    #@36
    .line 169
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@38
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@3a
    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@3d
    move-result-wide v6

    #@3e
    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/util/ArraySet;

    #@44
    .line 170
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@46
    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroid/util/ArraySet;

    #@4c
    .line 171
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v5

    #@50
    return v5
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    #@0
    .prologue
    .line 130
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 131
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@a
    .line 132
    new-instance v5, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v6, "Invalid package name"

    #@f
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 134
    :cond_0
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@15
    if-nez v5, :cond_1

    #@17
    .line 135
    new-instance v5, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v6, "Package has no KeySet data"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 137
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    #@23
    move-result-wide v0

    #@24
    .line 138
    .local v0, "id":J
    const-wide/16 v6, -0x1

    #@26
    cmp-long v5, v0, v6

    #@28
    if-nez v5, :cond_2

    #@2a
    .line 139
    const/4 v5, 0x0

    #@2b
    return v5

    #@2c
    .line 141
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@2e
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@30
    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@33
    move-result-wide v6

    #@34
    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/util/ArraySet;

    #@3a
    .line 142
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@3c
    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Landroid/util/ArraySet;

    #@42
    .line 143
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    #@45
    move-result v5

    #@46
    return v5
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x3

    #@2
    .line 743
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v3

    #@6
    .line 745
    .local v3, "outerDepth":I
    const-wide/16 v0, 0x0

    #@8
    .line 746
    .local v0, "currentKeySetId":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v8

    #@c
    .local v8, "type":I
    const/4 v9, 0x1

    #@d
    if-eq v8, v9, :cond_3

    #@f
    .line 747
    if-ne v8, v11, :cond_1

    #@11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14
    move-result v9

    #@15
    if-le v9, v3, :cond_3

    #@17
    .line 748
    :cond_1
    if-eq v8, v11, :cond_0

    #@19
    const/4 v9, 0x4

    #@1a
    if-eq v8, v9, :cond_0

    #@1c
    .line 751
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    .line 752
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "keyset"

    #@23
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v9

    #@27
    if-eqz v9, :cond_2

    #@29
    .line 753
    const-string/jumbo v9, "identifier"

    #@2c
    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 754
    .local v2, "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@33
    move-result-wide v0

    #@34
    .line 755
    const/4 v6, 0x0

    #@35
    .line 756
    .local v6, "refCount":I
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    #@37
    new-instance v10, Lcom/android/server/pm/KeySetHandle;

    #@39
    invoke-direct {v10, v0, v1, v6}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    #@3c
    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@3f
    .line 757
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@41
    new-instance v10, Landroid/util/ArraySet;

    #@43
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@46
    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@49
    goto :goto_0

    #@4a
    .line 758
    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v6    # "refCount":I
    :cond_2
    const-string/jumbo v9, "key-id"

    #@4d
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_0

    #@53
    .line 759
    const-string/jumbo v9, "identifier"

    #@56
    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 760
    .restart local v2    # "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5d
    move-result-wide v4

    #@5e
    .line 761
    .local v4, "id":J
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@60
    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@63
    move-result-object v9

    #@64
    check-cast v9, Landroid/util/ArraySet;

    #@66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 742
    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 687
    .local p2, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 688
    .local v0, "currentKeySetId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v2

    #@6
    .line 689
    .local v2, "outerDepth":I
    const-string/jumbo v9, "version"

    #@9
    const/4 v10, 0x0

    #@a
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    .line 690
    .local v6, "recordedVersionStr":Ljava/lang/String;
    if-nez v6, :cond_3

    #@10
    .line 693
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v8

    #@14
    .local v8, "type":I
    const/4 v9, 0x1

    #@15
    if-eq v8, v9, :cond_1

    #@17
    .line 694
    const/4 v9, 0x3

    #@18
    if-ne v8, v9, :cond_0

    #@1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1d
    move-result v9

    #@1e
    if-gt v9, v2, :cond_0

    #@20
    .line 699
    :cond_1
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@25
    move-result-object v9

    #@26
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v4

    #@2a
    .local v4, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v9

    #@2e
    if-eqz v9, :cond_2

    #@30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@36
    .line 700
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v3}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    #@39
    goto :goto_0

    #@3a
    .line 702
    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return-void

    #@3b
    .line 704
    .end local v4    # "p$iterator":Ljava/util/Iterator;
    .end local v8    # "type":I
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e
    move-result v5

    #@3f
    .line 705
    .local v5, "recordedVersion":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@42
    move-result v8

    #@43
    .restart local v8    # "type":I
    const/4 v9, 0x1

    #@44
    if-eq v8, v9, :cond_9

    #@46
    .line 706
    const/4 v9, 0x3

    #@47
    if-ne v8, v9, :cond_5

    #@49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4c
    move-result v9

    #@4d
    if-le v9, v2, :cond_9

    #@4f
    .line 707
    :cond_5
    const/4 v9, 0x3

    #@50
    if-eq v8, v9, :cond_4

    #@52
    const/4 v9, 0x4

    #@53
    if-eq v8, v9, :cond_4

    #@55
    .line 710
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    .line 711
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "keys"

    #@5c
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_6

    #@62
    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@65
    goto :goto_1

    #@66
    .line 713
    :cond_6
    const-string/jumbo v9, "keysets"

    #@69
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v9

    #@6d
    if-eqz v9, :cond_7

    #@6f
    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@72
    goto :goto_1

    #@73
    .line 715
    :cond_7
    const-string/jumbo v9, "lastIssuedKeyId"

    #@76
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v9

    #@7a
    if-eqz v9, :cond_8

    #@7c
    .line 716
    const-string/jumbo v9, "value"

    #@7f
    const/4 v10, 0x0

    #@80
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@87
    move-result-wide v10

    #@88
    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@8a
    goto :goto_1

    #@8b
    .line 717
    :cond_8
    const-string/jumbo v9, "lastIssuedKeySetId"

    #@8e
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v9

    #@92
    if-eqz v9, :cond_4

    #@94
    .line 718
    const-string/jumbo v9, "value"

    #@97
    const/4 v10, 0x0

    #@98
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@9f
    move-result-wide v10

    #@a0
    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@a2
    goto :goto_1

    #@a3
    .line 722
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    #@a6
    .line 685
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 727
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 729
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    const/4 v3, 0x1

    #@a
    if-eq v2, v3, :cond_2

    #@c
    .line 730
    if-ne v2, v4, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v3

    #@12
    if-le v3, v0, :cond_2

    #@14
    .line 731
    :cond_1
    if-eq v2, v4, :cond_0

    #@16
    const/4 v3, 0x4

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 734
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 735
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "public-key"

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@29
    goto :goto_0

    #@2a
    .line 726
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 768
    const-string/jumbo v1, "identifier"

    #@4
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 769
    .local v7, "encodedID":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b
    move-result-wide v2

    #@c
    .line 770
    .local v2, "identifier":J
    const/4 v4, 0x0

    #@d
    .line 771
    .local v4, "refCount":I
    const-string/jumbo v1, "value"

    #@10
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 772
    .local v8, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@17
    move-result-object v5

    #@18
    .line 773
    .local v5, "pub":Ljava/security/PublicKey;
    if-eqz v5, :cond_0

    #@1a
    .line 774
    new-instance v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@1c
    move-object v1, p0

    #@1d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;)V

    #@20
    .line 775
    .local v0, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@22
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@25
    .line 767
    .end local v0    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_0
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 542
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "pkg name: "

    #@10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 543
    const-string/jumbo v6, "does not have a corresponding entry in mPackages."

    #@1b
    .line 542
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 544
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@28
    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@2b
    move-result-wide v4

    #@2c
    .line 545
    .local v4, "signingKeySetId":J
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    #@2f
    .line 546
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@31
    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@34
    move-result-object v0

    #@35
    .line 547
    .local v0, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    #@36
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@39
    move-result v3

    #@3a
    if-ge v1, v3, :cond_0

    #@3c
    .line 548
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/lang/Long;

    #@42
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@45
    move-result-wide v6

    #@46
    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    #@49
    .line 547
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 552
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    #@4f
    .line 553
    return-void
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 640
    const-string/jumbo v0, "keyset-settings"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 641
    const-string/jumbo v0, "version"

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 642
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    #@15
    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    #@18
    .line 644
    const-string/jumbo v0, "lastIssuedKeyId"

    #@1b
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 645
    const-string/jumbo v0, "value"

    #@21
    iget-wide v2, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 646
    const-string/jumbo v0, "lastIssuedKeyId"

    #@2d
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 647
    const-string/jumbo v0, "lastIssuedKeySetId"

    #@33
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 648
    const-string/jumbo v0, "value"

    #@39
    iget-wide v2, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 649
    const-string/jumbo v0, "lastIssuedKeySetId"

    #@45
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 650
    const-string/jumbo v0, "keyset-settings"

    #@4b
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 639
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 668
    const-string/jumbo v7, "keysets"

    #@4
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 669
    const/4 v5, 0x0

    #@8
    .local v5, "keySetIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@a
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    #@d
    move-result v7

    #@e
    if-ge v5, v7, :cond_1

    #@10
    .line 670
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@12
    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@15
    move-result-wide v0

    #@16
    .line 671
    .local v0, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    #@18
    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroid/util/ArraySet;

    #@1e
    .line 672
    .local v6, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v7, "keyset"

    #@21
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 673
    const-string/jumbo v7, "identifier"

    #@27
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 674
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v4

    #@32
    .local v4, "keyId$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_0

    #@38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Ljava/lang/Long;

    #@3e
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@41
    move-result-wide v2

    #@42
    .line 675
    .local v2, "keyId":J
    const-string/jumbo v7, "key-id"

    #@45
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 676
    const-string/jumbo v7, "identifier"

    #@4b
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    .line 677
    const-string/jumbo v7, "key-id"

    #@55
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    goto :goto_1

    #@59
    .line 679
    .end local v2    # "keyId":J
    :cond_0
    const-string/jumbo v7, "keyset"

    #@5c
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5f
    .line 669
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_0

    #@62
    .line 681
    .end local v0    # "id":J
    .end local v4    # "keyId$iterator":Ljava/util/Iterator;
    .end local v6    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-string/jumbo v7, "keysets"

    #@65
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@68
    .line 667
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 654
    const-string/jumbo v5, "keys"

    #@4
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 655
    const/4 v1, 0x0

    #@8
    .local v1, "pKeyIndex":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@a
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    #@d
    move-result v5

    #@e
    if-ge v1, v5, :cond_0

    #@10
    .line 656
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@12
    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@15
    move-result-wide v2

    #@16
    .line 657
    .local v2, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    #@18
    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    #@1e
    .line 658
    .local v4, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 659
    .local v0, "encodedKey":Ljava/lang/String;
    const-string/jumbo v5, "public-key"

    #@29
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2c
    .line 660
    const-string/jumbo v5, "identifier"

    #@2f
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 661
    const-string/jumbo v5, "value"

    #@39
    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 662
    const-string/jumbo v5, "public-key"

    #@3f
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 655
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 664
    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_0
    const-string/jumbo v5, "keys"

    #@48
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4b
    .line 653
    return-void
.end method
