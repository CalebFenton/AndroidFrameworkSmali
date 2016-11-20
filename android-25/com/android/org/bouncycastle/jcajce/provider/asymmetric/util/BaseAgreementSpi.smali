.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "BaseAgreementSpi.java"


# static fields
.field private static final defaultOids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final des:Ljava/util/Hashtable;

.field private static final keySizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final oids:Ljava/util/Hashtable;


# instance fields
.field private final kaAlgorithm:Ljava/lang/String;

.field private final kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

.field protected result:Ljava/math/BigInteger;

.field protected ukmParameters:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 38
    new-instance v4, Ljava/util/HashMap;

    #@2
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@7
    .line 39
    new-instance v4, Ljava/util/HashMap;

    #@9
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@e
    .line 40
    new-instance v4, Ljava/util/HashMap;

    #@10
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@13
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@15
    .line 42
    new-instance v4, Ljava/util/Hashtable;

    #@17
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@1a
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@1c
    .line 43
    new-instance v4, Ljava/util/Hashtable;

    #@1e
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@21
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@23
    .line 47
    const/16 v4, 0x40

    #@25
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    .line 48
    .local v3, "i64":Ljava/lang/Integer;
    const/16 v4, 0x80

    #@2b
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v0

    #@2f
    .line 49
    .local v0, "i128":Ljava/lang/Integer;
    const/16 v4, 0xc0

    #@31
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v1

    #@35
    .line 50
    .local v1, "i192":Ljava/lang/Integer;
    const/16 v4, 0x100

    #@37
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v2

    #@3b
    .line 52
    .local v2, "i256":Ljava/lang/Integer;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@3d
    const-string/jumbo v5, "DES"

    #@40
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 53
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@45
    const-string/jumbo v5, "DESEDE"

    #@48
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 54
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@4d
    const-string/jumbo v5, "BLOWFISH"

    #@50
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 55
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@55
    const-string/jumbo v5, "AES"

    #@58
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 57
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@5d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 58
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@68
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 59
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@73
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 60
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@7e
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 61
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@89
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 62
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@94
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 63
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@9f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 64
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@aa
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@af
    move-result-object v5

    #@b0
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 65
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@b5
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 66
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@c0
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@c5
    move-result-object v5

    #@c6
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 67
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@cb
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cd
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 68
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@d6
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@db
    move-result-object v5

    #@dc
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 69
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@e1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e3
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 70
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@ec
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@f1
    move-result-object v5

    #@f2
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 71
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@f7
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@fc
    move-result-object v5

    #@fd
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 72
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@102
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@107
    move-result-object v5

    #@108
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    .line 73
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@10d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@112
    move-result-object v5

    #@113
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    .line 74
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@118
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@11d
    move-result-object v5

    #@11e
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@121
    .line 75
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@123
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@125
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@128
    move-result-object v5

    #@129
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    .line 76
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@12e
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 77
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@139
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@13e
    move-result-object v5

    #@13f
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    .line 78
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@144
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@146
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@149
    move-result-object v5

    #@14a
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    .line 79
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@14f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@151
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@154
    move-result-object v5

    #@155
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    .line 80
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@15a
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@15f
    move-result-object v5

    #@160
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    .line 81
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@165
    sget-object v5, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@167
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@16a
    move-result-object v5

    #@16b
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16e
    .line 83
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@170
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@175
    move-result-object v5

    #@176
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    .line 84
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@17b
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@180
    move-result-object v5

    #@181
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@184
    .line 85
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@186
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@188
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@18b
    move-result-object v5

    #@18c
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18f
    .line 87
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@191
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@193
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@196
    move-result-object v5

    #@197
    const/16 v6, 0xa0

    #@199
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@19c
    move-result-object v6

    #@19d
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a0
    .line 88
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@1a2
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a4
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1a7
    move-result-object v5

    #@1a8
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ab
    .line 89
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@1ad
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1af
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1b2
    move-result-object v5

    #@1b3
    const/16 v6, 0x180

    #@1b5
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@1b8
    move-result-object v6

    #@1b9
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bc
    .line 90
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@1be
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1c3
    move-result-object v5

    #@1c4
    const/16 v6, 0x200

    #@1c6
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@1c9
    move-result-object v6

    #@1ca
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 92
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@1cf
    const-string/jumbo v5, "DESEDE"

    #@1d2
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d4
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    .line 93
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@1d9
    const-string/jumbo v5, "AES"

    #@1dc
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1de
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 94
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@1e3
    const-string/jumbo v5, "CAMELLIA"

    #@1e6
    sget-object v6, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e8
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1eb
    .line 95
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@1ed
    const-string/jumbo v5, "SEED"

    #@1f0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f2
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f5
    .line 96
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->defaultOids:Ljava/util/Map;

    #@1f7
    const-string/jumbo v5, "DES"

    #@1fa
    sget-object v6, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fc
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    .line 98
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@201
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@203
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@206
    move-result-object v5

    #@207
    const-string/jumbo v6, "CAST5"

    #@20a
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20d
    .line 99
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@20f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@211
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@214
    move-result-object v5

    #@215
    const-string/jumbo v6, "IDEA"

    #@218
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    .line 100
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@21d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@222
    move-result-object v5

    #@223
    const-string/jumbo v6, "Blowfish"

    #@226
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@229
    .line 101
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@22b
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@230
    move-result-object v5

    #@231
    const-string/jumbo v6, "Blowfish"

    #@234
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@237
    .line 102
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@239
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@23e
    move-result-object v5

    #@23f
    const-string/jumbo v6, "Blowfish"

    #@242
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@245
    .line 103
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@247
    sget-object v5, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@249
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@24c
    move-result-object v5

    #@24d
    const-string/jumbo v6, "Blowfish"

    #@250
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@253
    .line 104
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@255
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@257
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@25a
    move-result-object v5

    #@25b
    const-string/jumbo v6, "DES"

    #@25e
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@261
    .line 105
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@263
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@265
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@268
    move-result-object v5

    #@269
    const-string/jumbo v6, "DES"

    #@26c
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26f
    .line 106
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@271
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@273
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@276
    move-result-object v5

    #@277
    const-string/jumbo v6, "DES"

    #@27a
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27d
    .line 107
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@27f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desOFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@281
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@284
    move-result-object v5

    #@285
    const-string/jumbo v6, "DES"

    #@288
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28b
    .line 108
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@28d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@292
    move-result-object v5

    #@293
    const-string/jumbo v6, "DESede"

    #@296
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@299
    .line 109
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@29b
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2a0
    move-result-object v5

    #@2a1
    const-string/jumbo v6, "DESede"

    #@2a4
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 110
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2a9
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ab
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2ae
    move-result-object v5

    #@2af
    const-string/jumbo v6, "DESede"

    #@2b2
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b5
    .line 111
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2b7
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMSRC2wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2bc
    move-result-object v5

    #@2bd
    const-string/jumbo v6, "RC2"

    #@2c0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c3
    .line 112
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2c5
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2ca
    move-result-object v5

    #@2cb
    const-string/jumbo v6, "HmacSHA1"

    #@2ce
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d1
    .line 113
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2d3
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d5
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2d8
    move-result-object v5

    #@2d9
    const-string/jumbo v6, "HmacSHA224"

    #@2dc
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2df
    .line 114
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2e1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e3
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2e6
    move-result-object v5

    #@2e7
    const-string/jumbo v6, "HmacSHA256"

    #@2ea
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ed
    .line 115
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2ef
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2f4
    move-result-object v5

    #@2f5
    const-string/jumbo v6, "HmacSHA384"

    #@2f8
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fb
    .line 116
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@2fd
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ff
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@302
    move-result-object v5

    #@303
    const-string/jumbo v6, "HmacSHA512"

    #@306
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@309
    .line 117
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@30b
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@310
    move-result-object v5

    #@311
    const-string/jumbo v6, "Camellia"

    #@314
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@317
    .line 118
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@319
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@31e
    move-result-object v5

    #@31f
    const-string/jumbo v6, "Camellia"

    #@322
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@325
    .line 119
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@327
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@329
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@32c
    move-result-object v5

    #@32d
    const-string/jumbo v6, "Camellia"

    #@330
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@333
    .line 120
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@335
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@337
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@33a
    move-result-object v5

    #@33b
    const-string/jumbo v6, "Camellia"

    #@33e
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@341
    .line 121
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@343
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@345
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@348
    move-result-object v5

    #@349
    const-string/jumbo v6, "Camellia"

    #@34c
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34f
    .line 122
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@351
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@353
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@356
    move-result-object v5

    #@357
    const-string/jumbo v6, "Camellia"

    #@35a
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35d
    .line 123
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@35f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@361
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@364
    move-result-object v5

    #@365
    const-string/jumbo v6, "SEED"

    #@368
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36b
    .line 124
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@36d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@372
    move-result-object v5

    #@373
    const-string/jumbo v6, "SEED"

    #@376
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@379
    .line 125
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@37b
    sget-object v5, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedMAC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@380
    move-result-object v5

    #@381
    const-string/jumbo v6, "SEED"

    #@384
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@387
    .line 130
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@389
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@38e
    move-result-object v5

    #@38f
    const-string/jumbo v6, "AES"

    #@392
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@395
    .line 131
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@397
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@399
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@39c
    move-result-object v5

    #@39d
    const-string/jumbo v6, "AES"

    #@3a0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a3
    .line 132
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@3a5
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3aa
    move-result-object v5

    #@3ab
    const-string/jumbo v6, "AES"

    #@3ae
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b1
    .line 134
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@3b3
    const-string/jumbo v5, "DESEDE"

    #@3b6
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b8
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3bb
    .line 135
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@3bd
    const-string/jumbo v5, "AES"

    #@3c0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c2
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c5
    .line 136
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@3c7
    const-string/jumbo v5, "DES"

    #@3ca
    sget-object v6, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3cc
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cf
    .line 138
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@3d1
    const-string/jumbo v5, "DES"

    #@3d4
    const-string/jumbo v6, "DES"

    #@3d7
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3da
    .line 139
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@3dc
    const-string/jumbo v5, "DESEDE"

    #@3df
    const-string/jumbo v6, "DES"

    #@3e2
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e5
    .line 140
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@3e7
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e9
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3ec
    move-result-object v5

    #@3ed
    const-string/jumbo v6, "DES"

    #@3f0
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f3
    .line 141
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@3f5
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f7
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3fa
    move-result-object v5

    #@3fb
    const-string/jumbo v6, "DES"

    #@3fe
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@401
    .line 142
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@403
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@405
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@408
    move-result-object v5

    #@409
    const-string/jumbo v6, "DES"

    #@40c
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40f
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "kdf"    # Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    #@3
    .line 153
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@5
    .line 154
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@7
    .line 151
    return-void
