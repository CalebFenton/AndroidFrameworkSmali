.class public interface abstract Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;
.super Ljava/lang/Object;
.source "SECObjectIdentifiers.java"


# static fields
.field public static final ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "1.3.132.0"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "1"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v1, "2"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v1, "3"

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    const-string/jumbo v1, "4"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    const-string/jumbo v1, "5"

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    const-string/jumbo v1, "6"

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 32
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v1, "7"

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57
    .line 34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    const-string/jumbo v1, "8"

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "9"

    #@67
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    move-result-object v0

    #@6b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    const-string/jumbo v1, "10"

    #@72
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "15"

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    move-result-object v0

    #@81
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@83
    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    const-string/jumbo v1, "16"

    #@88
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    move-result-object v0

    #@8c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    const-string/jumbo v1, "17"

    #@93
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@99
    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9b
    const-string/jumbo v1, "22"

    #@9e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    const-string/jumbo v1, "23"

    #@a9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    move-result-object v0

    #@ad
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    const-string/jumbo v1, "24"

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    const-string/jumbo v1, "25"

    #@bf
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    move-result-object v0

    #@c3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c5
    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c7
    const-string/jumbo v1, "26"

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cd
    move-result-object v0

    #@ce
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d0
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    const-string/jumbo v1, "27"

    #@d5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    move-result-object v0

    #@d9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@db
    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dd
    const-string/jumbo v1, "28"

    #@e0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    move-result-object v0

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "29"

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    move-result-object v0

    #@ef
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f1
    .line 62
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f3
    const-string/jumbo v1, "30"

    #@f6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    move-result-object v0

    #@fa
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    const-string/jumbo v1, "31"

    #@101
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    move-result-object v0

    #@105
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@107
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@109
    const-string/jumbo v1, "32"

    #@10c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10f
    move-result-object v0

    #@110
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@112
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    const-string/jumbo v1, "33"

    #@117
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    move-result-object v0

    #@11b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11d
    .line 70
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11f
    const-string/jumbo v1, "34"

    #@122
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@125
    move-result-object v0

    #@126
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@128
    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    const-string/jumbo v1, "35"

    #@12d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    move-result-object v0

    #@131
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@133
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@135
    const-string/jumbo v1, "36"

    #@138
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13b
    move-result-object v0

    #@13c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13e
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@140
    const-string/jumbo v1, "37"

    #@143
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@146
    move-result-object v0

    #@147
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@149
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14b
    const-string/jumbo v1, "38"

    #@14e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@151
    move-result-object v0

    #@152
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@154
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    const-string/jumbo v1, "39"

    #@159
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15c
    move-result-object v0

    #@15d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15f
    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@161
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@163
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@165
    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@167
    .line 14
    return-void
.end method
