.class public Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


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
    .line 19
    const/16 v0, 0x2c

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@5
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@a
    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    #@c
    .line 27
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    #@f
    .line 28
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    #@11
    .line 24
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

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
    .locals 6

    #@0
    .prologue
    .line 38
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    #@2
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    #@4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    if-ne v4, v5, :cond_0

    #@a
    .line 40
    const/4 v4, 0x0

    #@b
    return-object v4

    #@c
    .line 43
    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    #@e
    add-int/lit8 v1, v4, 0x1

    #@10
    .line 44
    .local v1, "end":I
    const/4 v3, 0x0

    #@11
    .line 45
    .local v3, "quoted":Z
    const/4 v2, 0x0

    #@12
    .line 47
    .local v2, "escaped":Z
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@18
    .line 49
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    #@1a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1d
    move-result v4

    #@1e
    if-eq v1, v4, :cond_7

    #@20
    .line 51
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    #@22
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v0

    #@26
    .line 53
    .local v0, "c":C
    const/16 v4, 0x22

    #@28
    if-ne v0, v4, :cond_3

    #@2a
    .line 55
    if-nez v2, :cond_1

    #@2c
    .line 57
    if-eqz v3, :cond_2

    #@2e
    const/4 v3, 0x0

    #@2f
    .line 59
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    .line 60
    const/4 v2, 0x0

    #@35
    .line 83
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 57
    :cond_2
    const/4 v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 64
    :cond_3
    if-nez v2, :cond_4

    #@3c
    if-eqz v3, :cond_5

    #@3e
    .line 66
    :cond_4
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    .line 67
    const/4 v2, 0x0

    #@44
    goto :goto_2

    #@45
    .line 69
    :cond_5
    const/16 v4, 0x5c

    #@47
    if-ne v0, v4, :cond_6

    #@49
    .line 71
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4e
    .line 72
    const/4 v2, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 74
    :cond_6
    iget-char v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    #@52
    if-ne v0, v4, :cond_8

    #@54
    .line 86
    .end local v0    # "c":C
    :cond_7
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    #@56
    .line 88
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    return-object v4

    #@5d
    .line 80
    .restart local v0    # "c":C
    :cond_8
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    #@5f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@62
    goto :goto_2
.end method
