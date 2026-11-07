.class public Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SspRange.java"


# instance fields
.field private final blacklist bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

.field private final blacklist isAll:Z

.field private final blacklist opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 34
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;)V
    .registers 3
    .param p1, "range"    # Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 42
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    goto :goto_23

    .line 48
    :cond_13
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    .line 53
    :try_start_19
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1d} :catch_1e

    .line 58
    .local v0, "bitMapRange":Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    goto :goto_21

    .line 55
    .end local v0    # "bitMapRange":Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    :catch_1e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 60
    .local v0, "bitMapRange":Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    :goto_21
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    .line 62
    .end local v0    # "bitMapRange":Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    :goto_23
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .registers 4
    .param p0, "src"    # Ljava/lang/Object;

    .line 73
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz v0, :cond_c

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object v0

    .line 83
    :cond_c
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_16

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;-><init>()V

    return-object v0

    .line 88
    :cond_16
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_24

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;-><init>(Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;)V

    return-object v0

    .line 93
    :cond_24
    instance-of v0, p0, [B

    if-eqz v0, :cond_3e

    .line 97
    :try_start_28
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_34

    return-object v0

    .line 99
    :catch_34
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unable to parse encoded general name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getBitmapSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    return-object v0
.end method

.method public blacklist getOpaque()Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    return-object v0
.end method

.method public blacklist isAll()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    return v0
.end method

.method public blacklist maybeOpaque()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->isAll:Z

    if-eqz v0, :cond_7

    .line 132
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    if-eqz v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->bitmapSspRange:Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->opaque:Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/SequenceOfOctetString;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
