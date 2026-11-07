.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedSafe.java"


# instance fields
.field private blacklist info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist isBer:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v1, v1

    if-eq v0, v1, :cond_23

    .line 27
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 30
    .end local v0    # "i":I
    :cond_23
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 31
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .registers 3
    .param p1, "info"    # [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 53
    return-void
.end method

.method private blacklist copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 5
    .param p1, "infos"    # [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 62
    array-length v0, p1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 64
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_8

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object v0

    .line 41
    :cond_8
    if-eqz p0, :cond_14

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 46
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getContentInfo()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 71
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_c

    .line 73
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 77
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
