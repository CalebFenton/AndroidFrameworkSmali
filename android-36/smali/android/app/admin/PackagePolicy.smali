.class public final Landroid/app/admin/PackagePolicy;
.super Ljava/lang/Object;
.source "PackagePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PackagePolicy$PackagePolicyType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PackagePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PACKAGE_POLICY_ALLOWLIST:I = 0x3

.field public static final whitelist PACKAGE_POLICY_ALLOWLIST_AND_SYSTEM:I = 0x2

.field public static final whitelist PACKAGE_POLICY_BLOCKLIST:I = 0x1


# instance fields
.field private blacklist mPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPolicyType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/app/admin/PackagePolicy$1;

    invoke-direct {v0}, Landroid/app/admin/PackagePolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "policyType"    # I

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/PackagePolicy;-><init>(ILjava/util/Set;)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Set;)V
    .registers 5
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 111
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_15
    :goto_15
    iput p1, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    .line 115
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    .line 120
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/PackagePolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/PackagePolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 185
    return v0

    .line 187
    :cond_4
    instance-of v1, p1, Landroid/app/admin/PackagePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 188
    return v2

    .line 190
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/admin/PackagePolicy;

    .line 191
    .local v1, "that":Landroid/app/admin/PackagePolicy;
    iget v3, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    iget v4, v1, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPolicyType()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 196
    iget v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isPackageAllowed(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 152
    .local p2, "systemPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 153
    iget-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 155
    :cond_d
    iget-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 157
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    nop

    .line 155
    :goto_24
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget v0, p0, Landroid/app/admin/PackagePolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Landroid/app/admin/PackagePolicy;->mPackageNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 180
    return-void
.end method
