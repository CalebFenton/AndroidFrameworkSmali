.class Landroid/net/LocalNetworkInfo$1;
.super Ljava/lang/Object;
.source "LocalNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/LocalNetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/LocalNetworkInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 65
    .local v0, "upstreamNetwork":Landroid/net/Network;
    new-instance v1, Landroid/net/LocalNetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/LocalNetworkInfo;-><init>(Landroid/net/Network;)V

    return-object v1
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

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/LocalNetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LocalNetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/LocalNetworkInfo;
    .registers 3
    .param p1, "size"    # I

    .line 70
    new-array v0, p1, [Landroid/net/LocalNetworkInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/LocalNetworkInfo$1;->newArray(I)[Landroid/net/LocalNetworkInfo;

    move-result-object p1

    return-object p1
.end method
