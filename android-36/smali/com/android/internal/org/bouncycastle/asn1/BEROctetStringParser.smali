.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 24
    return-void
.end method

.method static blacklist parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .registers 3
    .param p0, "sp"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 3

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 59
    :catch_5
    move-exception v0

    .line 61
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
