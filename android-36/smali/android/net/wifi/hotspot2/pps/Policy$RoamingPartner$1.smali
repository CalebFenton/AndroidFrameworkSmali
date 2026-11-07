.class Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 297
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 298
    .local v0, "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    .line 302
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

    .line 294
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .registers 3
    .param p1, "size"    # I

    .line 307
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

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

    .line 294
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object p1

    return-object p1
.end method
