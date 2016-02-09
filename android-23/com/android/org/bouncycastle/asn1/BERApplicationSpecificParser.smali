.class public Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source "BERApplicationSpecificParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field private final tag:I


# direct methods
.method constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 13
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    #@5
    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@7
    .line 11
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
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@6
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@d
    return-object v0
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
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 36
    :catch_0
    move-exception v0

    #@6
    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method
