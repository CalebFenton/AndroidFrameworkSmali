.class public Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLReason.java"


# static fields
.field private static final blacklist reasonString:[Ljava/lang/String;

.field private static final blacklist table:Ljava/util/Hashtable;


# instance fields
.field private blacklist value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 86
    const-string v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    const-string v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string v7, "unknown"

    const-string v8, "removeFromCRL"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3

    .line 113
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    if-ltz p1, :cond_d

    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-void

    .line 116
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid CRL reason : not in (0..MAX)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .registers 2

    .line 99
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_7

    .line 101
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    return-object p0

    :cond_7
    if-eqz p0, :cond_16

    .line 105
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .registers 4

    .line 148
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 152
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_14
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    return-object p0
.end method


# virtual methods
.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_14

    const/16 v0, 0xa

    if-le p0, v0, :cond_f

    goto :goto_14

    .line 131
    :cond_f
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_16

    .line 127
    :cond_14
    :goto_14
    const-string p0, "invalid"

    .line 133
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
