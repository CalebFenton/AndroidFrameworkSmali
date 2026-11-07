.class Landroid/net/wifi/hotspot2/pps/Credential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1174
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 1175
    .local v0, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    .line 1179
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 1180
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 1181
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 1182
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1183
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 1184
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setMinimumTlsVersion(I)V

    .line 1186
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

    .line 1171
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;
    .registers 3
    .param p1, "size"    # I

    .line 1191
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Credential;

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

    .line 1171
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p1

    return-object p1
.end method
