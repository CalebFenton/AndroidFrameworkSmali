.class public Lcom/android/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field private blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method static blacklist parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/DLExternal;
    .registers 3

    .line 68
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLExternal;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/DLSequence;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception p0

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/DLExternal;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 52
    const-string v0, "unable to get DER object"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 60
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    move-exception p0

    .line 56
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
