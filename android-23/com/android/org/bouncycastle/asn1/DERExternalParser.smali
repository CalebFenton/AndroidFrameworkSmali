.class public Lcom/android/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@5
    .line 13
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 29
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@4
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v1

    #@c
    .line 32
    :catch_0
    move-exception v0

    #@d
    .line 33
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@f
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 48
    :catch_0
    move-exception v1

    #@6
    .line 49
    .local v1, "ioe":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@8
    const-string/jumbo v3, "unable to get DER object"

    #@b
    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    throw v2

    #@f
    .line 44
    .end local v1    # "ioe":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@10
    .line 45
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@12
    const-string/jumbo v3, "unable to get DER object"

    #@15
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2
.end method
