.class public Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private blacklist stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .registers 2
    .param p1, "stream"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 57
    :catch_5
    move-exception v0

    .line 59
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
