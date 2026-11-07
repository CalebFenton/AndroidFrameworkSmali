.class Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 626
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 627
    .local v0, "certCredential":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    .line 629
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

    .line 623
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .registers 3
    .param p1, "size"    # I

    .line 634
    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

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

    .line 623
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object p1

    return-object p1
.end method
