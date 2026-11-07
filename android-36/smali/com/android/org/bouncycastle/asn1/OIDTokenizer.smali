.class public Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private blacklist index:I

.field private blacklist oid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-void
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 2

    .line 35
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 5

    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_7
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v0

    .line 60
    :cond_1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 62
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    return-object v1
.end method
