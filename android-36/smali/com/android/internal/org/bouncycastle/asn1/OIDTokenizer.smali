.class public Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private blacklist index:I

.field private blacklist oid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 3

    .line 35
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 5

    .line 45
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v2, 0x2e

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 53
    .local v0, "end":I
    if-ne v0, v1, :cond_1e

    .line 55
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "token":Ljava/lang/String;
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    .line 57
    return-object v2

    .line 60
    .end local v2    # "token":Ljava/lang/String;
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "token":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/OIDTokenizer;->index:I

    .line 63
    return-object v1
.end method
