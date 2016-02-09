.class public Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedSafe.java"


# instance fields
.field private info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private isBer:Z


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 14
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    #@6
    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@c
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@e
    .line 21
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@11
    array-length v1, v1

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@16
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v1, v0

    #@20
    .line 21
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 26
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@25
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    #@27
    .line 17
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .locals 1
    .param p1, "info"    # [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 14
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    #@6
    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@8
    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 37
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 42
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 58
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 60
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@8
    array-length v2, v2

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 62
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@12
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 65
    :cond_0
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 67
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@1b
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1e
    return-object v2

    #@1f
    .line 71
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLSequence;

    #@21
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@24
    return-object v2
.end method
