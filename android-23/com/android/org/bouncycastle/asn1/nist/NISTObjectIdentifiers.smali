.class public interface abstract Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NISTObjectIdentifiers.java"


# static fields
.field public static final aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.16.840.1.101.3.4"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v1, "1"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v1, "2"

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    const-string/jumbo v1, "3"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    const-string/jumbo v1, "4"

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    const-string/jumbo v1, "5"

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 32
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->hashAlgs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v1, "6"

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57
    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    const-string/jumbo v1, "1"

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "1"

    #@67
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    move-result-object v0

    #@6b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    const-string/jumbo v1, "2"

    #@72
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "3"

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    move-result-object v0

    #@81
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@83
    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    const-string/jumbo v1, "4"

    #@88
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    move-result-object v0

    #@8c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    const-string/jumbo v1, "5"

    #@93
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@99
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9b
    const-string/jumbo v1, "6"

    #@9e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    const-string/jumbo v1, "7"

    #@a9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    move-result-object v0

    #@ad
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    const-string/jumbo v1, "21"

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    const-string/jumbo v1, "22"

    #@bf
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    move-result-object v0

    #@c3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c5
    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c7
    const-string/jumbo v1, "23"

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cd
    move-result-object v0

    #@ce
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d0
    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    const-string/jumbo v1, "24"

    #@d5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    move-result-object v0

    #@d9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@db
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dd
    const-string/jumbo v1, "25"

    #@e0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    move-result-object v0

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "26"

    #@eb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    move-result-object v0

    #@ef
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f1
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f3
    const-string/jumbo v1, "27"

    #@f6
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    move-result-object v0

    #@fa
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    const-string/jumbo v1, "41"

    #@101
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    move-result-object v0

    #@105
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@107
    .line 70
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@109
    const-string/jumbo v1, "42"

    #@10c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10f
    move-result-object v0

    #@110
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@112
    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    const-string/jumbo v1, "43"

    #@117
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    move-result-object v0

    #@11b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11d
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11f
    const-string/jumbo v1, "44"

    #@122
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@125
    move-result-object v0

    #@126
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@128
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    const-string/jumbo v1, "45"

    #@12d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    move-result-object v0

    #@131
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@133
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@135
    const-string/jumbo v1, "46"

    #@138
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13b
    move-result-object v0

    #@13c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13e
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@140
    const-string/jumbo v1, "47"

    #@143
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@146
    move-result-object v0

    #@147
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@149
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->nistAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14b
    const-string/jumbo v1, "3"

    #@14e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@151
    move-result-object v0

    #@152
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@154
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    const-string/jumbo v1, "1"

    #@159
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15c
    move-result-object v0

    #@15d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15f
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@161
    const-string/jumbo v1, "2"

    #@164
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@167
    move-result-object v0

    #@168
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16a
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16c
    const-string/jumbo v1, "3"

    #@16f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    move-result-object v0

    #@173
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@175
    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@177
    const-string/jumbo v1, "4"

    #@17a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17d
    move-result-object v0

    #@17e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@180
    .line 10
    return-void
.end method
