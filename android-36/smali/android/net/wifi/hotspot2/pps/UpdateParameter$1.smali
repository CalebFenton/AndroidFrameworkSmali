.class Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 385
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 386
    .local v0, "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 394
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 395
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

    .line 382
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .registers 3
    .param p1, "size"    # I

    .line 400
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/UpdateParameter;

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

    .line 382
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object p1

    return-object p1
.end method
