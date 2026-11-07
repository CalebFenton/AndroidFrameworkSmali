.class public Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;
.super Ljava/lang/Object;
.source "DLBitStringParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private blacklist padBits:I

.field private final blacklist stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .registers 3
    .param p1, "stream"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    .line 22
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 23
    return-void
.end method

.method private blacklist getBitStream(Z)Ljava/io/InputStream;
    .registers 6
    .param p1, "octetAligned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 61
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_4f

    .line 66
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    .line 67
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    if-lez v1, :cond_4c

    .line 69
    const/4 v1, 0x2

    if-lt v0, v1, :cond_43

    .line 73
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_3b

    .line 77
    if-nez p1, :cond_20

    goto :goto_4c

    .line 79
    :cond_20
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "zero length data with non-zero pad bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v1

    .line 63
    :cond_4f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "content octets cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->getBitStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->getBitStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPadBits()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 52
    :catch_5
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
