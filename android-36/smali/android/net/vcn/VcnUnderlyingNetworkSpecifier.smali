.class public final Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "VcnUnderlyingNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSubIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 3
    .param p1, "subIds"    # [I

    .line 46
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 47
    const-string v0, "subIds were null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 8
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 115
    instance-of v0, p1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v0, :cond_1c

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v0

    .line 117
    .local v0, "targetSubId":I
    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_1b

    aget v5, v1, v4

    .line 118
    .local v5, "subId":I
    if-ne v0, v5, :cond_18

    .line 119
    const/4 v1, 0x1

    return v1

    .line 117
    .end local v5    # "subId":I
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 122
    :cond_1b
    return v3

    .line 127
    .end local v0    # "targetSubId":I
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    if-ne p0, p1, :cond_4

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_4
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    if-nez v0, :cond_a

    .line 96
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    .line 100
    .local v0, "lhs":Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    iget-object v2, v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getSubIds()[I
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v1, "VcnUnderlyingNetworkSpecifier ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string v1, "mSubIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 83
    return-void
.end method
