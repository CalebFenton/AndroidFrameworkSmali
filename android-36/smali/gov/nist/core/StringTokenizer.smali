.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected greylist buffer:Ljava/lang/String;

.field protected greylist bufferLen:I

.field protected greylist ptr:I

.field protected greylist savedPtr:I


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 55
    return-void
.end method

.method public static greylist getSDPFieldName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "line"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 192
    return-object v0

    .line 193
    :cond_4
    const/4 v1, 0x0

    .line 195
    .local v1, "fieldName":Ljava/lang/String;
    :try_start_5
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "begin":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_10} :catch_12

    .line 199
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "begin":I
    .local v0, "fieldName":Ljava/lang/String;
    nop

    .line 200
    return-object v0

    .line 197
    .end local v0    # "fieldName":Ljava/lang/String;
    .restart local v1    # "fieldName":Ljava/lang/String;
    :catch_12
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method

.method public static greylist isAlpha(C)Z
    .registers 4
    .param p0, "ch"    # C

    .line 82
    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_18

    .line 83
    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x41

    if-lt p0, v0, :cond_17

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_17

    :cond_16
    move v1, v2

    :cond_17
    return v1

    .line 86
    :cond_18
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    move v1, v2

    :cond_25
    return v1
.end method

.method public static greylist isAlphaDigit(C)Z
    .registers 4
    .param p0, "ch"    # C

    .line 100
    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_20

    .line 101
    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1e

    :cond_e
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1e

    :cond_16
    const/16 v0, 0x39

    if-gt p0, v0, :cond_1f

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1

    .line 106
    :cond_20
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_32

    .line 107
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_32

    .line 108
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    move v1, v2

    .line 106
    :cond_33
    return v1
.end method

.method public static greylist isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 91
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_10

    .line 92
    const/16 v0, 0x39

    if-gt p0, v0, :cond_e

    const/16 v0, 0x30

    if-lt p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 95
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public static greylist isHexDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 76
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x46

    if-le p0, v0, :cond_16

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_16

    .line 78
    :cond_10
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 76
    :goto_19
    return v0
.end method


# virtual methods
.method public greylist consume()V
    .registers 2

    .line 154
    iget v0, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 155
    return-void
.end method

.method public greylist consume(I)V
    .registers 3
    .param p1, "k"    # I

    .line 158
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 159
    return-void
.end method

.method public greylist getLine()Ljava/lang/String;
    .registers 5

    .line 113
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 114
    .local v0, "startIdx":I
    :goto_2
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    const/16 v3, 0xa

    if-ge v1, v2, :cond_1b

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1b

    .line 115
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    goto :goto_2

    .line 117
    :cond_1b
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_31

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_31

    .line 118
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 120
    :cond_31
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getLines()Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 166
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    .end local v1    # "line":Ljava/lang/String;
    goto :goto_5

    .line 169
    :cond_13
    return-object v0
.end method

.method public greylist getNextChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_13

    .line 150
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 146
    :cond_13
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getNextChar: End of buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist getNextToken(C)Ljava/lang/String;
    .registers 7
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 177
    .local v0, "startIdx":I
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    .line 178
    .local v2, "la":C
    if-ne v2, p1, :cond_13

    .line 179
    nop

    .line 184
    .end local v2    # "la":C
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 180
    .restart local v2    # "la":C
    :cond_13
    if-eqz v2, :cond_1a

    .line 182
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 183
    .end local v2    # "la":C
    goto :goto_2

    .line 181
    .restart local v2    # "la":C
    :cond_1a
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "EOL reached"

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public greylist hasMoreChars()Z
    .registers 3

    .line 72
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist lookAhead()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    return v0
.end method

.method public greylist lookAhead(I)C
    .registers 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 139
    :catch_a
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist nextToken()Ljava/lang/String;
    .registers 4

    .line 58
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 60
    .local v0, "startIdx":I
    :goto_2
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_1c

    .line 61
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 62
    .local v1, "c":C
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 63
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    .line 64
    goto :goto_1c

    .line 66
    .end local v1    # "c":C
    :cond_1b
    goto :goto_2

    .line 68
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist peekLine()Ljava/lang/String;
    .registers 3

    .line 124
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 125
    .local v0, "curPos":I
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 127
    return-object v1
.end method
