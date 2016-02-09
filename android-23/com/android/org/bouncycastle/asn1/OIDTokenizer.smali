.class public Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    #@5
    .line 18
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@8
    .line 15
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    .line 23
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 28
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@3
    if-ne v2, v5, :cond_0

    #@5
    .line 30
    const/4 v2, 0x0

    #@6
    return-object v2

    #@7
    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    #@9
    const/16 v3, 0x2e

    #@b
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@d
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v0

    #@11
    .line 36
    .local v0, "end":I
    if-ne v0, v5, :cond_1

    #@13
    .line 38
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    #@15
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 39
    .local v1, "token":Ljava/lang/String;
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@1d
    .line 40
    return-object v1

    #@1e
    .line 43
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    #@20
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@22
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 45
    .restart local v1    # "token":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    #@28
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    #@2a
    .line 46
    return-object v1
.end method
