.class Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 588
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 589
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$smbundleToFieldMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmFields(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/util/HashMap;)V

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmEapMethod(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmPhase2Method(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 593
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 594
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    const-string v3, " received during unparceling"

    const-string v4, "WifiEnterpriseConfig"

    if-eqz v1, :cond_4d

    array-length v5, v1

    const/16 v6, 0x64

    if-le v5, v6, :cond_4d

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of CA certificates with size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmCaCerts(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V

    goto :goto_50

    .line 599
    :cond_4d
    invoke-static {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmCaCerts(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V

    .line 602
    :goto_50
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 603
    .local v5, "privateKey":Ljava/security/PrivateKey;
    if-eqz v5, :cond_88

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    if-eqz v6, :cond_88

    .line 604
    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x2000

    if-le v6, v7, :cond_88

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid private key with size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 606
    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmClientPrivateKey(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)V

    goto :goto_8b

    .line 609
    :cond_88
    invoke-static {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmClientPrivateKey(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)V

    .line 612
    :goto_8b
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 613
    .local v6, "clientCertificateChain":[Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_b4

    array-length v7, v6

    const/4 v8, 0x5

    if-le v7, v8, :cond_b4

    .line 616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client certificate chain with size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmClientCertificateChain(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V

    goto :goto_b7

    .line 620
    :cond_b4
    invoke-static {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmClientCertificateChain(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V

    .line 623
    :goto_b7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "keyChainAlias":Ljava/lang/String;
    nop

    .line 625
    const/16 v3, 0x100

    invoke-static {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$smisFieldLengthValid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 626
    move-object v3, v2

    goto :goto_c8

    :cond_c6
    const-string v3, ""

    :goto_c8
    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmKeyChainAlias(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmIsAppInstalledDeviceKeyAndCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmIsAppInstalledCaCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmOcsp(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmIsTrustOnFirstUseEnabled(Landroid/net/wifi/WifiEnterpriseConfig;Z)V

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmUserApproveNoCaCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmMinimumTlsVersion(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmTofuDialogState(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->-$$Nest$fputmTofuConnectionState(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    .line 635
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

    .line 585
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .registers 3
    .param p1, "size"    # I

    .line 640
    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

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

    .line 585
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object p1

    return-object p1
.end method
