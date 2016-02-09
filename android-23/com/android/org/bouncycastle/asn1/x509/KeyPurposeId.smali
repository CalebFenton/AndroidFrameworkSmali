.class public Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyPurposeId.java"


# static fields
.field public static final anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field private static final id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "1.3.6.1.5.5.7.3"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    const-string/jumbo v2, "0"

    #@11
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@1a
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@1c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    const-string/jumbo v2, "1"

    #@21
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@2a
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@2c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e
    const-string/jumbo v2, "2"

    #@31
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@38
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@3a
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@3c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v2, "3"

    #@41
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@48
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@4a
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@4c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v2, "4"

    #@51
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v1

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@5a
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@5c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5e
    const-string/jumbo v2, "5"

    #@61
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    move-result-object v1

    #@65
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@68
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@6a
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@6c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    const-string/jumbo v2, "6"

    #@71
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    move-result-object v1

    #@75
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@78
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@7a
    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@7c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    const-string/jumbo v2, "7"

    #@81
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    move-result-object v1

    #@85
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@88
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@8a
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@8c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v2, "8"

    #@91
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@94
    move-result-object v1

    #@95
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@98
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@9a
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@9c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9e
    const-string/jumbo v2, "9"

    #@a1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    move-result-object v1

    #@a5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@aa
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@ac
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ae
    const-string/jumbo v2, "10"

    #@b1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    move-result-object v1

    #@b5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@ba
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@bc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    const-string/jumbo v2, "11"

    #@c1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c4
    move-result-object v1

    #@c5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@c8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@ca
    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@cc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ce
    const-string/jumbo v2, "12"

    #@d1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    move-result-object v1

    #@d5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@d8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@da
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@dc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    const-string/jumbo v2, "13"

    #@e1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e4
    move-result-object v1

    #@e5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@e8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@ea
    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@ec
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    const-string/jumbo v2, "14"

    #@f1
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f4
    move-result-object v1

    #@f5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@f8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@fa
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@fc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    const-string/jumbo v2, "15"

    #@101
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    move-result-object v1

    #@105
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@108
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@10a
    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@10c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    const-string/jumbo v2, "16"

    #@111
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    move-result-object v1

    #@115
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@118
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@11a
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@11c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11e
    const-string/jumbo v2, "17"

    #@121
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@124
    move-result-object v1

    #@125
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@128
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@12a
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@12c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    const-string/jumbo v2, "18"

    #@131
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@134
    move-result-object v1

    #@135
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@138
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@13a
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@13c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13e
    const-string/jumbo v2, "19"

    #@141
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@144
    move-result-object v1

    #@145
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@148
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@14a
    .line 116
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@14c
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14e
    const-string/jumbo v2, "1.3.6.1.4.1.311.20.2.2"

    #@151
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@154
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@157
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@159
    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@8
    .line 129
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 138
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 140
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@13
    return-object v0

    #@14
    .line 145
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method
