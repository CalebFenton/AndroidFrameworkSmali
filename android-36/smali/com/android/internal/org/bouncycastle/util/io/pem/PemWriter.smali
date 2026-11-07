.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# static fields
.field private static final blacklist LINE_LENGTH:I = 0x40


# instance fields
.field private blacklist buf:[C

.field private final blacklist nlLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 22
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "nl":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_19

    .line 40
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    .line 42
    :goto_19
    return-void
.end method

.method private blacklist writeEncoded([B)V
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_2e

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "index":I
    :goto_9
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_20

    .line 113
    add-int v2, v0, v1

    array-length v3, p1

    if-lt v2, v3, :cond_14

    .line 115
    goto :goto_20

    .line 117
    :cond_14
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    add-int v3, v0, v1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 120
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 107
    .end local v1    # "index":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_5

    .line 123
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method private blacklist writePostEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 139
    return-void
.end method

.method private blacklist writePreEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 131
    return-void
.end method


# virtual methods
.method public blacklist getOutputSize(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;)I
    .registers 7
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x4

    .line 56
    .local v0, "size":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    .line 62
    .local v2, "hdr":Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ": "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 63
    .end local v2    # "hdr":Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;
    goto :goto_25

    .line 65
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_4e
    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    .line 69
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 71
    .local v1, "dataLen":I
    add-int/lit8 v2, v1, 0x40

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x40

    iget v3, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 73
    return v0
.end method

.method public blacklist writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .registers 6
    .param p1, "objGen"    # Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    .line 81
    .local v0, "obj":Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 85
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    .line 89
    .local v2, "hdr":Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 90
    const-string v3, ": "

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 93
    .end local v2    # "hdr":Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;
    goto :goto_1d

    .line 95
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 98
    :cond_43
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    .line 100
    return-void
.end method