.end method

.method protected static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "algDetails"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x5b

    #@2
    const/4 v2, 0x0

    #@3
    .line 159
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 161
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 164
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 166
    const-string/jumbo v1, "AES"

    #@21
    return-object v1

    #@22
    .line 175
    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->nameTable:Ljava/util/Map;

    #@24
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/String;

    #@2e
    .line 177
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@30
    .line 179
    return-object v0

    #@31
    .line 182
    :cond_2
    return-object p0
.end method

.method protected static getKeySize(Ljava/lang/String;)I
    .locals 3
    .param p0, "algDetails"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x5b

    #@2
    .line 187
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v1

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    const/16 v2, 0x5d

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v2

    #@14
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    add-int/lit8 v1, v1, 0x7

    #@1e
    div-int/lit8 v1, v1, 0x8

    #@20
    return v1

    #@21
    .line 192
    :cond_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 193
    .local v0, "algKey":Ljava/lang/String;
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@27
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 195
    const/4 v1, -0x1

    #@2e
    return v1

    #@2f
    .line 198
    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->keySizes:Ljava/util/Map;

    #@31
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/lang/Integer;

    #@37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v1

    #@3b
    return v1
.end method

.method protected static trimZeroes([B)[B
    .locals 4
    .param p0, "secret"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 203
    aget-byte v2, p0, v3

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 205
    return-object p0

    #@6
    .line 209
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 210
    .local v0, "ind":I
    :goto_0
    array-length v2, p0

    #@8
    if-ge v0, v2, :cond_1

    #@a
    aget-byte v2, p0, v0

    #@c
    if-nez v2, :cond_1

    #@e
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 215
    :cond_1
    array-length v2, p0

    #@12
    sub-int/2addr v2, v0

    #@13
    new-array v1, v2, [B

    #@15
    .line 217
    .local v1, "rv":[B
    array-length v2, v1

    #@16
    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 219
    return-object v1
.end method


# virtual methods
.method protected abstract bigIntToBytes(Ljava/math/BigInteger;)[B
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret()[B

    #@3
    move-result-object v0

    #@4
    .line 242
    .local v0, "secret":[B
    array-length v1, p1

    #@5
    sub-int/2addr v1, p2

    #@6
    array-length v2, v0

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 244
    new-instance v1, Ljavax/crypto/ShortBufferException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " key agreement: need "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    array-length v3, v0

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " bytes"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 247
    :cond_0
    array-length v1, v0

    #@32
    const/4 v2, 0x0

    #@33
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 249
    array-length v1, v0

    #@37
    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 256
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@3
    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@6
    move-result-object v5

    #@7
    .line 257
    .local v5, "secret":[B
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 258
    .local v0, "algKey":Ljava/lang/String;
    move-object v3, p1

    #@c
    .line 260
    .local v3, "oidAlgorithm":Ljava/lang/String;
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_0

    #@14
    .line 262
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->oids:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 265
    :cond_0
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->getKeySize(Ljava/lang/String;)I

    #@23
    move-result v2

    #@24
    .line 266
    .local v2, "keySize":I
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@26
    if-eqz v6, :cond_4

    #@28
    .line 268
    if-gez v2, :cond_1

    #@2a
    .line 270
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@2c
    new-instance v7, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v8, "unknown algorithm encountered: "

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 272
    :cond_1
    div-int/lit8 v6, v2, 0x8

    #@46
    new-array v1, v6, [B

    #@48
    .line 293
    .local v1, "keyBytes":[B
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;

    #@4a
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    #@4c
    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    #@4f
    .line 295
    .local v4, "params":Lcom/android/org/bouncycastle/crypto/params/KDFParameters;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@51
    invoke-interface {v6, v4}, Lcom/android/org/bouncycastle/crypto/DerivationFunction;->init(Lcom/android/org/bouncycastle/crypto/DerivationParameters;)V

    #@54
    .line 298
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@56
    array-length v7, v1

    #@57
    invoke-interface {v6, v1, v8, v7}, Lcom/android/org/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    #@5a
    .line 300
    move-object v5, v1

    #@5b
    .line 314
    .end local v1    # "keyBytes":[B
    .end local v4    # "params":Lcom/android/org/bouncycastle/crypto/params/KDFParameters;
    :cond_2
    :goto_0
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->des:Ljava/util/Hashtable;

    #@5d
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_3

    #@63
    .line 316
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@66
    .line 319
    :cond_3
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    #@68
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@6f
    return-object v6

    #@70
    .line 304
    :cond_4
    if-lez v2, :cond_2

    #@72
    .line 306
    div-int/lit8 v6, v2, 0x8

    #@74
    new-array v1, v6, [B

    #@76
    .line 308
    .restart local v1    # "keyBytes":[B
    array-length v6, v1

    #@77
    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7a
    .line 310
    move-object v5, v1

    #@7b
    goto :goto_0
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    .line 229
    const-string/jumbo v1, "KDF can only be used when algorithm is known"

    #@9
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method
