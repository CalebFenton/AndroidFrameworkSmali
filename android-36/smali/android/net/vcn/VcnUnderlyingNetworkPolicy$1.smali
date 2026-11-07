.class Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnUnderlyingNetworkPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    const-class v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-direct {v0, v1, v2}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(Landroid/net/vcn/VcnNetworkPolicyResult;Landroid/net/vcn/VcnUnderlyingNetworkPolicy-IA;)V

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

    .line 107
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

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

    .line 107
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;->newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object p1

    return-object p1
.end method
