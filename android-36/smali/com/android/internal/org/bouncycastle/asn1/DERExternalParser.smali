.class public Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1ExternalParser;


# instance fields
.field private blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 23
    return-void
.end method

.method static blacklist parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/DLExternal;
    .registers 4
    .param p0, "sp"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DLSequence;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 70
    :catch_f
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 52
    const-string/jumbo v0, "unable to get DER object"

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 58
    :catch_8
    move-exception v1

    .line 60
    .local v1, "ioe":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 54
    .end local v1    # "ioe":Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    .line 56
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
