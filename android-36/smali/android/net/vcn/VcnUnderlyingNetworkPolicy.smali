.class public final Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnUnderlyingNetworkPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V
    .registers 3
    .param p1, "vcnNetworkPolicyResult"    # Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    nop

    .line 54
    const-string v0, "vcnNetworkPolicyResult"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/vcn/VcnNetworkPolicyResult;Landroid/net/vcn/VcnUnderlyingNetworkPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLandroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "isTearDownRequested"    # Z
    .param p2, "mergedNetworkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "mergedNetworkCapabilities must be nonnull"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-direct {v0, p1, p2}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 82
    :cond_4
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    .line 85
    .local v0, "that":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    iget-object v2, v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnNetworkPolicyResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isTeardownRequested()Z
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
