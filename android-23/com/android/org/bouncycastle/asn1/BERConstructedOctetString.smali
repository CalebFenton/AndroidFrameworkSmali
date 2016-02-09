.class public Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
.super Lcom/android/org/bouncycastle/asn1/BEROctetString;
.source "BERConstructedOctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 85
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@7
    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toByteArray(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@7
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "octs"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@7
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    #@9
    .line 57
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@3
    .line 51
    return-void
.end method

.method public static fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .locals 3
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 134
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    .line 135
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 137
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 139
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@16
    goto :goto_0

    #@17
    .line 142
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    #@19
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    #@1c
    return-object v2
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 7

    #@0
    .prologue
    .line 108
    new-instance v3, Ljava/util/Vector;

    #@2
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@5
    .line 109
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    #@8
    array-length v4, v4

    #@9
    if-ge v1, v4, :cond_1

    #@b
    .line 113
    add-int/lit16 v4, v1, 0x3e8

    #@d
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    #@f
    array-length v5, v5

    #@10
    if-le v4, v5, :cond_0

    #@12
    .line 115
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    #@14
    array-length v0, v4

    #@15
    .line 122
    .local v0, "end":I
    :goto_1
    sub-int v4, v0, v1

    #@17
    new-array v2, v4, [B

    #@19
    .line 124
    .local v2, "nStr":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    #@1b
    array-length v5, v2

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-static {v4, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 126
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@22
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@25
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@28
    .line 109
    add-int/lit16 v1, v1, 0x3e8

    #@2a
    goto :goto_0

    #@2b
    .line 119
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    #@2d
    .restart local v0    # "end":I
    goto :goto_1

    #@2e
    .line 129
    .end local v0    # "end":I
    :cond_1
    return-object v3
.end method

.method private static toByteArray(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)[B
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 77
    :catch_0
    move-exception v0

    #@6
    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Unable to encode object"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .locals 8
    .param p0, "octs"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 24
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@9
    move-result v5

    #@a
    if-eq v3, v5, :cond_0

    #@c
    .line 28
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@12
    .line 30
    .local v4, "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 24
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 37
    .end local v4    # "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :catch_0
    move-exception v1

    #@1d
    .line 38
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "exception converting octets "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v5

    #@3b
    .line 33
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@3c
    .line 34
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    const-string/jumbo v7, " found in input should only contain DEROctetString"

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v5

    #@62
    .line 42
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@65
    move-result-object v5

    #@66
    return-object v5
.end method


# virtual methods
.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    #@f
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    #@2
    return-object v0
.end method
