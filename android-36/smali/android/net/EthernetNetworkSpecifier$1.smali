.class Landroid/net/EthernetNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "EthernetNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/EthernetNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/EthernetNetworkSpecifier;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Landroid/net/EthernetNetworkSpecifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/EthernetNetworkSpecifier;-><init>(Ljava/lang/String;)V

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

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/EthernetNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/EthernetNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/EthernetNetworkSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Landroid/net/EthernetNetworkSpecifier;

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

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/EthernetNetworkSpecifier$1;->newArray(I)[Landroid/net/EthernetNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
