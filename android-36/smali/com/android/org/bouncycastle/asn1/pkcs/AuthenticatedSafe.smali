.class public Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedSafe.java"


# instance fields
.field private blacklist info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist isBer:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v0, 0x0

    .line 25
    :goto_f
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v2, v1

    if-eq v0, v2, :cond_21

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 30
    :cond_21
    instance-of p1, p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-void
.end method

.method private blacklist copy([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 4

    .line 62
    array-length p0, p1

    new-array v0, p0, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v1, 0x0

    .line 64
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .registers 2

    .line 36
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_7

    .line 38
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_c

    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 77
    :cond_c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
