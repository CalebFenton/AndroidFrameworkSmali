.class public Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private blacklist stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 59
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
