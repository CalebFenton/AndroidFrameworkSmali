.class Landroid/net/wifi/aware/ParcelablePeerHandle$1;
.super Ljava/lang/Object;
.source "ParcelablePeerHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ParcelablePeerHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/ParcelablePeerHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ParcelablePeerHandle;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "peerHandle":I
    new-instance v1, Landroid/net/wifi/aware/ParcelablePeerHandle;

    new-instance v2, Landroid/net/wifi/aware/PeerHandle;

    invoke-direct {v2, v0}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    invoke-direct {v1, v2}, Landroid/net/wifi/aware/ParcelablePeerHandle;-><init>(Landroid/net/wifi/aware/PeerHandle;)V

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

    .line 48
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ParcelablePeerHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ParcelablePeerHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/ParcelablePeerHandle;
    .registers 3
    .param p1, "size"    # I

    .line 51
    new-array v0, p1, [Landroid/net/wifi/aware/ParcelablePeerHandle;

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

    .line 48
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ParcelablePeerHandle$1;->newArray(I)[Landroid/net/wifi/aware/ParcelablePeerHandle;

    move-result-object p1

    return-object p1
.end method
