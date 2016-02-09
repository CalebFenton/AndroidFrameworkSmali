.class public Lcom/android/org/bouncycastle/asn1/DERPrintableString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERPrintableString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private final string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 105
    if-eqz p2, :cond_0

    #@5
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 110
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@11
    .line 103
    return-void

    #@12
    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "string contains illegal characters"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@5
    .line 79
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 65
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 67
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 71
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    #@1c
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 29
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 31
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 38
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 41
    :catch_0
    move-exception v0

    #@17
    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "encoding error in getInstance: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "illegal object in getInstance: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v1, v2, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    #@9
    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 176
    .local v0, "ch":C
    const/16 v2, 0x7f

    #@f
    if-le v0, v2, :cond_0

    #@11
    .line 178
    return v3

    #@12
    .line 181
    :cond_0
    const/16 v2, 0x61

    #@14
    if-gt v2, v0, :cond_2

    #@16
    const/16 v2, 0x7a

    #@18
    if-gt v0, v2, :cond_2

    #@1a
    .line 172
    :cond_1
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 186
    :cond_2
    const/16 v2, 0x41

    #@1f
    if-gt v2, v0, :cond_3

    #@21
    const/16 v2, 0x5a

    #@23
    if-le v0, v2, :cond_1

    #@25
    .line 191
    :cond_3
    const/16 v2, 0x30

    #@27
    if-gt v2, v0, :cond_4

    #@29
    const/16 v2, 0x39

    #@2b
    if-le v0, v2, :cond_1

    #@2d
    .line 196
    :cond_4
    sparse-switch v0, :sswitch_data_0

    #@30
    .line 213
    return v3

    #@31
    .line 216
    .end local v0    # "ch":C
    :cond_5
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 196
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 148
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 150
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 153
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@9
    .line 155
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@d
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@2
    const/16 v1, 0x13

    #@4
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@7
    .line 135
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
