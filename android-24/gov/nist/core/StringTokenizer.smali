.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected bufferLen:I

.field protected ptr:I

.field protected savedPtr:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@5
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@b
    .line 54
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@e
    .line 51
    return-void
.end method

.method public static getSDPFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    if-nez p0, :cond_0

    #@3
    .line 192
    return-object v4

    #@4
    .line 193
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 195
    .local v2, "fieldName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "="

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 196
    .local v0, "begin":I
    const/4 v3, 0x0

    #@d
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 200
    .local v2, "fieldName":Ljava/lang/String;
    return-object v2

    #@12
    .line 197
    .end local v0    # "begin":I
    .local v2, "fieldName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@13
    .line 198
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4
.end method

.method public static isAlpha(C)Z
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 82
    const/16 v2, 0x7f

    #@4
    if-gt p0, v2, :cond_3

    #@6
    .line 83
    const/16 v2, 0x61

    #@8
    if-lt p0, v2, :cond_1

    #@a
    const/16 v2, 0x7a

    #@c
    if-gt p0, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    const/16 v2, 0x41

    #@11
    if-lt p0, v2, :cond_2

    #@13
    const/16 v2, 0x5a

    #@15
    if-le p0, v2, :cond_0

    #@17
    :cond_2
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 86
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_4

    #@1f
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    #@22
    move-result v0

    #@23
    :cond_4
    return v0
.end method

.method public static isAlphaDigit(C)Z
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 100
    const/16 v2, 0x7f

    #@4
    if-gt p0, v2, :cond_4

    #@6
    .line 101
    const/16 v2, 0x61

    #@8
    if-lt p0, v2, :cond_1

    #@a
    const/16 v2, 0x7a

    #@c
    if-gt p0, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 102
    :cond_1
    const/16 v2, 0x41

    #@11
    if-lt p0, v2, :cond_2

    #@13
    const/16 v2, 0x5a

    #@15
    if-le p0, v2, :cond_0

    #@17
    .line 103
    :cond_2
    const/16 v2, 0x39

    #@19
    if-gt p0, v2, :cond_3

    #@1b
    const/16 v2, 0x30

    #@1d
    if-ge p0, v2, :cond_0

    #@1f
    :cond_3
    move v0, v1

    #@20
    goto :goto_0

    #@21
    .line 106
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_5

    #@27
    .line 107
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    #@2a
    move-result v1

    #@2b
    .line 106
    if-nez v1, :cond_5

    #@2d
    .line 108
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    #@30
    move-result v0

    #@31
    .line 106
    :cond_5
    return v0
.end method

.method public static isDigit(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    const/16 v1, 0x7f

    #@3
    if-gt p0, v1, :cond_1

    #@5
    .line 92
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/16 v1, 0x30

    #@b
    if-lt p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0

    #@f
    .line 95
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static isHexDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 76
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_1

    #@4
    const/16 v0, 0x46

    #@6
    if-gt p0, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    .line 77
    :cond_1
    const/16 v0, 0x61

    #@c
    if-lt p0, v0, :cond_2

    #@e
    const/16 v0, 0x66

    #@10
    if-le p0, v0, :cond_0

    #@12
    .line 78
    :cond_2
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method


# virtual methods
.method public consume()V
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    #@2
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@4
    .line 153
    return-void
.end method

.method public consume(I)V
    .locals 1
    .param p1, "k"    # I

    #@0
    .prologue
    .line 158
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@5
    .line 157
    return-void
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 113
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@4
    .line 114
    .local v0, "startIdx":I
    :goto_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@6
    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@c
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    if-eq v1, v3, :cond_0

    #@14
    .line 115
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@1a
    goto :goto_0

    #@1b
    .line 117
    :cond_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@1d
    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@1f
    if-ge v1, v2, :cond_1

    #@21
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@23
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v1

    #@29
    if-ne v1, v3, :cond_1

    #@2b
    .line 118
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@31
    .line 120
    :cond_1
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@33
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@35
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method public getLines()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    .line 165
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 166
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 167
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@12
    goto :goto_0

    #@13
    .line 169
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNextChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2
    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 146
    new-instance v0, Ljava/text/ParseException;

    #@8
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " getNextChar: End of buffer"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 148
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@20
    .line 146
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@23
    throw v0

    #@24
    .line 150
    :cond_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@26
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@28
    add-int/lit8 v2, v1, 0x1

    #@2a
    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    return v0
.end method

.method public getNextToken(C)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 175
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@3
    .line 177
    .local v1, "startIdx":I
    :goto_0
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    #@6
    move-result v0

    #@7
    .line 178
    .local v0, "la":C
    if-ne v0, p1, :cond_0

    #@9
    .line 184
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@b
    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@d
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 180
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 181
    new-instance v2, Ljava/text/ParseException;

    #@16
    const-string/jumbo v3, "EOL reached"

    #@19
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 182
    :cond_1
    const/4 v2, 0x1

    #@1e
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    #@21
    goto :goto_0
.end method

.method public hasMoreChars()Z
    .locals 2

    #@0
    .prologue
    .line 72
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2
    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public lookAhead()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public lookAhead(I)C
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@2
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@4
    add-int/2addr v2, p1

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 139
    :catch_0
    move-exception v0

    #@b
    .line 140
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public nextToken()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 58
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2
    .line 60
    .local v1, "startIdx":I
    :cond_0
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@4
    iget v3, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 61
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@a
    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 62
    .local v0, "c":C
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@16
    .line 63
    const/16 v2, 0xa

    #@18
    if-ne v0, v2, :cond_0

    #@1a
    .line 68
    .end local v0    # "c":C
    :cond_1
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    #@1c
    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@1e
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public peekLine()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 124
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@2
    .line 125
    .local v0, "curPos":I
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 126
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    #@8
    .line 127
    return-object v1
.end method
