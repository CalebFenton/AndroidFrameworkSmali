.class Landroid/net/nsd/DiscoveryRequest$1;
.super Ljava/lang/Object;
.source "DiscoveryRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/DiscoveryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/nsd/DiscoveryRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/DiscoveryRequest;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "protocolType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "serviceType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "subtype":Ljava/lang/String;
    const-class v0, Landroid/net/Network;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v4, Landroid/net/Network;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Network;

    .line 59
    .local v4, "network":Landroid/net/Network;
    new-instance v0, Landroid/net/nsd/DiscoveryRequest;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/nsd/DiscoveryRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/net/nsd/DiscoveryRequest-IA;)V

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

    .line 51
    invoke-virtual {p0, p1}, Landroid/net/nsd/DiscoveryRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/DiscoveryRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/nsd/DiscoveryRequest;
    .registers 3
    .param p1, "size"    # I

    .line 64
    new-array v0, p1, [Landroid/net/nsd/DiscoveryRequest;

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

    .line 51
    invoke-virtual {p0, p1}, Landroid/net/nsd/DiscoveryRequest$1;->newArray(I)[Landroid/net/nsd/DiscoveryRequest;

    move-result-object p1

    return-object p1
.end method
