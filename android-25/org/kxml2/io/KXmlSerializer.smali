.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private mPos:I

.field private final mText:[C

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/Writer;


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
    .line 31
    const/16 v0, 0x2000

    #@6
    new-array v0, v0, [C

    #@8
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    #@a
    .line 42
    const/16 v0, 0xc

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@10
    .line 44
    new-array v0, v1, [I

    #@12
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@14
    .line 45
    const/16 v0, 0x8

    #@16
    new-array v0, v0, [Ljava/lang/String;

    #@18
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@1a
    .line 47
    new-array v0, v1, [Z

    #@1c
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@1e
    .line 28
    return-void
.end method

.method private append(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@2
    const/16 v1, 0x2000

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 53
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    #@9
    .line 55
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    #@b
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@11
    aput-char p1, v0, v1

    #@13
    .line 51
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;II)V

    #@8
    .line 74
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    :goto_0
    if-lez p3, :cond_2

    #@2
    .line 60
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@4
    const/16 v2, 0x2000

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 61
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    #@b
    .line 63
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@d
    rsub-int v0, v1, 0x2000

    #@f
    .line 64
    .local v0, "batch":I
    if-le v0, p3, :cond_1

    #@11
    .line 65
    move v0, p3

    #@12
    .line 67
    :cond_1
    add-int v1, p2, v0

    #@14
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    #@16
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@18
    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@1b
    .line 68
    add-int/2addr p2, v0

    #@1c
    .line 69
    sub-int/2addr p3, v0

    #@1d
    .line 70
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@1f
    add-int/2addr v1, v0

    #@20
    iput v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@22
    goto :goto_0

    #@23
    .line 58
    .end local v0    # "batch":I
    :cond_2
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
    .line 87
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 88
    return-void

    #@8
    .line 90
    :cond_0
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a
    add-int/lit8 v3, v3, 0x1

    #@c
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@e
    .line 91
    iput-boolean v7, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@10
    .line 93
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@12
    array-length v3, v3

    #@13
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@15
    if-gt v3, v4, :cond_1

    #@17
    .line 94
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@19
    add-int/lit8 v3, v3, 0x4

    #@1b
    new-array v1, v3, [Z

    #@1d
    .line 95
    .local v1, "hlp":[Z
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@1f
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@21
    invoke-static {v3, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@24
    .line 96
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@26
    .line 98
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
    .line 100
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
    .line 101
    const-string/jumbo v3, " xmlns"

    #@47
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@4a
    .line 102
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@4c
    mul-int/lit8 v4, v2, 0x2

    #@4e
    aget-object v3, v3, v4

    #@50
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@53
    move-result v3

    #@54
    if-nez v3, :cond_3

    #@56
    .line 103
    const/16 v3, 0x3a

    #@58
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@5b
    .line 104
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@5d
    mul-int/lit8 v4, v2, 0x2

    #@5f
    aget-object v3, v3, v4

    #@61
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@64
    .line 108
    :cond_2
    const-string/jumbo v3, "=\""

    #@67
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@6a
    .line 109
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@6c
    mul-int/lit8 v4, v2, 0x2

    #@6e
    add-int/lit8 v4, v4, 0x1

    #@70
    aget-object v3, v3, v4

    #@72
    invoke-direct {p0, v3, v8}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@75
    .line 110
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@78
    .line 100
    add-int/lit8 v2, v2, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 106
    :cond_3
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@82
    move-result v3

    #@83
    if-eqz v3, :cond_2

    #@85
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@87
    mul-int/lit8 v4, v2, 0x2

    #@89
    add-int/lit8 v4, v4, 0x1

    #@8b
    aget-object v3, v3, v4

    #@8d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@90
    move-result v3

    #@91
    if-nez v3, :cond_2

    #@93
    .line 107
    new-instance v3, Ljava/lang/IllegalStateException;

    #@95
    const-string/jumbo v4, "Cannot set default namespace for elements in no namespace"

    #@98
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v3

    #@9c
    .line 113
    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@9e
    array-length v3, v3

    #@9f
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a1
    add-int/lit8 v4, v4, 0x1

    #@a3
    if-gt v3, v4, :cond_5

    #@a5
    .line 114
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a7
    add-int/lit8 v3, v3, 0x8

    #@a9
    new-array v0, v3, [I

    #@ab
    .line 115
    .local v0, "hlp":[I
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@ad
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@af
    add-int/lit8 v4, v4, 0x1

    #@b1
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@b4
    .line 116
    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@b6
    .line 119
    .end local v0    # "hlp":[I
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@b8
    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@ba
    add-int/lit8 v4, v4, 0x1

    #@bc
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@be
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@c0
    aget v5, v5, v6

    #@c2
    aput v5, v3, v4

    #@c4
    .line 122
    if-eqz p1, :cond_6

    #@c6
    .line 123
    const-string/jumbo v3, " />"

    #@c9
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@cc
    .line 86
    :goto_1
    return-void

    #@cd
    .line 125
    :cond_6
    const/16 v3, 0x3e

    #@cf
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@d2
    goto :goto_1
.end method

.method private final flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 79
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 80
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    #@7
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    #@9
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@e
    .line 81
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    #@10
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@13
    .line 82
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    #@15
    .line 78
    :cond_0
    return-void
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
    .line 238
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
    .line 241
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
    .line 242
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
    .line 240
    :cond_0
    add-int/lit8 v1, v1, -0x2

    #@2a
    goto :goto_0

    #@2b
    .line 243
    :cond_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@2d
    aget-object v0, v5, v1

    #@2f
    .line 244
    .local v0, "cand":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x2

    #@31
    .line 245
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
    .line 244
    if-ge v2, v5, :cond_2

    #@3d
    .line 247
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
    .line 248
    const/4 v0, 0x0

    #@48
    .line 252
    .end local v0    # "cand":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    #@4a
    .line 253
    return-object v0

    #@4b
    .line 246
    .restart local v0    # "cand":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 257
    .end local v0    # "cand":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_4
    if-nez p3, :cond_5

    #@50
    .line 258
    return-object v7

    #@51
    .line 262
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_7

    #@57
    .line 263
    const-string/jumbo v4, ""

    #@5a
    .line 279
    :cond_6
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5c
    .line 280
    .local v3, "p":Z
    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@5e
    .line 281
    invoke-virtual {p0, v4, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@61
    .line 282
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@63
    .line 283
    return-object v4

    #@64
    .line 266
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
    .line 267
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
    .line 270
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
    .line 271
    const/4 v4, 0x0

    #@97
    .line 276
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_6

    #@99
    goto :goto_2

    #@9a
    .line 269
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
    .line 182
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
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "quot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 130
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_a

    #@9
    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v1

    #@d
    .line 132
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    #@10
    .line 151
    if-ne v1, p2, :cond_2

    #@12
    .line 152
    const/16 v3, 0x22

    #@14
    if-ne v1, v3, :cond_1

    #@16
    const-string/jumbo v3, "&quot;"

    #@19
    :goto_1
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@1c
    .line 130
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 136
    :sswitch_0
    const/4 v3, -0x1

    #@20
    if-ne p2, v3, :cond_0

    #@22
    .line 137
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@25
    goto :goto_2

    #@26
    .line 139
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "&#"

    #@2e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const/16 v6, 0x3b

    #@38
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@43
    goto :goto_2

    #@44
    .line 142
    :sswitch_1
    const-string/jumbo v3, "&amp;"

    #@47
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@4a
    goto :goto_2

    #@4b
    .line 145
    :sswitch_2
    const-string/jumbo v3, "&gt;"

    #@4e
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@51
    goto :goto_2

    #@52
    .line 148
    :sswitch_3
    const-string/jumbo v3, "&lt;"

    #@55
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@58
    goto :goto_2

    #@59
    .line 152
    :cond_1
    const-string/jumbo v3, "&apos;"

    #@5c
    goto :goto_1

    #@5d
    .line 162
    :cond_2
    const/16 v3, 0x20

    #@5f
    if-lt v1, v3, :cond_5

    #@61
    const v3, 0xd7ff

    #@64
    if-gt v1, v3, :cond_5

    #@66
    :cond_3
    move v0, v4

    #@67
    .line 163
    .local v0, "allowedInXml":Z
    :goto_3
    if-eqz v0, :cond_8

    #@69
    .line 164
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@6b
    if-nez v3, :cond_4

    #@6d
    const/16 v3, 0x7f

    #@6f
    if-ge v1, v3, :cond_7

    #@71
    .line 165
    :cond_4
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@74
    goto :goto_2

    #@75
    .line 162
    .end local v0    # "allowedInXml":Z
    :cond_5
    const v3, 0xe000

    #@78
    if-lt v1, v3, :cond_6

    #@7a
    const v3, 0xfffd

    #@7d
    if-le v1, v3, :cond_3

    #@7f
    :cond_6
    move v0, v5

    #@80
    goto :goto_3

    #@81
    .line 167
    .restart local v0    # "allowedInXml":Z
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v6, "&#"

    #@89
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    const-string/jumbo v6, ";"

    #@94
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@9f
    goto/16 :goto_2

    #@a1
    .line 169
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@a4
    move-result v3

    #@a5
    if-eqz v3, :cond_9

    #@a7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@aa
    move-result v3

    #@ab
    add-int/lit8 v3, v3, -0x1

    #@ad
    if-ge v2, v3, :cond_9

    #@af
    .line 170
    add-int/lit8 v3, v2, 0x1

    #@b1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@b4
    move-result v3

    #@b5
    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    #@b8
    .line 171
    add-int/lit8 v2, v2, 0x1

    #@ba
    .line 169
    goto/16 :goto_2

    #@bc
    .line 173
    :cond_9
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    #@bf
    goto/16 :goto_2

    #@c1
    .line 129
    .end local v0    # "allowedInXml":Z
    .end local v1    # "c":C
    :cond_a
    return-void

    #@c2
    .line 132
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
    .line 604
    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 605
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
    .line 606
    const-string/jumbo v3, " U+"

    #@1f
    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 606
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 606
    const-string/jumbo v3, ")"

    #@2e
    .line 605
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
    .line 611
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3d
    move-result v0

    #@3e
    .line 612
    .local v0, "codePoint":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "&#"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, ";"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@5c
    .line 603
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
    const/16 v1, 0x22

    #@2
    .line 454
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 455
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "illegal position for attribute"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 459
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 460
    const-string/jumbo p1, ""

    #@14
    .line 466
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 467
    const-string/jumbo v0, ""

    #@1d
    .line 486
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    #@1f
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@22
    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_2

    #@28
    .line 488
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@2b
    .line 489
    const/16 v2, 0x3a

    #@2d
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@30
    .line 491
    :cond_2
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@33
    .line 492
    const/16 v2, 0x3d

    #@35
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@38
    .line 493
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    #@3b
    move-result v2

    #@3c
    const/4 v3, -0x1

    #@3d
    if-ne v2, v3, :cond_4

    #@3f
    .line 494
    .local v1, "q":C
    :goto_1
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@42
    .line 495
    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@45
    .line 496
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@48
    .line 498
    return-object p0

    #@49
    .line 468
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "q":C
    :cond_3
    const/4 v2, 0x0

    #@4a
    const/4 v3, 0x1

    #@4b
    invoke-direct {p0, p1, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .restart local v0    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 493
    :cond_4
    const/16 v1, 0x27

    #@52
    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 577
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@5
    .line 580
    const-string/jumbo v5, "]]>"

    #@8
    const-string/jumbo v6, "]]]]><![CDATA[>"

    #@b
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    .line 581
    const-string/jumbo v5, "<![CDATA["

    #@12
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@15
    .line 582
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-ge v2, v5, :cond_5

    #@1c
    .line 583
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 584
    .local v1, "ch":C
    const/16 v5, 0x20

    #@22
    if-lt v1, v5, :cond_1

    #@24
    const v5, 0xd7ff

    #@27
    if-gt v1, v5, :cond_1

    #@29
    :cond_0
    move v0, v3

    #@2a
    .line 587
    .local v0, "allowedInCdata":Z
    :goto_1
    if-eqz v0, :cond_3

    #@2c
    .line 588
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@2f
    .line 582
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 585
    .end local v0    # "allowedInCdata":Z
    :cond_1
    const/16 v5, 0x9

    #@34
    if-eq v1, v5, :cond_0

    #@36
    const/16 v5, 0xa

    #@38
    if-eq v1, v5, :cond_0

    #@3a
    const/16 v5, 0xd

    #@3c
    if-eq v1, v5, :cond_0

    #@3e
    .line 586
    const v5, 0xe000

    #@41
    if-lt v1, v5, :cond_2

    #@43
    const v5, 0xfffd

    #@46
    if-gt v1, v5, :cond_2

    #@48
    move v0, v3

    #@49
    goto :goto_1

    #@4a
    :cond_2
    move v0, v4

    #@4b
    goto :goto_1

    #@4c
    .line 589
    .restart local v0    # "allowedInCdata":Z
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_4

    #@52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@55
    move-result v5

    #@56
    add-int/lit8 v5, v5, -0x1

    #@58
    if-ge v2, v5, :cond_4

    #@5a
    .line 591
    const-string/jumbo v5, "]]>"

    #@5d
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@60
    .line 592
    add-int/lit8 v2, v2, 0x1

    #@62
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@65
    move-result v5

    #@66
    invoke-direct {p0, v1, v5}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    #@69
    .line 593
    const-string/jumbo v5, "<![CDATA["

    #@6c
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@6f
    goto :goto_2

    #@70
    .line 595
    :cond_4
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    #@73
    goto :goto_2

    #@74
    .line 598
    .end local v0    # "allowedInCdata":Z
    .end local v1    # "ch":C
    :cond_5
    const-string/jumbo v3, "]]>"

    #@77
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@7a
    .line 576
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 618
    const-string/jumbo v0, "<!--"

    #@7
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 619
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@d
    .line 620
    const-string/jumbo v0, "-->"

    #@10
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@13
    .line 616
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "dd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "<!DOCTYPE"

    #@3
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@6
    .line 195
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@9
    .line 196
    const/16 v0, 0x3e

    #@b
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@e
    .line 193
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
    .line 200
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 201
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
    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    #@1f
    .line 199
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
    .line 514
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 515
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6
    add-int/lit8 v2, v2, -0x1

    #@8
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a
    .line 519
    :cond_0
    if-nez p1, :cond_2

    #@c
    .line 520
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
    .line 524
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
    .line 521
    :cond_2
    if-eqz p1, :cond_3

    #@44
    .line 522
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
    .line 523
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
    .line 526
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@64
    if-eqz v2, :cond_4

    #@66
    .line 527
    const/4 v2, 0x1

    #@67
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@6a
    .line 528
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@6c
    add-int/lit8 v2, v2, -0x1

    #@6e
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@70
    .line 547
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
    .line 548
    return-object p0

    #@7f
    .line 531
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
    .line 532
    const-string/jumbo v2, "\r\n"

    #@8c
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@8f
    .line 533
    const/4 v0, 0x0

    #@90
    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@92
    if-ge v0, v2, :cond_5

    #@94
    .line 534
    const-string/jumbo v2, "  "

    #@97
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@9a
    .line 533
    add-int/lit8 v0, v0, 0x1

    #@9c
    goto :goto_1

    #@9d
    .line 537
    .end local v0    # "i":I
    :cond_5
    const-string/jumbo v2, "</"

    #@a0
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@a3
    .line 538
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@a5
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@a7
    mul-int/lit8 v3, v3, 0x3

    #@a9
    add-int/lit8 v3, v3, 0x1

    #@ab
    aget-object v1, v2, v3

    #@ad
    .line 539
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@b0
    move-result v2

    #@b1
    if-nez v2, :cond_6

    #@b3
    .line 540
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@b6
    .line 541
    const/16 v2, 0x3a

    #@b8
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@bb
    .line 543
    :cond_6
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@be
    .line 544
    const/16 v2, 0x3e

    #@c0
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@c3
    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 208
    const/16 v0, 0x26

    #@6
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@9
    .line 209
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@c
    .line 210
    const/16 v0, 0x3b

    #@e
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@11
    .line 206
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
    .line 502
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 503
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    #@7
    .line 501
    return-void
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 560
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
    .line 216
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 219
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@b
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@d
    aget-boolean v0, v0, v1

    #@f
    .line 215
    :goto_0
    return v0

    #@10
    .line 220
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 556
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
    .line 552
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
    .line 225
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
    .line 227
    :catch_0
    move-exception v0

    #@7
    .line 228
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
    .line 287
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
    .line 292
    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3
    .line 291
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "pi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 626
    const-string/jumbo v0, "<?"

    #@7
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 627
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@d
    .line 628
    const-string/jumbo v0, "?>"

    #@10
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@13
    .line 624
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 296
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 298
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@b
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@d
    aput-boolean p2, v0, v1

    #@f
    .line 295
    return-void

    #@10
    .line 301
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
    .line 360
    if-nez p1, :cond_0

    #@2
    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "os == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 363
    :cond_0
    if-nez p2, :cond_2

    #@d
    .line 364
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@f
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 362
    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@15
    .line 366
    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@17
    .line 367
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
    .line 368
    const/4 v0, 0x1

    #@29
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@2b
    .line 359
    :cond_1
    return-void

    #@2c
    .line 365
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
    .line 338
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    #@5
    .line 345
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@7
    aput v2, v0, v3

    #@9
    .line 346
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@b
    aput v2, v0, v4

    #@d
    .line 347
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@f
    const-string/jumbo v1, ""

    #@12
    aput-object v1, v0, v3

    #@14
    .line 348
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@16
    const-string/jumbo v1, ""

    #@19
    aput-object v1, v0, v4

    #@1b
    .line 349
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@1d
    const-string/jumbo v1, "xml"

    #@20
    aput-object v1, v0, v2

    #@22
    .line 350
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@24
    const-string/jumbo v1, "http://www.w3.org/XML/1998/namespace"

    #@27
    const/4 v2, 0x3

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 351
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@2c
    .line 352
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    #@2e
    .line 353
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@30
    .line 355
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@32
    .line 337
    return-void
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
    .line 312
    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 313
    if-nez p1, :cond_0

    #@6
    .line 314
    const-string/jumbo p1, ""

    #@9
    .line 315
    :cond_0
    if-nez p2, :cond_1

    #@b
    .line 316
    const-string/jumbo p2, ""

    #@e
    .line 318
    :cond_1
    const/4 v4, 0x1

    #@f
    invoke-direct {p0, p2, v4, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 322
    .local v0, "defined":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 323
    return-void

    #@1a
    .line 325
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
    .line 327
    .local v2, "pos":I
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@2a
    array-length v4, v4

    #@2b
    add-int/lit8 v5, v2, 0x1

    #@2d
    if-ge v4, v5, :cond_3

    #@2f
    .line 328
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@31
    array-length v4, v4

    #@32
    add-int/lit8 v4, v4, 0x10

    #@34
    new-array v1, v4, [Ljava/lang/String;

    #@36
    .line 329
    .local v1, "hlp":[Ljava/lang/String;
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@38
    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 330
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@3d
    .line 333
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
    .line 334
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@45
    aput-object p2, v4, v3

    #@47
    .line 310
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    .line 306
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
    .line 305
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
    .line 373
    const-string/jumbo v0, "<?xml version=\'1.0\' "

    #@3
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@6
    .line 375
    if-eqz p1, :cond_0

    #@8
    .line 376
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@a
    .line 377
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "utf"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 378
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    #@1c
    .line 382
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 383
    const-string/jumbo v0, "encoding=\'"

    #@23
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@26
    .line 384
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@2b
    .line 385
    const-string/jumbo v0, "\' "

    #@2e
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@31
    .line 388
    :cond_1
    if-eqz p2, :cond_2

    #@33
    .line 389
    const-string/jumbo v0, "standalone=\'"

    #@36
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@39
    .line 390
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_3

    #@3f
    const-string/jumbo v0, "yes"

    #@42
    :goto_0
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@45
    .line 391
    const-string/jumbo v0, "\' "

    #@48
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@4b
    .line 393
    :cond_2
    const-string/jumbo v0, "?>"

    #@4e
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@51
    .line 372
    return-void

    #@52
    .line 390
    :cond_3
    const-string/jumbo v0, "no"

    #@55
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
    .line 398
    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@5
    .line 403
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@7
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@9
    aget-boolean v5, v5, v6

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 404
    const-string/jumbo v5, "\r\n"

    #@10
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@13
    .line 405
    const/4 v3, 0x0

    #@14
    .local v3, "i":I
    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@16
    if-ge v3, v5, :cond_0

    #@18
    .line 406
    const-string/jumbo v5, "  "

    #@1b
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@1e
    .line 405
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 409
    .end local v3    # "i":I
    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@23
    mul-int/lit8 v0, v5, 0x3

    #@25
    .line 411
    .local v0, "esp":I
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@27
    array-length v5, v5

    #@28
    add-int/lit8 v6, v0, 0x3

    #@2a
    if-ge v5, v6, :cond_1

    #@2c
    .line 412
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@2e
    array-length v5, v5

    #@2f
    add-int/lit8 v5, v5, 0xc

    #@31
    new-array v2, v5, [Ljava/lang/String;

    #@33
    .line 413
    .local v2, "hlp":[Ljava/lang/String;
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@35
    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 414
    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@3a
    .line 418
    .end local v2    # "hlp":[Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    #@3c
    .line 419
    const-string/jumbo v4, ""

    #@3f
    .line 422
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_5

    #@41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_5

    #@47
    .line 423
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@49
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@4b
    aget v3, v5, v6

    #@4d
    .line 424
    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    #@4f
    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@51
    add-int/lit8 v6, v6, 0x1

    #@53
    aget v5, v5, v6

    #@55
    .line 423
    if-ge v3, v5, :cond_5

    #@57
    .line 426
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@59
    mul-int/lit8 v6, v3, 0x2

    #@5b
    aget-object v5, v5, v6

    #@5d
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_2

    #@63
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    #@65
    mul-int/lit8 v6, v3, 0x2

    #@67
    add-int/lit8 v6, v6, 0x1

    #@69
    aget-object v5, v5, v6

    #@6b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_4

    #@71
    .line 425
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@73
    goto :goto_2

    #@74
    .line 420
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v8, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@79
    .line 427
    .restart local v3    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@7b
    const-string/jumbo v6, "Cannot set default namespace for elements in no namespace"

    #@7e
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v5

    #@82
    .line 432
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@84
    add-int/lit8 v1, v0, 0x1

    #@86
    .end local v0    # "esp":I
    .local v1, "esp":I
    aput-object p1, v5, v0

    #@88
    .line 433
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@8a
    add-int/lit8 v0, v1, 0x1

    #@8c
    .end local v1    # "esp":I
    .restart local v0    # "esp":I
    aput-object v4, v5, v1

    #@8e
    .line 434
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    #@90
    aput-object p2, v5, v0

    #@92
    .line 436
    const/16 v5, 0x3c

    #@94
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@97
    .line 437
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@9a
    move-result v5

    #@9b
    if-nez v5, :cond_6

    #@9d
    .line 438
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@a0
    .line 439
    const/16 v5, 0x3a

    #@a2
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    #@a5
    .line 442
    :cond_6
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    #@a8
    .line 444
    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    #@aa
    .line 446
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
    .line 564
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    #@4
    .line 565
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    #@6
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    #@8
    aput-boolean v2, v0, v1

    #@a
    .line 566
    const/4 v0, -0x1

    #@b
    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    #@e
    .line 567
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
    .line 572
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@5
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 573
    return-object p0
.end method
