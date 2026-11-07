.class Landroid/net/vcn/VcnNetworkPolicyResult$1;
.super Ljava/lang/Object;
.source "VcnNetworkPolicyResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnNetworkPolicyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnNetworkPolicyResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    const-class v3, Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1, v2}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnNetworkPolicyResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 3
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Landroid/net/vcn/VcnNetworkPolicyResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnNetworkPolicyResult$1;->newArray(I)[Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p1

    return-object p1
.end method
