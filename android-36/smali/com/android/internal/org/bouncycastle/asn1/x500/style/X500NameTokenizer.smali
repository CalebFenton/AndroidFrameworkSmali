.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private blacklist index:I

.field private final blacklist separator:C

.field private final blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;

    .line 20
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .registers 5
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_27

    .line 29
    const/16 v0, 0x22

    if-eq p2, v0, :cond_1e

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1e

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 35
    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 37
    return-void

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reserved separator character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .registers 3

    .line 41
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .registers 7

    .line 46
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_c
    const/4 v0, 0x0

    .line 52
    .local v0, "quoted":Z
    const/4 v1, 0x0

    .line 54
    .local v1, "escaped":Z
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 55
    .local v2, "beginIndex":I
    :goto_12
    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4d

    .line 57
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 59
    .local v4, "c":C
    if-eqz v1, :cond_2b

    .line 61
    const/4 v1, 0x0

    goto :goto_4c

    .line 63
    :cond_2b
    const/16 v5, 0x22

    if-ne v4, v5, :cond_36

    .line 65
    if-nez v0, :cond_33

    move v5, v3

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    move v0, v5

    .end local v0    # "quoted":Z
    .local v5, "quoted":Z
    goto :goto_4c

    .line 67
    .end local v5    # "quoted":Z
    .restart local v0    # "quoted":Z
    :cond_36
    if-eqz v0, :cond_39

    goto :goto_4c

    .line 70
    :cond_39
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3f

    .line 72
    const/4 v1, 0x1

    goto :goto_4c

    .line 74
    :cond_3f
    iget-char v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v4, v5, :cond_4c

    .line 76
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    .end local v4    # "c":C
    :cond_4c
    :goto_4c
    goto :goto_12

    .line 80
    :cond_4d
    if-nez v1, :cond_5a

    if-nez v0, :cond_5a

    .line 85
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    :cond_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "badly formatted directory string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
