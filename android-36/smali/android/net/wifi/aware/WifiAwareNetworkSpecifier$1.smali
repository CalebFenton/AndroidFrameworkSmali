.class Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 246
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    const-class v11, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 258
    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 257
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[BIIIZLandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;)V

    .line 246
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

    .line 243
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 263
    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

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

    .line 243
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
