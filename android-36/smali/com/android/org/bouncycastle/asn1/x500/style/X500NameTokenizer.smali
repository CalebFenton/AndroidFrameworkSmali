.class public Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private blacklist index:I

.field private final blacklist separator:C

.field private final blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x2c

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x22

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1f

    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 35
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1b

    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    const/4 p1, -0x1

    :goto_1c
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    return-void

    .line 31
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reserved separator character"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 2

    .line 41
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 8

    .line 46
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_c
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 55
    :cond_13
    :goto_13
    iget v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_49

    .line 57
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v3, :cond_2c

    move v3, v2

    goto :goto_13

    :cond_2c
    const/16 v6, 0x22

    if-ne v5, v6, :cond_33

    xor-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_33
    if-eqz v4, :cond_36

    goto :goto_13

    :cond_36
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3c

    move v3, v1

    goto :goto_13

    .line 74
    :cond_3c
    iget-char v6, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v5, v6, :cond_13

    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_49
    if-nez v3, :cond_56

    if-nez v4, :cond_56

    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "badly formatted directory string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
