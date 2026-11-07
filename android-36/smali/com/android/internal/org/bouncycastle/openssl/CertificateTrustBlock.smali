.class public Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;
.super Ljava/lang/Object;
.source "CertificateTrustBlock.java"


# instance fields
.field private blacklist alias:Ljava/lang/String;

.field private blacklist prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "uses":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "uses":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    .local p3, "prohibitions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->toSequence(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 43
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->toSequence(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "uses":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 32
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 7
    .param p1, "encoded"    # [B

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 50
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 52
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 54
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_22

    .line 56
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_3f

    .line 58
    :cond_22
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_31

    .line 60
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_3f

    .line 62
    :cond_31
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v3, :cond_3f

    .line 64
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    .line 66
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3f
    :goto_3f
    goto :goto_b

    .line 67
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_40
    return-void
.end method

.method private blacklist toSequence(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;"
        }
    .end annotation

    .line 103
    .local p1, "oids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_28

    .line 108
    :cond_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_12

    .line 115
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_22
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 105
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist toSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_22

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 90
    .local v0, "oids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 92
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 95
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_21
    return-object v0

    .line 98
    .end local v0    # "oids":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    :cond_22
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public blacklist getAlias()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProhibitions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->toSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->toSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method blacklist toASN1Sequence()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5

    .line 120
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_e

    .line 124
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->uses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    :cond_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1d

    .line 128
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 132
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    :cond_2b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
