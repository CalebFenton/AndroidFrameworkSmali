.class public interface abstract Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;
.super Ljava/lang/Object;
.source "BCObjectIdentifiers.java"


# static fields
.field public static final bc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "1.3.6.1.4.1.22554"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "1"

    #@f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15
    .line 31
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v1, "1"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v1, "2.1"

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d
    const-string/jumbo v1, "2.2"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    const-string/jumbo v1, "2.3"

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    const-string/jumbo v1, "2.4"

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    const-string/jumbo v1, "1"

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57
    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    const-string/jumbo v1, "2"

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "1"

    #@67
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    move-result-object v0

    #@6b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    const-string/jumbo v1, "2"

    #@72
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "1.2"

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    move-result-object v0

    #@81
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@83
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    const-string/jumbo v1, "1.22"

    #@88
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    move-result-object v0

    #@8c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    const-string/jumbo v1, "1.42"

    #@93
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@99
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9b
    const-string/jumbo v1, "1.2"

    #@9e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    const-string/jumbo v1, "1.22"

    #@a9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    move-result-object v0

    #@ad
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    .line 70
    sget-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b1
    const-string/jumbo v1, "1.42"

    #@b4
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 10
    return-void
.end method
