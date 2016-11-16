.class public interface abstract Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;
.source "MiscObjectIdentifiers.java"


# static fields
.field public static final as_sys_sec_alg_ideaCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cast5CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignBitString_6_13:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignIssStrongCrypto:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignOnSiteJurisdictionHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignPrivate_6_9:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.16.840.1.113730.1"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "1"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v1, "2"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v1, "3"

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    const-string/jumbo v1, "4"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    const-string/jumbo v1, "7"

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    const-string/jumbo v1, "8"

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v1, "12"

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57
    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    const-string/jumbo v1, "13"

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "2.16.840.1.113733.1"

    #@67
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6c
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    const-string/jumbo v1, "6.3"

    #@71
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    move-result-object v0

    #@75
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@77
    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@79
    const-string/jumbo v1, "6.9"

    #@7c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7f
    move-result-object v0

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignPrivate_6_9:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "6.11"

    #@87
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8a
    move-result-object v0

    #@8b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignOnSiteJurisdictionHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8d
    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8f
    const-string/jumbo v1, "6.13"

    #@92
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@95
    move-result-object v0

    #@96
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignBitString_6_13:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9a
    const-string/jumbo v1, "6.15"

    #@9d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    move-result-object v0

    #@a1
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a3
    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a5
    const-string/jumbo v1, "8.1"

    #@a8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ab
    move-result-object v0

    #@ac
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignIssStrongCrypto:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ae
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b0
    const-string/jumbo v1, "2.16.840.1.113719"

    #@b3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    const-string/jumbo v1, "1.9.4.1"

    #@bd
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    move-result-object v0

    #@c1
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c3
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c5
    const-string/jumbo v1, "1.2.840.113533.7"

    #@c8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@cb
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cd
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cf
    const-string/jumbo v1, "65.0"

    #@d2
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d5
    move-result-object v0

    #@d6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@da
    const-string/jumbo v1, "66.10"

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    move-result-object v0

    #@e1
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e5
    const-string/jumbo v1, "1.3.6.1.4.1.188.7.1.1.2"

    #@e8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@eb
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ed
    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ef
    const-string/jumbo v1, "1.3.6.1.4.1.3029"

    #@f2
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f7
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    const-string/jumbo v1, "1"

    #@fc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ff
    move-result-object v0

    #@100
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@102
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    const-string/jumbo v1, "1.1"

    #@107
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10a
    move-result-object v0

    #@10b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10d
    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10f
    const-string/jumbo v1, "1.2"

    #@112
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@115
    move-result-object v0

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "1.3"

    #@11d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@120
    move-result-object v0

    #@121
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@123
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@125
    const-string/jumbo v1, "1.4"

    #@128
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12b
    move-result-object v0

    #@12c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    const-string/jumbo v1, "1.3.6.1.4.1.1722.12.2"

    #@133
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@136
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@138
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13a
    const-string/jumbo v1, "1.5"

    #@13d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@140
    move-result-object v0

    #@141
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@143
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@145
    const-string/jumbo v1, "1.8"

    #@148
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14b
    move-result-object v0

    #@14c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14e
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@150
    const-string/jumbo v1, "1.12"

    #@153
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    move-result-object v0

    #@157
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@159
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15b
    const-string/jumbo v1, "1.16"

    #@15e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@161
    move-result-object v0

    #@162
    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@164
    .line 5
    return-void
.end method
