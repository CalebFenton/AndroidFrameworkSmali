.class Lcom/android/org/bouncycastle/x509/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    }
.end annotation


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 45
    new-instance v5, Ljava/util/Hashtable;

    #@2
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@7
    .line 46
    new-instance v5, Ljava/util/Hashtable;

    #@9
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@e
    .line 47
    new-instance v5, Ljava/util/HashSet;

    #@10
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@13
    sput-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@15
    .line 55
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@17
    const-string/jumbo v6, "MD5WITHRSAENCRYPTION"

    #@1a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 56
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@21
    const-string/jumbo v6, "MD5WITHRSA"

    #@24
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 57
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@2b
    const-string/jumbo v6, "SHA1WITHRSAENCRYPTION"

    #@2e
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 58
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@35
    const-string/jumbo v6, "SHA1WITHRSA"

    #@38
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 59
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@3f
    const-string/jumbo v6, "SHA224WITHRSAENCRYPTION"

    #@42
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 60
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@49
    const-string/jumbo v6, "SHA224WITHRSA"

    #@4c
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 61
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@53
    const-string/jumbo v6, "SHA256WITHRSAENCRYPTION"

    #@56
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@58
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 62
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@5d
    const-string/jumbo v6, "SHA256WITHRSA"

    #@60
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 63
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@67
    const-string/jumbo v6, "SHA384WITHRSAENCRYPTION"

    #@6a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 64
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@71
    const-string/jumbo v6, "SHA384WITHRSA"

    #@74
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@76
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 65
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@7b
    const-string/jumbo v6, "SHA512WITHRSAENCRYPTION"

    #@7e
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 66
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@85
    const-string/jumbo v6, "SHA512WITHRSA"

    #@88
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 67
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@8f
    const-string/jumbo v6, "SHA1WITHRSAANDMGF1"

    #@92
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@94
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 68
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@99
    const-string/jumbo v6, "SHA224WITHRSAANDMGF1"

    #@9c
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9e
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    .line 69
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@a3
    const-string/jumbo v6, "SHA256WITHRSAANDMGF1"

    #@a6
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a8
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 70
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@ad
    const-string/jumbo v6, "SHA384WITHRSAANDMGF1"

    #@b0
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b2
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 71
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@b7
    const-string/jumbo v6, "SHA512WITHRSAANDMGF1"

    #@ba
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 80
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@c1
    const-string/jumbo v6, "SHA1WITHDSA"

    #@c4
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c6
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 81
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@cb
    const-string/jumbo v6, "DSAWITHSHA1"

    #@ce
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d0
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 82
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@d5
    const-string/jumbo v6, "SHA224WITHDSA"

    #@d8
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@da
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 83
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@df
    const-string/jumbo v6, "SHA256WITHDSA"

    #@e2
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e4
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 84
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@e9
    const-string/jumbo v6, "SHA384WITHDSA"

    #@ec
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    .line 85
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@f3
    const-string/jumbo v6, "SHA512WITHDSA"

    #@f6
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f8
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 86
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@fd
    const-string/jumbo v6, "SHA1WITHECDSA"

    #@100
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@102
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 87
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@107
    const-string/jumbo v6, "ECDSAWITHSHA1"

    #@10a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 88
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@111
    const-string/jumbo v6, "SHA224WITHECDSA"

    #@114
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@116
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    .line 89
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@11b
    const-string/jumbo v6, "SHA256WITHECDSA"

    #@11e
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@120
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    .line 90
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@125
    const-string/jumbo v6, "SHA384WITHECDSA"

    #@128
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 91
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@12f
    const-string/jumbo v6, "SHA512WITHECDSA"

    #@132
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@134
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 104
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@139
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13b
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@13e
    .line 105
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@140
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@142
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@145
    .line 106
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@147
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@149
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@14c
    .line 107
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@14e
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@150
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@153
    .line 108
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@155
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@157
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15a
    .line 109
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@15c
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15e
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@161
    .line 110
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@163
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@165
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@168
    .line 111
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@16a
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16c
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16f
    .line 112
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@171
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@173
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@176
    .line 113
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@178
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17a
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17d
    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@17f
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@181
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@183
    invoke-direct {v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@186
    .line 127
    .local v0, "sha1AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@188
    const-string/jumbo v6, "SHA1WITHRSAANDMGF1"

    #@18b
    const/16 v7, 0x14

    #@18d
    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@190
    move-result-object v7

    #@191
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    .line 129
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@196
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@198
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@19a
    invoke-direct {v1, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19d
    .line 130
    .local v1, "sha224AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@19f
    const-string/jumbo v6, "SHA224WITHRSAANDMGF1"

    #@1a2
    const/16 v7, 0x1c

    #@1a4
    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@1a7
    move-result-object v7

    #@1a8
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ab
    .line 132
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1ad
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1af
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@1b1
    invoke-direct {v2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b4
    .line 133
    .local v2, "sha256AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@1b6
    const-string/jumbo v6, "SHA256WITHRSAANDMGF1"

    #@1b9
    const/16 v7, 0x20

    #@1bb
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@1be
    move-result-object v7

    #@1bf
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c2
    .line 135
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1c4
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c6
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@1c8
    invoke-direct {v3, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1cb
    .line 136
    .local v3, "sha384AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@1cd
    const-string/jumbo v6, "SHA384WITHRSAANDMGF1"

    #@1d0
    const/16 v7, 0x30

    #@1d2
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@1d5
    move-result-object v7

    #@1d6
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d9
    .line 138
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1db
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1dd
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@1df
    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1e2
    .line 139
    .local v4, "sha512AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@1e4
    const-string/jumbo v6, "SHA512WITHRSAANDMGF1"

    #@1e7
    const/16 v7, 0x40

    #@1e9
    invoke-static {v4, v7}, Lcom/android/org/bouncycastle/x509/X509Util;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@1ec
    move-result-object v7

    #@1ed
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f0
    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "sigOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "sigName"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    if-nez p0, :cond_0

    #@2
    .line 264
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4
    const-string/jumbo v2, "no signature algorithm specified"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 267
    :cond_0
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@e
    move-result-object v0

    #@f
    .line 269
    .local v0, "sig":Ljava/security/Signature;
    if-eqz p4, :cond_1

    #@11
    .line 271
    invoke-virtual {v0, p3, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@14
    .line 278
    :goto_0
    invoke-interface {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "DER"

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@22
    .line 280
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 275
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@2a
    goto :goto_0
.end method

.method static calculateSignature(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "sigOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "sigName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .param p4, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    if-nez p0, :cond_0

    #@2
    .line 232
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4
    const-string/jumbo v2, "no signature algorithm specified"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 235
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@e
    move-result-object v0

    #@f
    .line 237
    .local v0, "sig":Ljava/security/Signature;
    if-eqz p3, :cond_1

    #@11
    .line 239
    invoke-virtual {v0, p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@14
    .line 246
    :goto_0
    invoke-interface {p4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "DER"

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@22
    .line 248
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 243
    :cond_1
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@2a
    goto :goto_0
.end method

.method static convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;
    .locals 3
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 288
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/X509Principal;

    #@2
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    return-object v1

    #@a
    .line 291
    :catch_0
    move-exception v0

    #@b
    .line 292
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v2, "cannot convert principal"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1
.end method

.method private static creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 6
    .param p0, "hashAlgId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "saltSize"    # I

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2
    .line 146
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    .line 147
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    int-to-long v4, p1

    #@c
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@f
    .line 148
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    const-wide/16 v4, 0x1

    #@13
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@16
    .line 144
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@19
    return-object v0
.end method

.method static getAlgNames()Ljava/util/Iterator;
    .locals 3

    #@0
    .prologue
    .line 187
    sget-object v2, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 188
    .local v0, "e":Ljava/util/Enumeration;
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 190
    .local v1, "l":Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_0

    #@19
    .line 195
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method static getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "algorithmName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 156
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 158
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    return-object v0

    #@15
    .line 161
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1a
    return-object v0
.end method

.method static getImplementation(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    .locals 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@3
    move-result-object v3

    #@4
    .line 388
    .local v3, "prov":[Ljava/security/Provider;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@6
    if-eq v1, v4, :cond_1

    #@8
    .line 393
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    aget-object v5, v3, v1

    #@e
    invoke-static {p0, v4, v5}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    #@11
    move-result-object v2

    #@12
    .line 394
    .local v2, "imp":Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    if-eqz v2, :cond_0

    #@14
    .line 396
    return-object v2

    #@15
    .line 401
    :cond_0
    :try_start_0
    aget-object v4, v3, v1

    #@17
    invoke-static {p0, p1, v4}, Lcom/android/org/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    .line 388
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 409
    .end local v2    # "imp":Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :cond_1
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "cannot find implementation "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 404
    .restart local v2    # "imp":Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    #@39
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method static getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/bouncycastle/x509/X509Util$Implementation;
    .locals 9
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "prov"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    .line 334
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v7, "Alg.Alias."

    #@c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    const-string/jumbo v7, "."

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {p2, v6}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@29
    .line 336
    move-object p1, v0

    #@2a
    goto :goto_0

    #@2b
    .line 339
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    const-string/jumbo v7, "."

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {p2, v6}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 341
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@49
    .line 346
    :try_start_0
    invoke-virtual {p2}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@50
    move-result-object v3

    #@51
    .line 348
    .local v3, "clsLoader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1

    #@53
    .line 350
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@56
    move-result-object v2

    #@57
    .line 357
    .local v2, "cls":Ljava/lang/Class;
    :goto_1
    new-instance v6, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;

    #@59
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {v6, v7, p2}, Lcom/android/org/bouncycastle/x509/X509Util$Implementation;-><init>(Ljava/lang/Object;Ljava/security/Provider;)V

    #@60
    return-object v6

    #@61
    .line 354
    .end local v2    # "cls":Ljava/lang/Class;
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    move-result-object v2

    #@65
    .restart local v2    # "cls":Ljava/lang/Class;
    goto :goto_1

    #@66
    .line 365
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "clsLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v5

    #@67
    .line 366
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    #@69
    .line 367
    new-instance v7, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v8, "algorithm "

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    const-string/jumbo v8, " in provider "

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    const-string/jumbo v8, " but class \""

    #@8b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    const-string/jumbo v8, "\" inaccessible!"

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    .line 366
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v6

    #@a2
    .line 360
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@a3
    .line 361
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/IllegalStateException;

    #@a5
    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v8, "algorithm "

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    const-string/jumbo v8, " in provider "

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v7

    #@c4
    const-string/jumbo v8, " but no class \""

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    const-string/jumbo v8, "\" found!"

    #@d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v7

    #@da
    .line 361
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v6

    #@de
    .line 371
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@e0
    new-instance v7, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v8, "cannot find implementation "

    #@e8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v7

    #@ec
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v7

    #@f0
    const-string/jumbo v8, " for provider "

    #@f3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v7

    #@f7
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@fa
    move-result-object v8

    #@fb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@106
    throw v6
.end method

.method static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 4
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    .line 417
    .local v0, "prov":Ljava/security/Provider;
    if-nez v0, :cond_0

    #@6
    .line 419
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Provider "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " not found"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 422
    :cond_0
    return-object v0
.end method

.method static getSigAlgID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2
    .param p0, "sigOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "algorithmName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@d
    return-object v0

    #@e
    .line 173
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    .line 175
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1c
    sget-object v0, Lcom/android/org/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    #@1e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@24
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    return-object v1

    #@28
    .line 181
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2c
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    return-object v0
.end method

.method static getSignatureInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    if-eqz p1, :cond_0

    #@2
    .line 212
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 216
    :cond_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method
