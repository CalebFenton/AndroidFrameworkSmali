.class Landroid/net/VpnTransportInfo$1;
.super Ljava/lang/Object;
.source "VpnTransportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/VpnTransportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/VpnTransportInfo;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 209
    new-instance v0, Landroid/net/VpnTransportInfo;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 209
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

    .line 207
    invoke-virtual {p0, p1}, Landroid/net/VpnTransportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/VpnTransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/VpnTransportInfo;
    .registers 3
    .param p1, "size"    # I

    .line 213
    new-array v0, p1, [Landroid/net/VpnTransportInfo;

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

    .line 207
    invoke-virtual {p0, p1}, Landroid/net/VpnTransportInfo$1;->newArray(I)[Landroid/net/VpnTransportInfo;

    move-result-object p1

    return-object p1
.end method
