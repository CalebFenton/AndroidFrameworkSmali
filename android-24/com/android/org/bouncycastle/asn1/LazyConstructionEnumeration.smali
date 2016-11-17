.class Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;
.super Ljava/lang/Object;
.source "LazyConstructionEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

.field private nextObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoded"    # [B

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@b
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    #@11
    .line 12
    return-void
.end method

.method private readObject()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 39
    :catch_0
    move-exception v0

    #@8
    .line 40
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "malformed DER construction: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    #@2
    .line 27
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    #@8
    .line 29
    return-object v0
.end method
