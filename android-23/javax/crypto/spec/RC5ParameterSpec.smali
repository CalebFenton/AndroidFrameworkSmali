.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B

.field private final rounds:I

.field private final version:I

.field private final wordSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@5
    .line 47
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@7
    .line 48
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@9
    .line 49
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@c
    .line 45
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    if-nez p4, :cond_0

    #@6
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "iv == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 77
    :cond_0
    array-length v0, p4

    #@10
    div-int/lit8 v1, p3, 0x8

    #@12
    mul-int/lit8 v1, v1, 0x2

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "iv.length < 2 * (wordSize / 8)"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 80
    :cond_1
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@21
    .line 81
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@23
    .line 82
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@25
    .line 83
    div-int/lit8 v0, p3, 0x8

    #@27
    mul-int/lit8 v0, v0, 0x2

    #@29
    new-array v0, v0, [B

    #@2b
    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@2d
    .line 84
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@2f
    div-int/lit8 v1, p3, 0x8

    #@31
    mul-int/lit8 v1, v1, 0x2

    #@33
    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 73
    return-void
.end method

.method public constructor <init>(III[BI)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B
    .param p5, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 113
    if-nez p4, :cond_0

    #@6
    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "iv == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 116
    :cond_0
    if-gez p5, :cond_1

    #@11
    .line 117
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "offset < 0: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 119
    :cond_1
    array-length v0, p4

    #@2c
    sub-int/2addr v0, p5

    #@2d
    div-int/lit8 v1, p3, 0x8

    #@2f
    mul-int/lit8 v1, v1, 0x2

    #@31
    if-ge v0, v1, :cond_2

    #@33
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v1, "iv.length - offset < 2 * (wordSize / 8)"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 122
    :cond_2
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@3e
    .line 123
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@40
    .line 124
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@42
    .line 125
    div-int/lit8 v0, p3, 0x8

    #@44
    mul-int/lit8 v0, v0, 0x2

    #@46
    add-int/2addr v0, p5

    #@47
    new-array v0, v0, [B

    #@49
    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@4b
    .line 126
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@4d
    div-int/lit8 v1, p3, 0x8

    #@4f
    mul-int/lit8 v1, v1, 0x2

    #@51
    invoke-static {p4, p5, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@54
    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    if-ne p1, p0, :cond_0

    #@3
    .line 182
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 184
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 185
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 187
    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    #@d
    .line 188
    .local v0, "ps":Ljavax/crypto/spec/RC5ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@f
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 189
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@15
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 190
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@1b
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 191
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@21
    iget-object v2, v0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@23
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@26
    move-result v1

    #@27
    .line 188
    :cond_2
    return v1
.end method

.method public getIV()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 162
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 163
    return-object v2

    #@7
    .line 165
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 166
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@e
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 167
    return-object v0
.end method

.method public getRounds()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@2
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@2
    return v0
.end method

.method public getWordSize()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 201
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@2
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@4
    add-int/2addr v2, v3

    #@5
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@7
    add-int v1, v2, v3

    #@9
    .line 202
    .local v1, "result":I
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@b
    if-nez v2, :cond_0

    #@d
    .line 203
    return v1

    #@e
    .line 205
    :cond_0
    iget-object v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@10
    const/4 v2, 0x0

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_1

    #@14
    aget-byte v0, v3, v2

    #@16
    .line 206
    .local v0, "element":B
    and-int/lit16 v5, v0, 0xff

    #@18
    add-int/2addr v1, v5

    #@19
    .line 205
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 208
    .end local v0    # "element":B
    :cond_1
    return v1
.end method
