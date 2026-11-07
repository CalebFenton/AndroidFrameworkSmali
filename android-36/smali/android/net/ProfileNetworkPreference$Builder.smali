.class public final Landroid/net/ProfileNetworkPreference$Builder;
.super Ljava/lang/Object;
.source "ProfileNetworkPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProfileNetworkPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExcludedUids:[I

.field private blacklist mIncludedUids:[I

.field private blacklist mPreference:I

.field private blacklist mPreferenceEnterpriseId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreference:I

    .line 155
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference$Builder;->mIncludedUids:[I

    .line 156
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mExcludedUids:[I

    .line 162
    return-void
.end method

.method private blacklist isEnterpriseIdentifierValid(I)Z
    .registers 4
    .param p1, "identifier"    # I

    .line 223
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/4 v1, 0x5

    if-gt p1, v1, :cond_7

    .line 225
    return v0

    .line 227
    :cond_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist build()Landroid/net/ProfileNetworkPreference;
    .registers 9

    .line 236
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mIncludedUids:[I

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mExcludedUids:[I

    array-length v0, v0

    if-gtz v0, :cond_b

    goto :goto_13

    .line 237
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both includedUids and excludedUids cannot be nonempty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_13
    :goto_13
    iget v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreference:I

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreferenceEnterpriseId:I

    .line 242
    invoke-direct {p0, v0}, Landroid/net/ProfileNetworkPreference$Builder;->isEnterpriseIdentifierValid(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1f
    iget v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreference:I

    if-nez v0, :cond_30

    iget v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreferenceEnterpriseId:I

    if-nez v0, :cond_28

    goto :goto_30

    .line 245
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid preference enterprise identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_30
    :goto_30
    new-instance v2, Landroid/net/ProfileNetworkPreference;

    iget v3, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreference:I

    iget-object v4, p0, Landroid/net/ProfileNetworkPreference$Builder;->mIncludedUids:[I

    iget-object v5, p0, Landroid/net/ProfileNetworkPreference$Builder;->mExcludedUids:[I

    iget v6, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreferenceEnterpriseId:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/ProfileNetworkPreference;-><init>(I[I[IILandroid/net/ProfileNetworkPreference-IA;)V

    return-object v2
.end method

.method public blacklist setExcludedUids([I)Landroid/net/ProfileNetworkPreference$Builder;
    .registers 3
    .param p1, "uids"    # [I

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mExcludedUids:[I

    .line 210
    return-object p0
.end method

.method public blacklist setIncludedUids([I)Landroid/net/ProfileNetworkPreference$Builder;
    .registers 3
    .param p1, "uids"    # [I

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference$Builder;->mIncludedUids:[I

    .line 192
    return-object p0
.end method

.method public blacklist setPreference(I)Landroid/net/ProfileNetworkPreference$Builder;
    .registers 2
    .param p1, "preference"    # I

    .line 173
    iput p1, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreference:I

    .line 174
    return-object p0
.end method

.method public blacklist setPreferenceEnterpriseId(I)Landroid/net/ProfileNetworkPreference$Builder;
    .registers 2
    .param p1, "preferenceId"    # I

    .line 267
    iput p1, p0, Landroid/net/ProfileNetworkPreference$Builder;->mPreferenceEnterpriseId:I

    .line 268
    return-object p0
.end method
