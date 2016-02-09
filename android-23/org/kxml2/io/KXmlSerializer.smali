.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final WRITE_BUFFER_SIZE:I = 0x1f4


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    const/16 v0, 0xc

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@a
    .line 48
    new-array v0, v1, [I

    #@c
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@e
    .line 49
    const/16 v0, 0x8

    #@10
    new-array v0, v0, [Ljava/lang/String;

    #@12
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@14
    .line 51
    new-array v0, v1, [Z

    #@16
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@18
    .line 28
    return-void
.end method

.method private final check(Z)V
    .locals 9
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x22

    #@2
    const/4 v7, 0x0

    #@3
    .line 56
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 57
    return-void

    #@8
    .line 59
    :cond_0
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a
    add-int/lit8 v3, v3, 0x1

    #@c
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@e
    .line 60
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@10
    .line 62
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@12
    array-length v3, v3

    #@13
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@15
    if-gt v3, v4, :cond_1

    #@17
    .line 63
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@19
    add-int/lit8 v3, v3, 0x4

    #@1b
    new-array v1, v3, [Z

    #@1d
    .line 64
    .local v1, "hlp":[Z
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@1f
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@21
    invoke-static {v3, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@24
    .line 65
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@26
    .line 67
    .end local v1    # "hlp":[Z
    :cond_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@28
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@2a
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@2c
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@2e
    add-int/lit8 v6, v6, -0x1

    #@30
    aget-boolean v5, v5, v6

    #@32
    aput-boolean v5, v3, v4

    #@34
    .line 69
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@36
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@38
    add-int/lit8 v4, v4, -0x1

    #@3a
    aget v2, v3, v4

    #@3c
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@3e
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@40
    aget v3, v3, v4

    #@42
    if-ge v2, v3, :cond_4

    #@44
    .line 70
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@46
    const/16 v4, 0x20

    #@48
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    #@4b
    .line 71
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@4d
    const-string/jumbo v4, "xmlns"

    #@50
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@53
    .line 72
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@55
    mul-int/lit8 v4, v2, 0x2

    #@57
    aget-object v3, v3, v4

    #@59
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@5c
    move-result v3

    #@5d
    if-nez v3, :cond_3

    #@5f
    .line 73
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@61
    const/16 v4, 0x3a

    #@63
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    #@66
    .line 74
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@68
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@6a
    mul-int/lit8 v5, v2, 0x2

    #@6c
    aget-object v4, v4, v5

    #@6e
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@71
    .line 78
    :cond_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@73
    const-string/jumbo v4, "=\""

    #@76
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@79
    .line 79
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@7b
    mul-int/lit8 v4, v2, 0x2

    #@7d
    add-int/lit8 v4, v4, 0x1

    #@7f
    aget-object v3, v3, v4

    #@81
    invoke-direct {p0, v3, v8}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@84
    .line 80
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@86
    invoke-virtual {v3, v8}, Ljava/io/BufferedWriter;->write(I)V

    #@89
    .line 69
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_0

    #@8c
    .line 76
    :cond_3
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@93
    move-result v3

    #@94
    if-eqz v3, :cond_2

    #@96
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@98
    mul-int/lit8 v4, v2, 0x2

    #@9a
    add-int/lit8 v4, v4, 0x1

    #@9c
    aget-object v3, v3, v4

    #@9e
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@a1
    move-result v3

    #@a2
    if-nez v3, :cond_2

    #@a4
    .line 77
    new-instance v3, Ljava/lang/IllegalStateException;

    #@a6
    const-string/jumbo v4, "Cannot set default namespace for elements in no namespace"

    #@a9
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v3

    #@ad
    .line 83
    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@af
    array-length v3, v3

    #@b0
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@b2
    add-int/lit8 v4, v4, 0x1

    #@b4
    if-gt v3, v4, :cond_5

    #@b6
    .line 84
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@b8
    add-int/lit8 v3, v3, 0x8

    #@ba
    new-array v0, v3, [I

    #@bc
    .line 85
    .local v0, "hlp":[I
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@be
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@c0
    add-int/lit8 v4, v4, 0x1

    #@c2
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@c5
    .line 86
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@c7
    .line 89
    .end local v0    # "hlp":[I
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@c9
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@cb
    add-int/lit8 v4, v4, 0x1

    #@cd
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@cf
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@d1
    aget v5, v5, v6

    #@d3
    aput v5, v3, v4

    #@d5
    .line 92
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@d7
    if-eqz p1, :cond_6

    #@d9
    const-string/jumbo v3, " />"

    #@dc
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@df
    .line 55
    return-void

    #@e0
    .line 92
    :cond_6
    const-string/jumbo v3, ">"

    #@e3
    goto :goto_1
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "includeDefault"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 204
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@4
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6
    add-int/lit8 v6, v6, 0x1

    #@8
    aget v5, v5, v6

    #@a
    mul-int/lit8 v5, v5, 0x2

    #@c
    add-int/lit8 v1, v5, -0x2

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@10
    .line 207
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@12
    add-int/lit8 v6, v1, 0x1

    #@14
    aget-object v5, v5, v6

    #@16
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 208
    if-nez p2, :cond_1

    #@1e
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@20
    aget-object v5, v5, v1

    #@22
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 206
    :cond_0
    add-int/lit8 v1, v1, -0x2

    #@2a
    goto :goto_0

    #@2b
    .line 209
    :cond_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@2d
    aget-object v0, v5, v1

    #@2f
    .line 210
    .local v0, "cand":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x2

    #@31
    .line 211
    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@33
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@35
    add-int/lit8 v6, v6, 0x1

    #@37
    aget v5, v5, v6

    #@39
    mul-int/lit8 v5, v5, 0x2

    #@3b
    .line 210
    if-ge v2, v5, :cond_2

    #@3d
    .line 213
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@3f
    aget-object v5, v5, v2

    #@41
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_3

    #@47
    .line 214
    const/4 v0, 0x0

    #@48
    .line 218
    .end local v0    # "cand":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    #@4a
    .line 219
    return-object v0

    #@4b
    .line 212
    .restart local v0    # "cand":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 223
    .end local v0    # "cand":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_4
    if-nez p3, :cond_5

    #@50
    .line 224
    return-object v7

    #@51
    .line 228
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_7

    #@57
    .line 229
    const-string/jumbo v4, ""

    #@5a
    .line 245
    :cond_6
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5c
    .line 246
    .local v3, "p":Z
    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5e
    .line 247
    invoke-virtual {p0, v4, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@61
    .line 248
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@63
    .line 249
    return-object v4

    #@64
    .line 232
    .end local v3    # "p":Z
    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v6, "n"

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    #@72
    add-int/lit8 v7, v6, 0x1

    #@74
    iput v7, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 233
    .local v4, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@80
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@82
    add-int/lit8 v6, v6, 0x1

    #@84
    aget v5, v5, v6

    #@86
    mul-int/lit8 v5, v5, 0x2

    #@88
    add-int/lit8 v1, v5, -0x2

    #@8a
    :goto_3
    if-ltz v1, :cond_8

    #@8c
    .line 236
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@8e
    aget-object v5, v5, v1

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v5

    #@94
    if-eqz v5, :cond_9

    #@96
    .line 237
    const/4 v4, 0x0

    #@97
    .line 242
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_6

    #@99
    goto :goto_2

    #@9a
    .line 235
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_9
    add-int/lit8 v1, v1, -0x2

    #@9c
    goto :goto_3
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Illegal character (U+"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ")"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "quot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-ge v2, v3, :cond_a

    #@7
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    .line 98
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    #@e
    .line 117
    if-ne v1, p2, :cond_2

    #@10
    .line 118
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@12
    const/16 v3, 0x22

    #@14
    if-ne v1, v3, :cond_1

    #@16
    const-string/jumbo v3, "&quot;"

    #@19
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@1c
    .line 96
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 102
    :sswitch_0
    const/4 v3, -0x1

    #@20
    if-ne p2, v3, :cond_0

    #@22
    .line 103
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@24
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@27
    goto :goto_2

    #@28
    .line 105
    :cond_0
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "&#"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const/16 v5, 0x3b

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@47
    goto :goto_2

    #@48
    .line 108
    :sswitch_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@4a
    const-string/jumbo v4, "&amp;"

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@50
    goto :goto_2

    #@51
    .line 111
    :sswitch_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@53
    const-string/jumbo v4, "&gt;"

    #@56
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@59
    goto :goto_2

    #@5a
    .line 114
    :sswitch_3
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@5c
    const-string/jumbo v4, "&lt;"

    #@5f
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@62
    goto :goto_2

    #@63
    .line 118
    :cond_1
    const-string/jumbo v3, "&apos;"

    #@66
    goto :goto_1

    #@67
    .line 128
    :cond_2
    const/16 v3, 0x20

    #@69
    if-lt v1, v3, :cond_5

    #@6b
    const v3, 0xd7ff

    #@6e
    if-gt v1, v3, :cond_5

    #@70
    :cond_3
    const/4 v0, 0x1

    #@71
    .line 129
    .local v0, "allowedInXml":Z
    :goto_3
    if-eqz v0, :cond_8

    #@73
    .line 130
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@75
    if-nez v3, :cond_4

    #@77
    const/16 v3, 0x7f

    #@79
    if-ge v1, v3, :cond_7

    #@7b
    .line 131
    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@7d
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@80
    goto :goto_2

    #@81
    .line 128
    .end local v0    # "allowedInXml":Z
    :cond_5
    const v3, 0xe000

    #@84
    if-lt v1, v3, :cond_6

    #@86
    const v3, 0xfffd

    #@89
    if-le v1, v3, :cond_3

    #@8b
    :cond_6
    const/4 v0, 0x0

    #@8c
    .restart local v0    # "allowedInXml":Z
    goto :goto_3

    #@8d
    .line 133
    :cond_7
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@8f
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v5, "&#"

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    const-string/jumbo v5, ";"

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@ad
    goto/16 :goto_2

    #@af
    .line 135
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_9

    #@b5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b8
    move-result v3

    #@b9
    add-int/lit8 v3, v3, -0x1

    #@bb
    if-ge v2, v3, :cond_9

    #@bd
    .line 136
    add-int/lit8 v3, v2, 0x1

    #@bf
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@c2
    move-result v3

    #@c3
    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    #@c6
    .line 137
    add-int/lit8 v2, v2, 0x1

    #@c8
    .line 135
    goto/16 :goto_2

    #@ca
    .line 139
    :cond_9
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    #@cd
    goto/16 :goto_2

    #@cf
    .line 95
    .end local v0    # "allowedInXml":Z
    .end local v1    # "c":C
    :cond_a
    return-void

    #@d0
    .line 98
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writeSurrogate(CC)V
    .locals 4
    .param p1, "high"    # C
    .param p2, "low"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Bad surrogate pair (U+"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 580
    const-string/jumbo v3, " U+"

    #@1f
    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 580
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 580
    const-string/jumbo v3, ")"

    #@2e
    .line 579
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 585
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3d
    move-result v0

    #@3e
    .line 586
    .local v0, "codePoint":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "&#"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, ";"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@5e
    .line 577
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 429
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "illegal position for attribute"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 433
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 434
    const-string/jumbo p1, ""

    #@12
    .line 440
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 441
    const-string/jumbo v0, ""

    #@1b
    .line 460
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@1d
    const/16 v3, 0x20

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@22
    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_2

    #@28
    .line 462
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2a
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2d
    .line 463
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2f
    const/16 v3, 0x3a

    #@31
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@34
    .line 465
    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@36
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@39
    .line 466
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@3b
    const/16 v3, 0x3d

    #@3d
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@40
    .line 467
    const/16 v2, 0x22

    #@42
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    #@45
    move-result v2

    #@46
    const/4 v3, -0x1

    #@47
    if-ne v2, v3, :cond_4

    #@49
    const/16 v1, 0x22

    #@4b
    .line 468
    .local v1, "q":C
    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@4d
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@50
    .line 469
    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@53
    .line 470
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@55
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@58
    .line 472
    return-object p0

    #@59
    .line 442
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "q":C
    :cond_3
    const/4 v2, 0x0

    #@5a
    const/4 v3, 0x1

    #@5b
    invoke-direct {p0, p1, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    .restart local v0    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 467
    :cond_4
    const/16 v1, 0x27

    #@62
    .restart local v1    # "q":C
    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    const/4 v3, 0x0

    #@1
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 554
    const-string/jumbo v3, "]]>"

    #@7
    const-string/jumbo v4, "]]]]><![CDATA[>"

    #@a
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 555
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@10
    const-string/jumbo v4, "<![CDATA["

    #@13
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@16
    .line 556
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    if-ge v2, v3, :cond_5

    #@1d
    .line 557
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v1

    #@21
    .line 558
    .local v1, "ch":C
    const/16 v3, 0x20

    #@23
    if-lt v1, v3, :cond_1

    #@25
    const v3, 0xd7ff

    #@28
    if-gt v1, v3, :cond_1

    #@2a
    :cond_0
    const/4 v0, 0x1

    #@2b
    .line 561
    .local v0, "allowedInCdata":Z
    :goto_1
    if-eqz v0, :cond_3

    #@2d
    .line 562
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2f
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@32
    .line 556
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 559
    .end local v0    # "allowedInCdata":Z
    :cond_1
    const/16 v3, 0x9

    #@37
    if-eq v1, v3, :cond_0

    #@39
    const/16 v3, 0xa

    #@3b
    if-eq v1, v3, :cond_0

    #@3d
    const/16 v3, 0xd

    #@3f
    if-eq v1, v3, :cond_0

    #@41
    .line 560
    const v3, 0xe000

    #@44
    if-lt v1, v3, :cond_2

    #@46
    const v3, 0xfffd

    #@49
    if-gt v1, v3, :cond_2

    #@4b
    const/4 v0, 0x1

    #@4c
    .restart local v0    # "allowedInCdata":Z
    goto :goto_1

    #@4d
    .end local v0    # "allowedInCdata":Z
    :cond_2
    const/4 v0, 0x0

    #@4e
    .restart local v0    # "allowedInCdata":Z
    goto :goto_1

    #@4f
    .line 563
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_4

    #@55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@58
    move-result v3

    #@59
    add-int/lit8 v3, v3, -0x1

    #@5b
    if-ge v2, v3, :cond_4

    #@5d
    .line 565
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@5f
    const-string/jumbo v4, "]]>"

    #@62
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@65
    .line 566
    add-int/lit8 v2, v2, 0x1

    #@67
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v3

    #@6b
    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    #@6e
    .line 567
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@70
    const-string/jumbo v4, "<![CDATA["

    #@73
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@76
    goto :goto_2

    #@77
    .line 569
    :cond_4
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    #@7a
    goto :goto_2

    #@7b
    .line 572
    .end local v0    # "allowedInCdata":Z
    .end local v1    # "ch":C
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@7d
    const-string/jumbo v4, "]]>"

    #@80
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@83
    .line 550
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 592
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@6
    const-string/jumbo v1, "<!--"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@c
    .line 593
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@e
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@11
    .line 594
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@13
    const-string/jumbo v1, "-->"

    #@16
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@19
    .line 590
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "dd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2
    const-string/jumbo v1, "<!DOCTYPE"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@8
    .line 161
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@a
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@d
    .line 162
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@f
    const-string/jumbo v1, ">"

    #@12
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@15
    .line 159
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 167
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@6
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@8
    mul-int/lit8 v1, v1, 0x3

    #@a
    add-int/lit8 v1, v1, -0x3

    #@c
    aget-object v0, v0, v1

    #@e
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@10
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@12
    mul-int/lit8 v2, v2, 0x3

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    aget-object v1, v1, v2

    #@18
    invoke-virtual {p0, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    goto :goto_0

    #@1c
    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    #@1f
    .line 165
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 489
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6
    add-int/lit8 v2, v2, -0x1

    #@8
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a
    .line 493
    :cond_0
    if-nez p1, :cond_2

    #@c
    .line 494
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@e
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@10
    mul-int/lit8 v3, v3, 0x3

    #@12
    aget-object v2, v2, v3

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 498
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "</{"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, "}"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, "> does not match start"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 495
    :cond_2
    if-eqz p1, :cond_3

    #@44
    .line 496
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@46
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@48
    mul-int/lit8 v3, v3, 0x3

    #@4a
    aget-object v2, v2, v3

    #@4c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_1

    #@52
    .line 497
    :cond_3
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@54
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@56
    mul-int/lit8 v3, v3, 0x3

    #@58
    add-int/lit8 v3, v3, 0x2

    #@5a
    aget-object v2, v2, v3

    #@5c
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_1

    #@62
    .line 500
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@64
    if-eqz v2, :cond_4

    #@66
    .line 501
    const/4 v2, 0x1

    #@67
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@6a
    .line 502
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6c
    add-int/lit8 v2, v2, -0x1

    #@6e
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@70
    .line 521
    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@72
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@74
    add-int/lit8 v3, v3, 0x1

    #@76
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@78
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@7a
    aget v4, v4, v5

    #@7c
    aput v4, v2, v3

    #@7e
    .line 522
    return-object p0

    #@7f
    .line 505
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@81
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@83
    add-int/lit8 v3, v3, 0x1

    #@85
    aget-boolean v2, v2, v3

    #@87
    if-eqz v2, :cond_5

    #@89
    .line 506
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@8b
    const-string/jumbo v3, "\r\n"

    #@8e
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@91
    .line 507
    const/4 v0, 0x0

    #@92
    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@94
    if-ge v0, v2, :cond_5

    #@96
    .line 508
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@98
    const-string/jumbo v3, "  "

    #@9b
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@9e
    .line 507
    add-int/lit8 v0, v0, 0x1

    #@a0
    goto :goto_1

    #@a1
    .line 511
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@a3
    const-string/jumbo v3, "</"

    #@a6
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@a9
    .line 512
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@ab
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@ad
    mul-int/lit8 v3, v3, 0x3

    #@af
    add-int/lit8 v3, v3, 0x1

    #@b1
    aget-object v1, v2, v3

    #@b3
    .line 513
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@b6
    move-result v2

    #@b7
    if-nez v2, :cond_6

    #@b9
    .line 514
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@bb
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@be
    .line 515
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@c0
    const/16 v3, 0x3a

    #@c2
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@c5
    .line 517
    :cond_6
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@c7
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@ca
    .line 518
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@cc
    const/16 v3, 0x3e

    #@ce
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    #@d1
    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 174
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@6
    const/16 v1, 0x26

    #@8
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@b
    .line 175
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@d
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@10
    .line 176
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@12
    const/16 v1, 0x3b

    #@14
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    #@17
    .line 172
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 477
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    #@9
    .line 475
    return-void
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@b
    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 185
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@b
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@d
    aget-boolean v0, v0, v1

    #@f
    .line 181
    :goto_0
    return v0

    #@10
    .line 186
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@a
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    #@d
    move-result v1

    #@e
    mul-int/lit8 v1, v1, 0x3

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    aget-object v0, v0, v1

    #@14
    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@a
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    #@d
    move-result v1

    #@e
    mul-int/lit8 v1, v1, 0x3

    #@10
    add-int/lit8 v1, v1, -0x3

    #@12
    aget-object v0, v0, v1

    #@14
    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "create"    # Z

    #@0
    .prologue
    .line 191
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 193
    :catch_0
    move-exception v0

    #@7
    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Unsupported property"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3
    .line 257
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "pi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 600
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@6
    const-string/jumbo v1, "<?"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@c
    .line 601
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@e
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@11
    .line 602
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@13
    const-string/jumbo v1, "?>"

    #@16
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@19
    .line 598
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 262
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 264
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@b
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@d
    aput-boolean p2, v0, v1

    #@f
    .line 261
    return-void

    #@10
    .line 267
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "Unsupported Feature"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    if-nez p1, :cond_0

    #@2
    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "os == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 336
    :cond_0
    if-nez p2, :cond_2

    #@d
    .line 337
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@f
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 335
    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@15
    .line 339
    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@17
    .line 340
    if-eqz p2, :cond_1

    #@19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1b
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "utf"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 341
    const/4 v0, 0x1

    #@29
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@2b
    .line 332
    :cond_1
    return-void

    #@2c
    .line 338
    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2e
    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@31
    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 306
    instance-of v0, p1, Ljava/io/BufferedWriter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 307
    check-cast p1, Ljava/io/BufferedWriter;

    #@9
    .end local p1    # "writer":Ljava/io/Writer;
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@b
    .line 318
    :goto_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@d
    aput v2, v0, v3

    #@f
    .line 319
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@11
    aput v2, v0, v4

    #@13
    .line 320
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@15
    const-string/jumbo v1, ""

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 321
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@1c
    const-string/jumbo v1, ""

    #@1f
    aput-object v1, v0, v4

    #@21
    .line 322
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@23
    const-string/jumbo v1, "xml"

    #@26
    aput-object v1, v0, v2

    #@28
    .line 323
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@2a
    const-string/jumbo v1, "http://www.w3.org/XML/1998/namespace"

    #@2d
    const/4 v2, 0x3

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 324
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@32
    .line 325
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    #@34
    .line 326
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@36
    .line 328
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@38
    .line 303
    return-void

    #@39
    .line 309
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    #@3b
    const/16 v1, 0x1f4

    #@3d
    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    #@40
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@42
    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 278
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 279
    if-nez p1, :cond_0

    #@6
    .line 280
    const-string/jumbo p1, ""

    #@9
    .line 281
    :cond_0
    if-nez p2, :cond_1

    #@b
    .line 282
    const-string/jumbo p2, ""

    #@e
    .line 284
    :cond_1
    const/4 v4, 0x1

    #@f
    invoke-direct {p0, p2, v4, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 288
    .local v0, "defined":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 289
    return-void

    #@1a
    .line 291
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@1c
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@1e
    add-int/lit8 v5, v5, 0x1

    #@20
    aget v6, v4, v5

    #@22
    add-int/lit8 v7, v6, 0x1

    #@24
    aput v7, v4, v5

    #@26
    shl-int/lit8 v2, v6, 0x1

    #@28
    .line 293
    .local v2, "pos":I
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@2a
    array-length v4, v4

    #@2b
    add-int/lit8 v5, v2, 0x1

    #@2d
    if-ge v4, v5, :cond_3

    #@2f
    .line 294
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@31
    array-length v4, v4

    #@32
    add-int/lit8 v4, v4, 0x10

    #@34
    new-array v1, v4, [Ljava/lang/String;

    #@36
    .line 295
    .local v1, "hlp":[Ljava/lang/String;
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@38
    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 296
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@3d
    .line 299
    .end local v1    # "hlp":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@3f
    add-int/lit8 v3, v2, 0x1

    #@41
    .end local v2    # "pos":I
    .local v3, "pos":I
    aput-object p1, v4, v2

    #@43
    .line 300
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@45
    aput-object p2, v4, v3

    #@47
    .line 276
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unsupported Property:"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2
    const-string/jumbo v1, "<?xml version=\'1.0\' "

    #@5
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@8
    .line 348
    if-eqz p1, :cond_0

    #@a
    .line 349
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@c
    .line 350
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "utf"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 351
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@1e
    .line 355
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 356
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@24
    const-string/jumbo v1, "encoding=\'"

    #@27
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2a
    .line 357
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@2c
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@31
    .line 358
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@33
    const-string/jumbo v1, "\' "

    #@36
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@39
    .line 361
    :cond_1
    if-eqz p2, :cond_2

    #@3b
    .line 362
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@3d
    const-string/jumbo v1, "standalone=\'"

    #@40
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@43
    .line 363
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@45
    .line 364
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_3

    #@4b
    const-string/jumbo v0, "yes"

    #@4e
    .line 363
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@51
    .line 365
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@53
    const-string/jumbo v1, "\' "

    #@56
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@59
    .line 367
    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@5b
    const-string/jumbo v1, "?>"

    #@5e
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@61
    .line 345
    return-void

    #@62
    .line 364
    :cond_3
    const-string/jumbo v0, "no"

    #@65
    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 372
    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@5
    .line 377
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@7
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@9
    aget-boolean v5, v5, v6

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 378
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@f
    const-string/jumbo v6, "\r\n"

    #@12
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@15
    .line 379
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@18
    if-ge v3, v5, :cond_0

    #@1a
    .line 380
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@1c
    const-string/jumbo v6, "  "

    #@1f
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@22
    .line 379
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 383
    .end local v3    # "i":I
    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@27
    mul-int/lit8 v0, v5, 0x3

    #@29
    .line 385
    .local v0, "esp":I
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@2b
    array-length v5, v5

    #@2c
    add-int/lit8 v6, v0, 0x3

    #@2e
    if-ge v5, v6, :cond_1

    #@30
    .line 386
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@32
    array-length v5, v5

    #@33
    add-int/lit8 v5, v5, 0xc

    #@35
    new-array v2, v5, [Ljava/lang/String;

    #@37
    .line 387
    .local v2, "hlp":[Ljava/lang/String;
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@39
    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c
    .line 388
    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@3e
    .line 392
    .end local v2    # "hlp":[Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    #@40
    .line 393
    const-string/jumbo v4, ""

    #@43
    .line 396
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_5

    #@45
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 397
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@4d
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@4f
    aget v3, v5, v6

    #@51
    .line 398
    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@53
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@55
    add-int/lit8 v6, v6, 0x1

    #@57
    aget v5, v5, v6

    #@59
    .line 397
    if-ge v3, v5, :cond_5

    #@5b
    .line 400
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@5d
    mul-int/lit8 v6, v3, 0x2

    #@5f
    aget-object v5, v5, v6

    #@61
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@69
    mul-int/lit8 v6, v3, 0x2

    #@6b
    add-int/lit8 v6, v6, 0x1

    #@6d
    aget-object v5, v5, v6

    #@6f
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_4

    #@75
    .line 399
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@77
    goto :goto_2

    #@78
    .line 394
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v8, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@7d
    .line 401
    .restart local v3    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7f
    const-string/jumbo v6, "Cannot set default namespace for elements in no namespace"

    #@82
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@85
    throw v5

    #@86
    .line 406
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@88
    add-int/lit8 v1, v0, 0x1

    #@8a
    .end local v0    # "esp":I
    .local v1, "esp":I
    aput-object p1, v5, v0

    #@8c
    .line 407
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@8e
    add-int/lit8 v0, v1, 0x1

    #@90
    .end local v1    # "esp":I
    .restart local v0    # "esp":I
    aput-object v4, v5, v1

    #@92
    .line 408
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@94
    aput-object p2, v5, v0

    #@96
    .line 410
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@98
    const/16 v6, 0x3c

    #@9a
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    #@9d
    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@a0
    move-result v5

    #@a1
    if-nez v5, :cond_6

    #@a3
    .line 412
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@a5
    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@a8
    .line 413
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@aa
    const/16 v6, 0x3a

    #@ac
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    #@af
    .line 416
    :cond_6
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    #@b1
    invoke-virtual {v5, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@b4
    .line 418
    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@b6
    .line 420
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 538
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 539
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@6
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@8
    aput-boolean v2, v0, v1

    #@a
    .line 540
    const/4 v0, -0x1

    #@b
    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@e
    .line 541
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@5
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 547
    return-object p0
.end method
