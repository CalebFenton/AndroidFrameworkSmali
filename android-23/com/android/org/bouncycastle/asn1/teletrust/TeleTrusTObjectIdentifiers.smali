.class public interface abstract Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;
.super Ljava/lang/Object;
.source "TeleTrusTObjectIdentifiers.java"


# static fields
.field public static final brainpoolP160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP160t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP192t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP224t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP256t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP320r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP320t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP384t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP512r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final brainpoolP512t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSignWithRipemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecSignWithSha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rsaSignatureWithripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "1.3.36.3"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.1"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v1, "2.2"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v1, "2.3"

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    const-string/jumbo v1, "3.1"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    const-string/jumbo v1, "2"

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    const-string/jumbo v1, "3"

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTRSAsignatureAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v1, "4"

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57
    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    const-string/jumbo v1, "3.2"

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "1"

    #@67
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    move-result-object v0

    #@6b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithSha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    const-string/jumbo v1, "2"

    #@72
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecSignWithRipemd160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->teleTrusTAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "3.2.8"

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    move-result-object v0

    #@81
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@83
    .line 43
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ecc_brainpool:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    const-string/jumbo v1, "1"

    #@88
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    move-result-object v0

    #@8c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    const-string/jumbo v1, "1"

    #@93
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@99
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9b
    const-string/jumbo v1, "1"

    #@9e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    const-string/jumbo v1, "2"

    #@a9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    move-result-object v0

    #@ad
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP160t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    const-string/jumbo v1, "3"

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    const-string/jumbo v1, "4"

    #@bf
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    move-result-object v0

    #@c3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP192t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c5
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c7
    const-string/jumbo v1, "5"

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cd
    move-result-object v0

    #@ce
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d0
    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    const-string/jumbo v1, "6"

    #@d5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    move-result-object v0

    #@d9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP224t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@db
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dd
    const-string/jumbo v1, "7"

    #@e0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    move-result-object v0

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 62
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "8"

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    move-result-object v0

    #@ef
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f1
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f3
    const-string/jumbo v1, "9"

    #@f6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    move-result-object v0

    #@fa
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    const-string/jumbo v1, "10"

    #@101
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    move-result-object v0

    #@105
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP320t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@107
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@109
    const-string/jumbo v1, "11"

    #@10c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10f
    move-result-object v0

    #@110
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@112
    .line 70
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    const-string/jumbo v1, "12"

    #@117
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    move-result-object v0

    #@11b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11d
    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11f
    const-string/jumbo v1, "13"

    #@122
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@125
    move-result-object v0

    #@126
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@128
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->versionOne:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    const-string/jumbo v1, "14"

    #@12d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    move-result-object v0

    #@131
    sput-object v0, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP512t1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@133
    .line 10
    return-void
.end method
