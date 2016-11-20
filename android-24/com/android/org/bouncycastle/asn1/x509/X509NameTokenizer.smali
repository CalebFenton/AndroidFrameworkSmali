.class public Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20
    const/16 v0, 0x2c

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@5
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@a
    .line 27
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    #@c
    .line 28
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    #@f
    .line 29
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    #@11
    .line 25
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2b

    #@2
    const/16 v6, 0x5c

    #@4
    .line 39
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    #@6
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    #@8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    if-ne v4, v5, :cond_0

    #@e
    .line 41
    const/4 v4, 0x0

    #@f
    return-object v4

    #@10
    .line 44
    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    #@12
    add-int/lit8 v1, v4, 0x1

    #@14
    .line 45
    .local v1, "end":I
    const/4 v3, 0x0

    #@15
    .line 46
    .local v3, "quoted":Z
    const/4 v2, 0x0

    #@16
    .line 48
    .local v2, "escaped":Z
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@18
    const/4 v5, 0x0

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@1c
    .line 50
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    #@1e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    if-eq v1, v4, :cond_7

    #@24
    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    #@26
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    .line 54
    .local v0, "c":C
    const/16 v4, 0x22

    #@2c
    if-ne v0, v4, :cond_3

    #@2e
    .line 56
    if-nez v2, :cond_1

    #@30
    .line 58
    if-eqz v3, :cond_2

    #@32
    const/4 v3, 0x0

    #@33
    .line 60
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@38
    .line 61
    const/4 v2, 0x0

    #@39
    .line 95
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 58
    :cond_2
    const/4 v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 65
    :cond_3
    if-nez v2, :cond_4

    #@40
    if-eqz v3, :cond_5

    #@42
    .line 67
    :cond_4
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@47
    .line 68
    const/4 v2, 0x0

    #@48
    goto :goto_2

    #@49
    .line 70
    :cond_5
    if-ne v0, v6, :cond_6

    #@4b
    .line 72
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@4d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@50
    .line 73
    const/4 v2, 0x1

    #@51
    goto :goto_2

    #@52
    .line 75
    :cond_6
    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    #@54
    if-ne v0, v4, :cond_8

    #@56
    .line 98
    .end local v0    # "c":C
    :cond_7
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    #@58
    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    return-object v4

    #@5f
    .line 83
    .restart local v0    # "c":C
    :cond_8
    const/16 v4, 0x23

    #@61
    if-ne v0, v4, :cond_a

    #@63
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@65
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@6a
    move-result v5

    #@6b
    add-int/lit8 v5, v5, -0x1

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@70
    move-result v4

    #@71
    const/16 v5, 0x3d

    #@73
    if-ne v4, v5, :cond_a

    #@75
    .line 85
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@77
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7a
    .line 92
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@7c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7f
    goto :goto_2

    #@80
    .line 87
    :cond_a
    if-ne v0, v7, :cond_9

    #@82
    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    #@84
    if-eq v4, v7, :cond_9

    #@86
    .line 89
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@88
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8b
    goto :goto_3
.end method
