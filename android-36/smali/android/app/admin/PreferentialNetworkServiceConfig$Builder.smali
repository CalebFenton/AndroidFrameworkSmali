.class public final Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
.super Ljava/lang/Object;
.source "PreferentialNetworkServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PreferentialNetworkServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mAllowFallbackToDefaultConnection:Z

.field blacklist mExcludedUids:[I

.field blacklist mIncludedUids:[I

.field blacklist mIsEnabled:Z

.field blacklist mNetworkId:I

.field blacklist mShouldBlockNonMatchingNetworks:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    .line 256
    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    .line 258
    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    .line 259
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    .line 260
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    .line 265
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/PreferentialNetworkServiceConfig;
    .registers 11

    .line 375
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    array-length v0, v0

    if-gtz v0, :cond_b

    goto :goto_13

    .line 376
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both includedUids and excludedUids cannot be nonempty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_13
    :goto_13
    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    if-nez v0, :cond_1c

    goto :goto_24

    .line 380
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A config cannot both allow fallback and block non-matching networks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_24
    :goto_24
    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iget-boolean v4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    iget-boolean v5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    iget-object v6, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    iget-object v7, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    iget v8, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V

    return-object v2
.end method

.method public whitelist setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 275
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    .line 276
    return-object p0
.end method

.method public whitelist setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2
    .param p1, "uids"    # [I

    .line 364
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    .line 366
    return-object p0
.end method

.method public whitelist setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2
    .param p1, "allowFallbackToDefaultConnection"    # Z

    .line 302
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    .line 303
    return-object p0
.end method

.method public whitelist setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2
    .param p1, "uids"    # [I

    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    .line 347
    return-object p0
.end method

.method public whitelist setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 4
    .param p1, "preferenceId"    # I

    .line 397
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x5

    if-gt p1, v0, :cond_9

    .line 401
    iput p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    .line 402
    return-object p0

    .line 399
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preference identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShouldBlockNonMatchingNetworks(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2
    .param p1, "blockNonMatchingNetworks"    # Z

    .line 327
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mShouldBlockNonMatchingNetworks:Z

    .line 328
    return-object p0
.end method
