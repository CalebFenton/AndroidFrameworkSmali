.class public interface abstract Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.super Ljava/lang/Object;
.source "X509ObjectIdentifiers.java"


# static fields
.field public static final commonName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final countryName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final crlAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ce:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final localityName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ocspAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organization:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organizationalUnitName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final stateOrProvinceName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.4.3"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    const-string/jumbo v1, "2.5.4.6"

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    const-string/jumbo v1, "2.5.4.7"

    #@21
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c
    const-string/jumbo v1, "2.5.4.8"

    #@2f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    const-string/jumbo v1, "2.5.4.10"

    #@3d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.4.11"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v1, "2.5.4.20"

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "2.5.4.41"

    #@67
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    move-result-object v0

    #@6e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@72
    const-string/jumbo v1, "1.3.14.3.2.26"

    #@75
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@78
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7b
    move-result-object v0

    #@7c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    const-string/jumbo v1, "1.3.36.3.2.1"

    #@83
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@86
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@89
    move-result-object v0

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "1.3.36.3.3.1.2"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@97
    move-result-object v0

    #@98
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9a
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9c
    const-string/jumbo v1, "2.5.8.1.1"

    #@9f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a5
    move-result-object v0

    #@a6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a8
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    const-string/jumbo v1, "1.3.6.1.5.5.7"

    #@ad
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b2
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    const-string/jumbo v1, "1"

    #@b7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    move-result-object v0

    #@bb
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bd
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bf
    const-string/jumbo v1, "2.5.29"

    #@c2
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c7
    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c9
    const-string/jumbo v1, "48"

    #@cc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cf
    move-result-object v0

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2"

    #@d7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    move-result-object v0

    #@df
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e1
    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    const-string/jumbo v1, "1"

    #@e6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ed
    move-result-object v0

    #@ee
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f4
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f8
    .line 5
    return-void
.end method
