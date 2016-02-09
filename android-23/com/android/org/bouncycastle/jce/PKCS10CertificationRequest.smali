.class public Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;
.super Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static keyAlgorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static oids:Ljava/util/Hashtable;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    .line 80
    new-instance v5, Ljava/util/Hashtable;

    #@2
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@7
    .line 81
    new-instance v5, Ljava/util/Hashtable;

    #@9
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@e
    .line 82
    new-instance v5, Ljava/util/Hashtable;

    #@10
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@13
    sput-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    #@15
    .line 83
    new-instance v5, Ljava/util/Hashtable;

    #@17
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    #@1a
    sput-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1c
    .line 84
    new-instance v5, Ljava/util/HashSet;

    #@1e
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@21
    sput-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@23
    .line 93
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@25
    const-string/jumbo v6, "MD5WITHRSAENCRYPTION"

    #@28
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v8, "1.2.840.113549.1.1.4"

    #@2d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 94
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@35
    const-string/jumbo v6, "MD5WITHRSA"

    #@38
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    const-string/jumbo v8, "1.2.840.113549.1.1.4"

    #@3d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 95
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@45
    const-string/jumbo v6, "RSAWITHMD5"

    #@48
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    const-string/jumbo v8, "1.2.840.113549.1.1.4"

    #@4d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@50
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 96
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@55
    const-string/jumbo v6, "SHA1WITHRSAENCRYPTION"

    #@58
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    const-string/jumbo v8, "1.2.840.113549.1.1.5"

    #@5d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@60
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 97
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@65
    const-string/jumbo v6, "SHA1WITHRSA"

    #@68
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    const-string/jumbo v8, "1.2.840.113549.1.1.5"

    #@6d
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@70
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 98
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@75
    const-string/jumbo v6, "SHA224WITHRSAENCRYPTION"

    #@78
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 99
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@7f
    const-string/jumbo v6, "SHA224WITHRSA"

    #@82
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 100
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@89
    const-string/jumbo v6, "SHA256WITHRSAENCRYPTION"

    #@8c
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 101
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@93
    const-string/jumbo v6, "SHA256WITHRSA"

    #@96
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 102
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@9d
    const-string/jumbo v6, "SHA384WITHRSAENCRYPTION"

    #@a0
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    .line 103
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@a7
    const-string/jumbo v6, "SHA384WITHRSA"

    #@aa
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 104
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@b1
    const-string/jumbo v6, "SHA512WITHRSAENCRYPTION"

    #@b4
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    .line 105
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@bb
    const-string/jumbo v6, "SHA512WITHRSA"

    #@be
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    .line 106
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@c5
    const-string/jumbo v6, "SHA1WITHRSAANDMGF1"

    #@c8
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    .line 107
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@cf
    const-string/jumbo v6, "SHA224WITHRSAANDMGF1"

    #@d2
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 108
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@d9
    const-string/jumbo v6, "SHA256WITHRSAANDMGF1"

    #@dc
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    .line 109
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@e3
    const-string/jumbo v6, "SHA384WITHRSAANDMGF1"

    #@e6
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    .line 110
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@ed
    const-string/jumbo v6, "SHA512WITHRSAANDMGF1"

    #@f0
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 111
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@f7
    const-string/jumbo v6, "RSAWITHSHA1"

    #@fa
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    const-string/jumbo v8, "1.2.840.113549.1.1.5"

    #@ff
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@102
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 120
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@107
    const-string/jumbo v6, "SHA1WITHDSA"

    #@10a
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10c
    const-string/jumbo v8, "1.2.840.10040.4.3"

    #@10f
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@112
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 121
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@117
    const-string/jumbo v6, "DSAWITHSHA1"

    #@11a
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11c
    const-string/jumbo v8, "1.2.840.10040.4.3"

    #@11f
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@122
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    .line 122
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@127
    const-string/jumbo v6, "SHA224WITHDSA"

    #@12a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    .line 123
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@131
    const-string/jumbo v6, "SHA256WITHDSA"

    #@134
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@139
    .line 124
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@13b
    const-string/jumbo v6, "SHA384WITHDSA"

    #@13e
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@140
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@143
    .line 125
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@145
    const-string/jumbo v6, "SHA512WITHDSA"

    #@148
    sget-object v7, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14d
    .line 126
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@14f
    const-string/jumbo v6, "SHA1WITHECDSA"

    #@152
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@154
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    .line 127
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@159
    const-string/jumbo v6, "SHA224WITHECDSA"

    #@15c
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15e
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    .line 128
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@163
    const-string/jumbo v6, "SHA256WITHECDSA"

    #@166
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@168
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16b
    .line 129
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@16d
    const-string/jumbo v6, "SHA384WITHECDSA"

    #@170
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@175
    .line 130
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@177
    const-string/jumbo v6, "SHA512WITHECDSA"

    #@17a
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17f
    .line 131
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@181
    const-string/jumbo v6, "ECDSAWITHSHA1"

    #@184
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@186
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@189
    .line 143
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@18b
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18d
    const-string/jumbo v7, "1.2.840.113549.1.1.5"

    #@190
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@193
    const-string/jumbo v7, "SHA1WITHRSA"

    #@196
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@199
    .line 144
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@19b
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19d
    const-string/jumbo v7, "SHA224WITHRSA"

    #@1a0
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a3
    .line 145
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1a5
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a7
    const-string/jumbo v7, "SHA256WITHRSA"

    #@1aa
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 146
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1af
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b1
    const-string/jumbo v7, "SHA384WITHRSA"

    #@1b4
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b7
    .line 147
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1b9
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1bb
    const-string/jumbo v7, "SHA512WITHRSA"

    #@1be
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c1
    .line 153
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1c3
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c5
    const-string/jumbo v7, "1.2.840.113549.1.1.4"

    #@1c8
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1cb
    const-string/jumbo v7, "MD5WITHRSA"

    #@1ce
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d1
    .line 157
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1d3
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d5
    const-string/jumbo v7, "1.2.840.10040.4.3"

    #@1d8
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1db
    const-string/jumbo v7, "SHA1WITHDSA"

    #@1de
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 158
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1e3
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e5
    const-string/jumbo v7, "SHA1WITHECDSA"

    #@1e8
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1eb
    .line 159
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1ed
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ef
    const-string/jumbo v7, "SHA224WITHECDSA"

    #@1f2
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f5
    .line 160
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@1f7
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f9
    const-string/jumbo v7, "SHA256WITHECDSA"

    #@1fc
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    .line 161
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@201
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@203
    const-string/jumbo v7, "SHA384WITHECDSA"

    #@206
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@209
    .line 162
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@20b
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20d
    const-string/jumbo v7, "SHA512WITHECDSA"

    #@210
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@213
    .line 163
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@215
    sget-object v6, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@217
    const-string/jumbo v7, "SHA1WITHRSA"

    #@21a
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21d
    .line 164
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@21f
    sget-object v6, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@221
    const-string/jumbo v7, "SHA1WITHDSA"

    #@224
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@227
    .line 165
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@229
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22b
    const-string/jumbo v7, "SHA224WITHDSA"

    #@22e
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@231
    .line 166
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@233
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@235
    const-string/jumbo v7, "SHA256WITHDSA"

    #@238
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    .line 171
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    #@23d
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23f
    const-string/jumbo v7, "RSA"

    #@242
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@245
    .line 172
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    #@247
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@249
    const-string/jumbo v7, "DSA"

    #@24c
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24f
    .line 178
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@251
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@253
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@256
    .line 179
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@258
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25a
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25d
    .line 180
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@25f
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@261
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@264
    .line 181
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@266
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@268
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26b
    .line 182
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@26d
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26f
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@272
    .line 183
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@274
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@276
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@279
    .line 184
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@27b
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27d
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@280
    .line 185
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@282
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@284
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@287
    .line 197
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@289
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28b
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@28d
    invoke-direct {v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@290
    .line 198
    .local v0, "sha1AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@292
    const-string/jumbo v6, "SHA1WITHRSAANDMGF1"

    #@295
    const/16 v7, 0x14

    #@297
    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@29a
    move-result-object v7

    #@29b
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29e
    .line 200
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2a0
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a2
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2a4
    invoke-direct {v1, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a7
    .line 201
    .local v1, "sha224AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@2a9
    const-string/jumbo v6, "SHA224WITHRSAANDMGF1"

    #@2ac
    const/16 v7, 0x1c

    #@2ae
    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2b1
    move-result-object v7

    #@2b2
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b5
    .line 203
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2b7
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b9
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2bb
    invoke-direct {v2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2be
    .line 204
    .local v2, "sha256AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@2c0
    const-string/jumbo v6, "SHA256WITHRSAANDMGF1"

    #@2c3
    const/16 v7, 0x20

    #@2c5
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2c8
    move-result-object v7

    #@2c9
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cc
    .line 206
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2ce
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2d2
    invoke-direct {v3, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d5
    .line 207
    .local v3, "sha384AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@2d7
    const-string/jumbo v6, "SHA384WITHRSAANDMGF1"

    #@2da
    const/16 v7, 0x30

    #@2dc
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2df
    move-result-object v7

    #@2e0
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e3
    .line 209
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2e5
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e7
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2e9
    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2ec
    .line 210
    .local v4, "sha512AlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@2ee
    const-string/jumbo v6, "SHA512WITHRSAANDMGF1"

    #@2f1
    const/16 v7, 0x40

    #@2f3
    invoke-static {v4, v7}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->creatPSSParams(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2f6
    move-result-object v7

    #@2f7
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fa
    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "sequence"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@3
    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    const-string/jumbo v6, "BC"

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move-object v5, p5

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    #@c
    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 9
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .param p6, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>()V

    #@3
    .line 325
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 326
    .local v0, "algorithmName":Ljava/lang/String;
    sget-object v6, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    .line 328
    .local v5, "sigOID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v5, :cond_0

    #@11
    .line 332
    :try_start_0
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    .end local v5    # "sigOID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 340
    .restart local v5    # "sigOID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    if-nez p2, :cond_1

    #@18
    .line 342
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v7, "subject must not be null"

    #@1d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6

    #@21
    .line 335
    .end local v5    # "sigOID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v2

    #@22
    .line 336
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v7, "Unknown signature type requested"

    #@27
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v6

    #@2b
    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "sigOID":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    if-nez p3, :cond_2

    #@2d
    .line 347
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v7, "public key must not be null"

    #@32
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v6

    #@36
    .line 350
    :cond_2
    sget-object v6, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    #@38
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_3

    #@3e
    .line 352
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@40
    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@43
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@45
    .line 365
    :goto_0
    :try_start_1
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    #@48
    move-result-object v6

    #@49
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4f
    .line 366
    .local v3, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@51
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@53
    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@56
    invoke-direct {v6, p2, v7, p4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@59
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    .line 374
    if-nez p6, :cond_5

    #@5d
    .line 376
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@60
    move-result-object v4

    #@61
    .line 383
    .local v4, "sig":Ljava/security/Signature;
    :goto_1
    invoke-virtual {v4, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@64
    .line 387
    :try_start_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@66
    const-string/jumbo v7, "DER"

    #@69
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v4, v6}, Ljava/security/Signature;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@70
    .line 394
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@72
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    #@75
    move-result-object v7

    #@76
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@79
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@7b
    .line 323
    return-void

    #@7c
    .line 354
    .end local v3    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "sig":Ljava/security/Signature;
    :cond_3
    sget-object v6, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@7e
    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@81
    move-result v6

    #@82
    if-eqz v6, :cond_4

    #@84
    .line 356
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@86
    sget-object v6, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->params:Ljava/util/Hashtable;

    #@88
    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v6

    #@8c
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8e
    invoke-direct {v7, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@91
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@93
    goto :goto_0

    #@94
    .line 360
    :cond_4
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@96
    sget-object v7, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@98
    invoke-direct {v6, v5, v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9b
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9d
    goto :goto_0

    #@9e
    .line 369
    :catch_1
    move-exception v1

    #@9f
    .line 370
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@a1
    const-string/jumbo v7, "can\'t encode public key"

    #@a4
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v6

    #@a8
    .line 380
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    invoke-static {p1, p6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@ab
    move-result-object v4

    #@ac
    .restart local v4    # "sig":Ljava/security/Signature;
    goto :goto_1

    #@ad
    .line 390
    :catch_2
    move-exception v2

    #@ae
    .line 391
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b0
    new-instance v7, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v8, "exception encoding TBS cert request - "

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v6
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v6, "BC"

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v3, p3

    #@a
    move-object v4, p4

    #@b
    move-object v5, p5

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    #@f
    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 7
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "key"    # Ljava/security/PublicKey;
    .param p4, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p5, "signingKey"    # Ljava/security/PrivateKey;
    .param p6, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@3
    move-result-object v2

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move-object v5, p5

    #@9
    move-object v6, p6

    #@a
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    #@d
    .line 307
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 244
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->toDERSequence([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 242
    return-void
.end method

.method private static convertName(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 3
    .param p0, "name"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 273
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
    .line 276
    :catch_0
    move-exception v0

    #@b
    .line 277
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v2, "can\'t convert name"

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
    .line 215
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2
    .line 217
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-direct {v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    .line 218
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    int-to-long v4, p1

    #@c
    invoke-direct {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@f
    .line 219
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    const-wide/16 v4, 0x1

    #@13
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@16
    .line 215
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@19
    return-object v0
.end method

.method private static getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 612
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 614
    const-string/jumbo v0, "MD5"

    #@b
    return-object v0

    #@c
    .line 616
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 618
    const-string/jumbo v0, "SHA1"

    #@17
    return-object v0

    #@18
    .line 620
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 622
    const-string/jumbo v0, "SHA224"

    #@23
    return-object v0

    #@24
    .line 624
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 626
    const-string/jumbo v0, "SHA256"

    #@2f
    return-object v0

    #@30
    .line 628
    :cond_3
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 630
    const-string/jumbo v0, "SHA384"

    #@3b
    return-object v0

    #@3c
    .line 632
    :cond_4
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 634
    const-string/jumbo v0, "SHA512"

    #@47
    return-object v0

    #@48
    .line 656
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method static getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    .line 597
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_0

    #@6
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@8
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERNull;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    move-result-object v2

    #@1b
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 601
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@26
    move-result-object v1

    #@27
    .line 602
    .local v1, "rsaParams":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    move-result-object v3

    #@34
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getDigestAlgName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, "withRSAandMGF1"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    return-object v2
.end method

.method private setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "params"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    if-eqz p2, :cond_0

    #@2
    sget-object v3, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@4
    invoke-virtual {v3, p2}, Lcom/android/org/bouncycastle/asn1/DERNull;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 563
    :cond_0
    :goto_0
    return-void

    #@b
    .line 567
    :cond_1
    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    #@12
    move-result-object v4

    #@13
    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    #@16
    move-result-object v2

    #@17
    .line 571
    .local v2, "sigParams":Ljava/security/AlgorithmParameters;
    :try_start_0
    invoke-interface {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "DER"

    #@1e
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@25
    .line 578
    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, "MGF1"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 582
    :try_start_1
    const-class v3, Ljava/security/spec/PSSParameterSpec;

    #@34
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {p1, v3}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    goto :goto_0

    #@3c
    .line 585
    :catch_0
    move-exception v1

    #@3d
    .line 586
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/SignatureException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Exception extracting parameters: "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 574
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    #@5c
    .line 575
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/SignatureException;

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "IOException decoding parameters: "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@79
    throw v3
.end method

.method private static toDERSequence([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 4
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 227
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@5
    .line 229
    .local v0, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v2

    #@c
    .line 232
    .end local v0    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v1

    #@d
    .line 233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "badly encoded request"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    #@0
    .prologue
    .line 552
    :try_start_0
    const-string/jumbo v1, "DER"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 555
    :catch_0
    move-exception v0

    #@9
    .line 556
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    const-string/jumbo v0, "BC"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    move-result-object v5

    #@6
    .line 417
    .local v5, "subjectPKInfo":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    #@8
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@a
    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@10
    move-result-object v7

    #@11
    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@14
    .line 418
    .local v6, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    move-result-object v3

    #@18
    .line 421
    .local v3, "keyAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    if-nez p1, :cond_0

    #@1a
    .line 423
    :try_start_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@29
    move-result-object v7

    #@2a
    return-object v7

    #@2b
    .line 427
    :cond_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-static {v7, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@3a
    move-result-object v7

    #@3b
    return-object v7

    #@3c
    .line 431
    :catch_0
    move-exception v1

    #@3d
    .line 435
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    sget-object v7, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    #@3f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    if-eqz v7, :cond_2

    #@49
    .line 437
    sget-object v7, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    #@4b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Ljava/lang/String;

    #@55
    .line 439
    .local v4, "keyAlgorithm":Ljava/lang/String;
    if-nez p1, :cond_1

    #@57
    .line 441
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@5e
    move-result-object v7

    #@5f
    return-object v7

    #@60
    .line 445
    :cond_1
    invoke-static {v4, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@67
    move-result-object v7

    #@68
    return-object v7

    #@69
    .line 449
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    :cond_2
    throw v1
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6a
    .line 453
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "keyAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "xspec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_1
    move-exception v2

    #@6b
    .line 454
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@6d
    const-string/jumbo v8, "error decoding public key"

    #@70
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@73
    throw v7

    #@74
    .line 457
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    #@75
    .line 458
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@77
    const-string/jumbo v8, "error decoding public key"

    #@7a
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v7
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, "BC"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->verify(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->verify(Ljava/security/PublicKey;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 7
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    if-nez p2, :cond_0

    #@2
    .line 498
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    .line 529
    .local v2, "sig":Ljava/security/Signature;
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v4

    #@12
    invoke-direct {p0, v2, v4}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 531
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@18
    .line 535
    :try_start_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@1a
    const-string/jumbo v5, "DER"

    #@1d
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v2, v4}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 542
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@26
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    #@2d
    move-result v4

    #@2e
    return v4

    #@2f
    .line 502
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@31
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v4, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    #@38
    move-result-object v2

    #@39
    .restart local v2    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@3a
    .line 506
    .end local v2    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v1

    #@3b
    .line 510
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@3d
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 512
    sget-object v4, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    #@4b
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    check-cast v3, Ljava/lang/String;

    #@57
    .line 514
    .local v3, "signatureAlgorithm":Ljava/lang/String;
    if-nez p2, :cond_1

    #@59
    .line 516
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@5c
    move-result-object v2

    #@5d
    .restart local v2    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@5e
    .line 520
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@61
    move-result-object v2

    #@62
    .restart local v2    # "sig":Ljava/security/Signature;
    goto :goto_0

    #@63
    .line 525
    .end local v2    # "sig":Ljava/security/Signature;
    .end local v3    # "signatureAlgorithm":Ljava/lang/String;
    :cond_2
    throw v1

    #@64
    .line 538
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v0

    #@65
    .line 539
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/SignatureException;

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v6, "exception encoding TBS cert request - "

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-direct {v4, v5}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v4
.end method
