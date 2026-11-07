.class public Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DomainParameters.java"


# instance fields
.field private final blacklist g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5b

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5b

    .line 114
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 119
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 121
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_49

    .line 123
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 124
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_4b

    .line 128
    :cond_49
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    :goto_4b
    if-eqz v0, :cond_58

    .line 133
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-void

    .line 137
    :cond_58
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-void

    .line 111
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;)V
    .registers 7

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_36

    if-eqz p3, :cond_2e

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 93
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz p4, :cond_28

    .line 98
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_2b

    :cond_28
    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 104
    :goto_2b
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-void

    .line 89
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'q\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'g\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'p\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .registers 2

    .line 55
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    if-eqz v0, :cond_7

    .line 57
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 143
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getG()Ljava/math/BigInteger;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getValidationParams()Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 208
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 209
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1c

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    :cond_1c
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz p0, :cond_23

    .line 220
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    :cond_23
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
