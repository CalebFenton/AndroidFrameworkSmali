.class public Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .locals 0
    .param p1, "stream"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@5
    .line 12
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
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@b
    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 35
    :catch_0
    move-exception v0

    #@6
    .line 36
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
