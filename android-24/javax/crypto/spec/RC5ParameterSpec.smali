.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private rounds:I

.field private version:I

.field private wordSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@6
    .line 63
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@8
    .line 64
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@a
    .line 65
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@c
    .line 62
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B

    #@0
    .prologue
    .line 86
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/spec/RC5ParameterSpec;-><init>(III[BI)V

    #@9
    .line 85
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
    const/4 v1, 0x0

    #@1
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    iput-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@6
    .line 114
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@8
    .line 115
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@a
    .line 116
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@c
    .line 117
    if-nez p4, :cond_0

    #@e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "IV missing"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 118
    :cond_0
    div-int/lit8 v1, p3, 0x8

    #@19
    mul-int/lit8 v0, v1, 0x2

    #@1b
    .line 119
    .local v0, "blockSize":I
    array-length v1, p4

    #@1c
    sub-int/2addr v1, p5

    #@1d
    if-ge v1, v0, :cond_1

    #@1f
    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "IV too short"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 122
    :cond_1
    new-array v1, v0, [B

    #@2a
    iput-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@2c
    .line 123
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-static {p4, p5, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@32
    .line 113
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
    .line 175
    if-ne p1, p0, :cond_0

    #@3
    .line 176
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 178
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 179
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 181
    nop

    #@c
    nop

    #@d
    .line 183
    .local v0, "other":Ljavax/crypto/spec/RC5ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@f
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 184
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@15
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 185
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@1b
    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 186
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@21
    iget-object v2, v0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@23
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@26
    move-result v1

    #@27
    .line 183
    :cond_2
    return v1
.end method

.method public getIV()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 160
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    goto :goto_0
.end method

.method public getRounds()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@2
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@2
    return v0
.end method

.method public getWordSize()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 194
    const/4 v1, 0x0

    #@1
    .line 195
    .local v1, "retval":I
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 196
    const/4 v0, 0x1

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 197
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    #@d
    aget-byte v2, v2, v0

    #@f
    mul-int/2addr v2, v0

    #@10
    add-int/2addr v1, v2

    #@11
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 200
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    #@16
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    #@18
    add-int/2addr v2, v3

    #@19
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    #@1b
    add-int/2addr v2, v3

    #@1c
    add-int/2addr v1, v2

    #@1d
    .line 201
    return v1
.end method
