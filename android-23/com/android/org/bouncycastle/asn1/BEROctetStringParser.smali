.class public Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@5
    .line 14
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getOctetStream()Ljava/io/InputStream;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@d
    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@7
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 37
    :catch_0
    move-exception v0

    #@6
    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "IOException converting stream to byte array: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method
