.class Landroid/net/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/Network;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 507
    .local v0, "netId":I
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

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

    .line 503
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/Network;
    .registers 3
    .param p1, "size"    # I

    .line 511
    new-array v0, p1, [Landroid/net/Network;

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

    .line 503
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->newArray(I)[Landroid/net/Network;

    move-result-object p1

    return-object p1
.end method
