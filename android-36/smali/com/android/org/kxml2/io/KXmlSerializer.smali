.class public Lcom/android/org/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final blacklist BUFFER_LEN:I = 0x2000


# instance fields
.field private blacklist auto:I

.field private blacklist depth:I

.field private blacklist elementStack:[Ljava/lang/String;

.field private blacklist encoding:Ljava/lang/String;

.field private blacklist indent:[Z

.field private blacklist mPos:I

.field private final blacklist mText:[C

.field private blacklist nspCounts:[I

.field private blacklist nspStack:[Ljava/lang/String;

.field private blacklist pending:Z

.field private blacklist unicode:Z

.field private blacklist writer:Ljava/io/Writer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mText:[C

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 46
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 48
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    return-void
.end method

.method private blacklist append(C)V
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_9

    .line 54
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mText:[C

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    aput-char p1, v0, v1

    .line 57
    return-void
.end method

.method private blacklist append(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;II)V

    .line 94
    return-void
.end method

.method private blacklist append(Ljava/lang/String;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    nop

    :goto_1
    if-lez p3, :cond_23

    .line 61
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c

    .line 62
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 64
    :cond_c
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    sub-int/2addr v1, v0

    .line 65
    .local v1, "batch":I
    if-le v1, p3, :cond_12

    .line 66
    move v1, p3

    .line 68
    :cond_12
    add-int v0, p2, v1

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mText:[C

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    invoke-virtual {p1, p2, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 69
    add-int/2addr p2, v1

    .line 70
    sub-int/2addr p3, v1

    .line 71
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    .line 72
    .end local v1    # "batch":I
    goto :goto_1

    .line 73
    :cond_23
    return-void
.end method

.method private blacklist appendSpace(I)V
    .registers 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    nop

    :goto_1
    if-lez p1, :cond_25

    .line 78
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c

    .line 79
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 81
    :cond_c
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    sub-int/2addr v1, v0

    .line 82
    .local v1, "batch":I
    if-le v1, p1, :cond_12

    .line 83
    move v1, p1

    .line 85
    :cond_12
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mText:[C

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    add-int/2addr v3, v1

    const/16 v4, 0x20

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 86
    sub-int/2addr p1, v1

    .line 87
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    .line 88
    .end local v1    # "batch":I
    goto :goto_1

    .line 89
    :cond_25
    return-void
.end method

.method private final blacklist check(Z)V
    .registers 7
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v0, :cond_5

    .line 106
    return-void

    .line 108
    :cond_5
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 111
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    array-length v1, v1

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    if-gt v1, v2, :cond_24

    .line 112
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Z

    .line 113
    .local v1, "hlp":[Z
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    .line 116
    .end local v1    # "hlp":[Z
    :cond_24
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v2

    .line 118
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    .local v1, "i":I
    :goto_3a
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_9b

    .line 119
    const-string v2, " xmlns"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 121
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 122
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_83

    .line 124
    :cond_62
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_83

    .line 125
    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_83
    :goto_83
    const-string v2, "=\""

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x22

    invoke-direct {p0, v2, v3}, Lcom/android/org/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 128
    invoke-direct {p0, v3}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 131
    .end local v1    # "i":I
    :cond_9b
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_b5

    .line 132
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [I

    .line 133
    .local v1, "hlp":[I
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 137
    .end local v1    # "hlp":[I
    :cond_b5
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 140
    if-eqz p1, :cond_cb

    .line 141
    const-string v0, " />"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_d0

    .line 143
    :cond_cb
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 145
    :goto_d0
    return-void
.end method

.method private final blacklist flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    if-lez v0, :cond_15

    .line 98
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mText:[C

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 99
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 100
    iput v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->mPos:I

    .line 102
    :cond_15
    return-void
.end method

.method private final blacklist getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "includeDefault"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    .line 257
    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_4d

    .line 259
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    if-nez p2, :cond_26

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 261
    :cond_26
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 262
    .local v1, "cand":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x2

    .line 263
    .local v2, "j":I
    :goto_2c
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_47

    .line 265
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 266
    const/4 v1, 0x0

    .line 267
    goto :goto_47

    .line 264
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 270
    .end local v2    # "j":I
    :cond_47
    :goto_47
    if-eqz v1, :cond_4a

    .line 271
    return-object v1

    .line 258
    .end local v1    # "cand":Ljava/lang/String;
    :cond_4a
    add-int/lit8 v0, v0, -0x2

    goto :goto_c

    .line 275
    .end local v0    # "i":I
    :cond_4d
    if-nez p3, :cond_51

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 281
    const-string v0, ""

    .local v0, "prefix":Ljava/lang/String;
    goto :goto_92

    .line 284
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->auto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->auto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0    # "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x2

    .line 286
    .local v1, "i":I
    :goto_7f
    if-ltz v1, :cond_90

    .line 288
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 289
    const/4 v0, 0x0

    .line 290
    goto :goto_90

    .line 287
    :cond_8d
    add-int/lit8 v1, v1, -0x2

    goto :goto_7f

    .line 294
    .end local v1    # "i":I
    :cond_90
    :goto_90
    if-eqz v0, :cond_5a

    .line 297
    :goto_92
    iget-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 298
    .local v1, "p":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 301
    return-object v0
.end method

.method private static blacklist reportInvalidCharacter(C)V
    .registers 4
    .param p0, "ch"    # C

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final blacklist writeEscaped(Ljava/lang/String;I)V
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "quot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b7

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 150
    .local v1, "c":C
    const-string v2, "&#"

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_b8

    .line 169
    if-ne v1, p2, :cond_58

    .line 170
    const/16 v2, 0x22

    if-ne v1, v2, :cond_52

    const-string v2, "&quot;"

    goto :goto_54

    .line 163
    :sswitch_1a
    const-string v2, "&gt;"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 164
    goto/16 :goto_b4

    .line 166
    :sswitch_21
    const-string v2, "&lt;"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 167
    goto/16 :goto_b4

    .line 160
    :sswitch_28
    const-string v2, "&amp;"

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 161
    goto/16 :goto_b4

    .line 154
    :sswitch_2f
    const/4 v4, -0x1

    if-ne p2, v4, :cond_37

    .line 155
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    goto/16 :goto_b4

    .line 157
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 158
    goto :goto_b4

    .line 170
    :cond_52
    const-string v2, "&apos;"

    :goto_54
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 171
    goto :goto_b4

    .line 180
    :cond_58
    const/16 v4, 0x20

    if-lt v1, v4, :cond_61

    const v4, 0xd7ff

    if-le v1, v4, :cond_6b

    :cond_61
    const v4, 0xe000

    if-lt v1, v4, :cond_6d

    const v4, 0xfffd

    if-gt v1, v4, :cond_6d

    :cond_6b
    move v4, v3

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    .line 181
    .local v4, "allowedInXml":Z
    :goto_6e
    if-eqz v4, :cond_98

    .line 182
    iget-boolean v5, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->unicode:Z

    if-nez v5, :cond_94

    const/16 v5, 0x7f

    if-ge v1, v5, :cond_79

    goto :goto_94

    .line 185
    :cond_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_b4

    .line 183
    :cond_94
    :goto_94
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_b4

    .line 187
    :cond_98
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_b1

    .line 188
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 191
    :cond_b1
    invoke-static {v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 148
    .end local v1    # "c":C
    .end local v4    # "allowedInXml":Z
    :goto_b4
    add-int/2addr v0, v3

    goto/16 :goto_1

    .line 196
    .end local v0    # "i":I
    :cond_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        0x9 -> :sswitch_2f
        0xa -> :sswitch_2f
        0xd -> :sswitch_2f
        0x26 -> :sswitch_28
        0x3c -> :sswitch_21
        0x3e -> :sswitch_1a
    .end sparse-switch
.end method

.method private blacklist writeSurrogate(CC)V
    .registers 6
    .param p1, "high"    # C
    .param p2, "low"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 638
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 639
    .local v0, "codePoint":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 640
    return-void

    .line 632
    .end local v0    # "codePoint":I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad surrogate pair (U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_49

    .line 482
    if-nez p1, :cond_8

    .line 483
    const-string p1, ""

    .line 489
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 490
    const-string v0, ""

    goto :goto_17

    .line 491
    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_17
    nop

    .line 509
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 510
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 511
    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 512
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 514
    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 515
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 516
    const/16 v1, 0x22

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3d

    goto :goto_3f

    :cond_3d
    const/16 v1, 0x27

    .line 517
    .local v1, "q":C
    :goto_3f
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 518
    invoke-direct {p0, p3, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 519
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 521
    return-object p0

    .line 478
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "q":C
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal position for attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 607
    const-string v1, "]]]]><![CDATA[>"

    const-string v2, "]]>"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 608
    const-string v1, "<![CDATA["

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 609
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 610
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 611
    .local v4, "ch":C
    const/16 v5, 0x20

    const/4 v6, 0x1

    if-lt v4, v5, :cond_26

    const v5, 0xd7ff

    if-le v4, v5, :cond_3f

    :cond_26
    const/16 v5, 0x9

    if-eq v4, v5, :cond_3f

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3f

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3f

    const v5, 0xe000

    if-lt v4, v5, :cond_3d

    const v5, 0xfffd

    if-gt v4, v5, :cond_3d

    goto :goto_3f

    :cond_3d
    move v5, v0

    goto :goto_40

    :cond_3f
    :goto_3f
    move v5, v6

    .line 614
    .local v5, "allowedInCdata":Z
    :goto_40
    if-eqz v5, :cond_46

    .line 615
    invoke-direct {p0, v4}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_66

    .line 616
    :cond_46
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v3, v7, :cond_63

    .line 618
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 619
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v4, v7}, Lcom/android/org/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    .line 620
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_66

    .line 622
    :cond_63
    invoke-static {v4}, Lcom/android/org/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 609
    .end local v4    # "ch":C
    .end local v5    # "allowedInCdata":Z
    :goto_66
    add-int/2addr v3, v6

    goto :goto_12

    .line 625
    .end local v3    # "i":I
    :cond_68
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 645
    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 647
    const-string v0, "-->"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 3
    .param p1, "dd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const-string v0, "<!DOCTYPE"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 215
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    nop

    :goto_1
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    if-lez v0, :cond_1d

    .line 219
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 221
    :cond_1d
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->flush()V

    .line 222
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 538
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    .line 542
    :cond_a
    if-nez p1, :cond_16

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    aget-object v0, v0, v2

    if-nez v0, :cond_8f

    :cond_16
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    aget-object v0, v0, v2

    .line 545
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_26
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v0, v0, v2

    .line 546
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 549
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_43

    .line 550
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 551
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    goto :goto_81

    .line 554
    :cond_43
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v2, v1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5d

    .line 559
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 560
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 561
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->appendSpace(I)V

    .line 564
    :cond_5d
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 566
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    .line 567
    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 568
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 570
    :cond_79
    invoke-direct {p0, p2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 571
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 574
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_81
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 575
    return-object p0

    .line 547
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> does not match start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 226
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 228
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 229
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 526
    invoke-direct {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 527
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 587
    iget-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    :goto_b
    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    nop

    .line 235
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    goto :goto_11

    .line 238
    :cond_10
    const/4 v0, 0x0

    .line 233
    :goto_11
    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 583
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_14

    :cond_8
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_14
    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 3

    .line 579
    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_14

    :cond_8
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    :goto_14
    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .line 243
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 245
    :catch_6
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 3
    .param p1, "pi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 653
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 655
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 314
    nop

    .line 315
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 316
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    .line 320
    return-void

    .line 319
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    if-eqz p1, :cond_29

    .line 380
    nop

    .line 381
    if-nez p2, :cond_b

    .line 382
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_10

    .line 383
    :cond_b
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 380
    :goto_10
    invoke-virtual {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 384
    iput-object p2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 385
    if-eqz p2, :cond_28

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->unicode:Z

    .line 388
    :cond_28
    return-void

    .line 379
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 7
    .param p1, "writer"    # Ljava/io/Writer;

    .line 356
    iput-object p1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    .line 363
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 364
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 365
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v1

    .line 366
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object v4, v0, v3

    .line 367
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v3, "xml"

    aput-object v3, v0, v2

    .line 368
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    aput-object v3, v0, v2

    .line 369
    iput-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 370
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->auto:I

    .line 371
    iput v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    .line 373
    iput-boolean v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->unicode:Z

    .line 374
    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 331
    if-nez p1, :cond_8

    .line 332
    const-string p1, ""

    .line 333
    :cond_8
    if-nez p2, :cond_c

    .line 334
    const-string p2, ""

    .line 336
    :cond_c
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "defined":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 341
    return-void

    .line 343
    :cond_18
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v4, v1

    aget v5, v3, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v4

    shl-int/lit8 v1, v5, 0x1

    .line 345
    .local v1, "pos":I
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_3a

    .line 346
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    .line 347
    .local v3, "hlp":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v4, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iput-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 351
    .end local v3    # "hlp":[Ljava/lang/String;
    :cond_3a
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aput-object p1, v0, v1

    .line 352
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v0, v3

    .line 353
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    const-string v0, "<?xml version=\'1.0\' "

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 393
    if-eqz p1, :cond_1a

    .line 394
    iput-object p1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 395
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->unicode:Z

    .line 400
    :cond_1a
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    const-string v1, "\' "

    if-eqz v0, :cond_2d

    .line 401
    const-string v0, "encoding=\'"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 406
    :cond_2d
    if-eqz p2, :cond_45

    .line 407
    const-string v0, "standalone=\'"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "yes"

    goto :goto_3f

    :cond_3d
    const-string v0, "no"

    :goto_3f
    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 411
    :cond_45
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1d

    .line 426
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 427
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 428
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->appendSpace(I)V

    .line 432
    :cond_1d
    iget v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    .line 434
    .local v1, "esp":I
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v3, v1, 0x3

    if-ge v2, v3, :cond_36

    .line 435
    iget-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 436
    .local v2, "hlp":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iput-object v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 441
    .end local v2    # "hlp":[Ljava/lang/String;
    :cond_36
    const/4 v0, 0x1

    if-nez p1, :cond_3c

    .line 442
    const-string v2, ""

    goto :goto_40

    .line 443
    :cond_3c
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    :goto_40
    nop

    .line 445
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 446
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v3, v4

    .line 447
    .local v3, "i":I
    :goto_4f
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    if-ge v3, v4, :cond_7d

    .line 449
    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_72

    goto :goto_7a

    .line 450
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 455
    .end local v3    # "i":I
    :cond_7d
    iget-object v3, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "esp":I
    .local v4, "esp":I
    aput-object p1, v3, v1

    .line 456
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "esp":I
    .local v3, "esp":I
    aput-object v2, v1, v4

    .line 457
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v1, v3

    .line 459
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 460
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 461
    invoke-direct {p0, v2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 462
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(C)V

    .line 465
    :cond_a0
    invoke-direct {p0, p2}, Lcom/android/org/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 467
    iput-boolean v0, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->pending:Z

    .line 469
    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->check(Z)V

    .line 592
    iget-object v1, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lcom/android/org/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean v0, v1, v2

    .line 593
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 594
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/android/org/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    return-object p0
.end method
