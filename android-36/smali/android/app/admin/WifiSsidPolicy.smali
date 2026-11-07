.class public final Landroid/app/admin/WifiSsidPolicy;
.super Ljava/lang/Object;
.source "WifiSsidPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/WifiSsidPolicy$WifiSsidPolicyType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/WifiSsidPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WIFI_SSID_POLICY_TYPE_ALLOWLIST:I = 0x0

.field public static final whitelist WIFI_SSID_POLICY_TYPE_DENYLIST:I = 0x1


# instance fields
.field private blacklist mPolicyType:I

.field private blacklist mSsids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Landroid/app/admin/WifiSsidPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/WifiSsidPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Set;)V
    .registers 5
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "ssids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiSsid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 88
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_17

    .line 90
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_17
    :goto_17
    iput p1, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    .line 94
    return-void

    .line 86
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID list cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/WifiSsidPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/WifiSsidPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroid/app/admin/WifiSsidPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 148
    return v2

    .line 150
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/admin/WifiSsidPolicy;

    .line 151
    .local v1, "that":Landroid/app/admin/WifiSsidPolicy;
    iget v3, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    iget v4, v1, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getPolicyType()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    return v0
.end method

.method public whitelist getSsids()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 159
    iget v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 136
    return-void
.end method
