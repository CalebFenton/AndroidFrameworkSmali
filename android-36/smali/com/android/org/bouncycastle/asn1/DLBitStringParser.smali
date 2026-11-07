.class public Lcom/android/org/bouncycastle/asn1/DLBitStringParser;
.super Ljava/lang/Object;
.source "DLBitStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private blacklist padBits:I

.field private final blacklist stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-void
.end method

.method private blacklist getBitStream(Z)Ljava/io/InputStream;
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_48

    .line 66
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    if-lez v1, :cond_45

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3d

    const/4 v0, 0x7

    if-gt v1, v0, :cond_35

    if-nez p1, :cond_1c

    goto :goto_45

    .line 79
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_45
    :goto_45
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object p0

    .line 63
    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "content octets cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 2

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->getBitStream(Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPadBits()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->padBits:I

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException converting stream to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
