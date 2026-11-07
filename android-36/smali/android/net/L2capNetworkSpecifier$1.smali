.class Landroid/net/L2capNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "L2capNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/L2capNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/L2capNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/L2capNetworkSpecifier;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 407
    new-instance v0, Landroid/net/L2capNetworkSpecifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/L2capNetworkSpecifier;-><init>(Landroid/os/Parcel;Landroid/net/L2capNetworkSpecifier-IA;)V

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

    .line 404
    invoke-virtual {p0, p1}, Landroid/net/L2capNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/L2capNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/L2capNetworkSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 412
    new-array v0, p1, [Landroid/net/L2capNetworkSpecifier;

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

    .line 404
    invoke-virtual {p0, p1}, Landroid/net/L2capNetworkSpecifier$1;->newArray(I)[Landroid/net/L2capNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
