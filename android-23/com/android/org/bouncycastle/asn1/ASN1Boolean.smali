.class public Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 23
    new-array v0, v3, [B

    #@4
    const/4 v1, -0x1

    #@5
    aput-byte v1, v0, v2

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    #@9
    .line 24
    new-array v0, v3, [B

    #@b
    aput-byte v2, v0, v2

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    #@f
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@11
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    #@14
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@16
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@18
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    #@1b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1d
    .line 20
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 154
    if-eqz p1, :cond_0

    #@5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    #@7
    :goto_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@9
    .line 151
    return-void

    #@a
    .line 154
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    #@c
    goto :goto_0
.end method

.method protected constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@4
    .line 126
    array-length v0, p1

    #@5
    const/4 v1, 0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "byte value should have 1 byte in it"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 131
    :cond_0
    aget-byte v0, p1, v2

    #@13
    if-nez v0, :cond_1

    #@15
    .line 133
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@19
    .line 124
    :goto_0
    return-void

    #@1a
    .line 135
    :cond_1
    aget-byte v0, p1, v2

    #@1c
    and-int/lit16 v0, v0, 0xff

    #@1e
    const/16 v1, 0xff

    #@20
    if-ne v0, v1, :cond_2

    #@22
    .line 137
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@26
    goto :goto_0

    #@27
    .line 141
    :cond_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@2d
    goto :goto_0
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 3
    .param p0, "value"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 203
    array-length v0, p0

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "BOOLEAN value should have 1 byte in it"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 208
    :cond_0
    aget-byte v0, p0, v2

    #@10
    if-nez v0, :cond_1

    #@12
    .line 210
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@14
    return-object v0

    #@15
    .line 212
    :cond_1
    aget-byte v0, p0, v2

    #@17
    and-int/lit16 v0, v0, 0xff

    #@19
    const/16 v1, 0xff

    #@1b
    if-ne v0, v1, :cond_2

    #@1d
    .line 214
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@1f
    return-object v0

    #@20
    .line 218
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@22
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    #@25
    return-object v0
.end method

.method public static getInstance(I)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 81
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@7
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 113
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 117
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@11
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 43
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 45
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, [B

    #@b
    if-eqz v2, :cond_2

    #@d
    move-object v1, p0

    #@e
    .line 50
    check-cast v1, [B

    #@10
    .line 53
    .local v1, "enc":[B
    :try_start_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v2

    #@17
    .line 56
    :catch_0
    move-exception v0

    #@18
    .line 57
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "failed to construct boolean from byte[]: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "illegal object in getInstance: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2
.end method

.method public static getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "value"    # Z

    #@0
    .prologue
    .line 71
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@7
    goto :goto_0
.end method

.method public static getInstance([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .locals 1
    .param p0, "octets"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    aget-byte v0, p0, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@a
    goto :goto_0
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 184
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@7
    aget-byte v1, v1, v0

    #@9
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@b
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@d
    aget-byte v2, v2, v0

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0

    #@13
    .line 187
    .restart local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    return v0
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
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@6
    .line 174
    return-void
.end method

.method encodedLength()I
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@2
    const/4 v1, 0x0

    #@3
    aget-byte v0, v0, v1

    #@5
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isTrue()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    #@3
    aget-byte v0, v0, v1

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "TRUE"

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, "FALSE"

    #@e
    goto :goto_0
.end method
