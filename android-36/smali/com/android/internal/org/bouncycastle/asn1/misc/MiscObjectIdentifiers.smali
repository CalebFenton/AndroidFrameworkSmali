.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;
.source "MiscObjectIdentifiers.java"


# static fields
.field public static final blacklist as_sys_sec_alg_ideaCBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist blake3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist blake3_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cast5CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib_algorithm_blowfish_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib_algorithm_blowfish_CFB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib_algorithm_blowfish_ECB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cryptlib_algorithm_blowfish_OFB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist entrust:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist entrustVersionExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist hMAC_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2b160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2b256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2b384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2b512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2s128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2s160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2s224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_blake2s256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_composite_key:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_oracle_pkcs12_trusted_key_usage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_scrypt:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeBaseURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeCARevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeCApolicyURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeCertComment:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeCertType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeRenewalURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeRevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist netscapeSSLServerName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist novell:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist novellSecurityAttribs:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignBitString_6_13:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignCzagExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignDnbDunsNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignIssStrongCrypto:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignOnSiteJurisdictionHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist verisignPrivate_6_9:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 18
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "4"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "7"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "8"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "12"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "13"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.16.840.1.113733.1"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6.3"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6.9"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignPrivate_6_9:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6.11"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignOnSiteJurisdictionHash:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6.13"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignBitString_6_13:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6.15"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignDnbDunsNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "8.1"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignIssStrongCrypto:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.16.840.1.113719"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.9.4.1"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novellSecurityAttribs:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113533.7"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "65.0"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrustVersionExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 106
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "66.10"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.3.6.1.5.5.8.1.2"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->hMAC_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_ECB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CFB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.4"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_OFB:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 133
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.1722.12.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.12"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.16"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.4"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s128:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 142
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.7"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 143
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.8"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 145
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake3:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake3_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 151
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.4.11"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 158
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.18227.2.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.114027.80.4.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_composite_key:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.16.840.1.113894.746875.1.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_oracle_pkcs12_trusted_key_usage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
