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
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.4.6"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.4.7"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.4.8"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.4.10"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.4.11"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.4.20"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.4.41"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    const-string/jumbo v1, "1.3.14.3.2.26"

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "1.3.36.3.2.1"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    const-string/jumbo v1, "1.3.36.3.3.1.2"

    #@69
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    const-string/jumbo v1, "2.5.8.1.1"

    #@73
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "1.3.6.1.5.5.7"

    #@7d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "1"

    #@87
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8a
    move-result-object v0

    #@8b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8d
    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8f
    const-string/jumbo v1, "2.5.29"

    #@92
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@95
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@97
    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@99
    const-string/jumbo v1, "48"

    #@9c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9f
    move-result-object v0

    #@a0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    const-string/jumbo v1, "2"

    #@a7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    move-result-object v0

    #@ab
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ad
    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    const-string/jumbo v1, "1"

    #@b2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b5
    move-result-object v0

    #@b6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    .line 5
    return-void
.end method
