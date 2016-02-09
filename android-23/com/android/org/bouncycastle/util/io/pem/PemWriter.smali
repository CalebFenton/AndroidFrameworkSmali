.class public Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# static fields
.field private static final LINE_LENGTH:I = 0x40


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@3
    .line 19
    const/16 v1, 0x40

    #@5
    new-array v1, v1, [C

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    #@9
    .line 30
    const-string/jumbo v1, "line.separator"

    #@c
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 31
    .local v0, "nl":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@18
    .line 26
    :goto_0
    return-void

    #@19
    .line 37
    :cond_0
    const/4 v1, 0x2

    #@1a
    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@1c
    goto :goto_0
.end method

.method private writeEncoded([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    #@3
    move-result-object p1

    #@4
    .line 104
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@6
    if-ge v0, v2, :cond_2

    #@8
    .line 106
    const/4 v1, 0x0

    #@9
    .line 108
    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    #@b
    array-length v2, v2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 110
    add-int v2, v0, v1

    #@10
    array-length v3, p1

    #@11
    if-lt v2, v3, :cond_1

    #@13
    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    #@19
    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    #@1c
    .line 104
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    #@1e
    array-length v2, v2

    #@1f
    add-int/2addr v0, v2

    #@20
    goto :goto_0

    #@21
    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    #@23
    add-int v3, v0, v1

    #@25
    aget-byte v3, p1, v3

    #@27
    int-to-char v3, v3

    #@28
    aput-char v3, v2, v1

    #@2a
    .line 115
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 100
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "-----END "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "-----"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    #@1e
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    #@21
    .line 132
    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "-----BEGIN "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "-----"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    #@1e
    .line 127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    #@21
    .line 124
    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)I
    .locals 6
    .param p1, "obj"    # Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@0
    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v4, v4, 0xa

    #@a
    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@c
    add-int/2addr v4, v5

    #@d
    mul-int/lit8 v4, v4, 0x2

    #@f
    add-int/lit8 v4, v4, 0x6

    #@11
    add-int/lit8 v3, v4, 0x4

    #@13
    .line 53
    .local v3, "size":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    #@31
    .line 59
    .local v1, "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@38
    move-result v4

    #@39
    const-string/jumbo v5, ": "

    #@3c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3f
    move-result v5

    #@40
    add-int/2addr v4, v5

    #@41
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@48
    move-result v5

    #@49
    add-int/2addr v4, v5

    #@4a
    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@4c
    add-int/2addr v4, v5

    #@4d
    add-int/2addr v3, v4

    #@4e
    goto :goto_0

    #@4f
    .line 62
    .end local v1    # "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@51
    add-int/2addr v3, v4

    #@52
    .line 66
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    #@55
    move-result-object v4

    #@56
    array-length v4, v4

    #@57
    add-int/lit8 v4, v4, 0x2

    #@59
    div-int/lit8 v4, v4, 0x3

    #@5b
    mul-int/lit8 v0, v4, 0x4

    #@5d
    .line 68
    .local v0, "dataLen":I
    add-int/lit8 v4, v0, 0x40

    #@5f
    add-int/lit8 v4, v4, -0x1

    #@61
    div-int/lit8 v4, v4, 0x40

    #@63
    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    #@65
    mul-int/2addr v4, v5

    #@66
    add-int/2addr v4, v0

    #@67
    add-int/2addr v3, v4

    #@68
    .line 70
    return v3
.end method

.method public writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .locals 4
    .param p1, "objGen"    # Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@3
    move-result-object v2

    #@4
    .line 78
    .local v2, "obj":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    #@b
    .line 80
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 82
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    #@29
    .line 86
    .local v0, "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    #@30
    .line 87
    const-string/jumbo v3, ": "

    #@33
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    #@36
    .line 88
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    #@3d
    .line 89
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    #@40
    goto :goto_0

    #@41
    .line 92
    .end local v0    # "hdr":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    #@44
    .line 95
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    #@47
    move-result-object v3

    #@48
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    #@4b
    .line 96
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    #@52
    .line 74
    return-void
.end method
