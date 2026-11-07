.class public Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "KeyPurposeId.java"


# static fields
.field public static final blacklist anyExtendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field private static final blacklist id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_kp_OCSPSigning:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_capwapAC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_capwapWTP:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_clientAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_cmKGA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_cmcCA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_cmcRA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_codeSigning:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_dvcs:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_eapOverLAN:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_eapOverPPP:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_emailProtection:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecEndSystem:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecIKE:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecTunnel:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecUser:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_macAddress:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_msSGC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_nsSGC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_sbgpCertAAServerAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvpClient:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvpServer:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvp_responder:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_serverAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_smartcardlogon:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_timeStamping:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;


# instance fields
.field private blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 74
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 78
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "12"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 86
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 94
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "16"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 102
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "17"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "18"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 110
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "19"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 118
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "27"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcCA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 125
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "28"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcRA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 132
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "32"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmKGA:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 148
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.1.1.1.22"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_macAddress:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 154
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 159
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.16.840.1.113730.4.1"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 171
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    if-eqz v0, :cond_8

    .line 173
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    return-object v0

    .line 175
    :cond_8
    if-eqz p0, :cond_14

    .line 177
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 180
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist toOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
