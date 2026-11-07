.class public Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;
.super Ljava/lang/Object;
.source "BERBitStringParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private blacklist _bitStream:Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

.field private blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 26
    return-void
.end method

.method static blacklist parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERBitString;
    .registers 5
    .param p0, "sp"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;Z)V

    .line 64
    .local v0, "bitStream":Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 65
    .local v1, "data":[B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v2

    .line 66
    .local v2, "padBits":I
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-object v3
.end method


# virtual methods
.method public blacklist getBitStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public blacklist getPadBits()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 55
    :catch_5
    move-exception v0

    .line 57
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
