.class public final Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateCredential"
.end annotation


# static fields
.field private static final greylist-max-o CERT_SHA256_FINGER_PRINT_LENGTH:I = 0x20

.field public static final greylist-max-o CERT_TYPE_X509V3:Ljava/lang/String; = "x509v3"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCertSha256Fingerprint:[B

.field private greylist-max-o mCertType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 622
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 530
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 551
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 530
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 559
    if-eqz p1, :cond_1d

    .line 560
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 561
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_1d

    .line 562
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 566
    :cond_1d
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 581
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 582
    return v0

    .line 584
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 585
    return v2

    .line 588
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 589
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 590
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 589
    :goto_23
    return v0
.end method

.method public whitelist getCertSha256Fingerprint()[B
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-object v0
.end method

.method public whitelist getCertType()Ljava/lang/String;
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 595
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setCertSha256Fingerprint([B)V
    .registers 2
    .param p1, "certSha256Fingerprint"    # [B

    .line 537
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 538
    return-void
.end method

.method public whitelist setCertType(Ljava/lang/String;)V
    .registers 2
    .param p1, "certType"    # Ljava/lang/String;

    .line 516
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertificateType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o validate()Z
    .registers 5

    .line 610
    const-string v0, "x509v3"

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Credential"

    if-nez v0, :cond_26

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported certificate type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return v1

    .line 614
    :cond_26
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    array-length v0, v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_32

    goto :goto_34

    .line 619
    :cond_32
    const/4 v0, 0x1

    return v0

    .line 616
    :cond_34
    :goto_34
    const-string v0, "Invalid SHA-256 fingerprint"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 575
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 577
    return-void
.end method
