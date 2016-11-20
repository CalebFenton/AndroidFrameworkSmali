.class public Lsun/util/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private delimiterChar:C

.field private dlms:Ljava/lang/String;

.field private done:Z

.field private end:I

.field private start:I

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dlms"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@6
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    iput-char v0, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    #@13
    .line 50
    :goto_0
    invoke-virtual {p0, v2}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    #@16
    .line 43
    return-void

    #@17
    .line 48
    :cond_0
    iput-object p2, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    #@19
    goto :goto_0
.end method

.method private nextDelimiter(I)I
    .locals 7
    .param p1, "start"    # I

    #@0
    .prologue
    .line 109
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    .line 110
    .local v4, "textlen":I
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    #@8
    if-nez v5, :cond_1

    #@a
    .line 111
    move v3, p1

    #@b
    .local v3, "idx":I
    :goto_0
    if-ge v3, v4, :cond_4

    #@d
    .line 112
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@f
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v5

    #@13
    iget-char v6, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    #@15
    if-ne v5, v6, :cond_0

    #@17
    .line 113
    return v3

    #@18
    .line 111
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 117
    .end local v3    # "idx":I
    :cond_1
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    #@1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    .line 118
    .local v1, "dlmslen":I
    move v3, p1

    #@22
    .restart local v3    # "idx":I
    :goto_1
    if-ge v3, v4, :cond_4

    #@24
    .line 119
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@26
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    .line 120
    .local v0, "c":C
    const/4 v2, 0x0

    #@2b
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    #@2d
    .line 121
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    #@2f
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v5

    #@33
    if-ne v0, v5, :cond_2

    #@35
    .line 122
    return v3

    #@36
    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_2

    #@39
    .line 118
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 127
    .end local v0    # "c":C
    .end local v1    # "dlmslen":I
    .end local v2    # "i":I
    :cond_4
    return v4
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public currentEnd()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@2
    return v0
.end method

.method public currentStart()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@2
    return v0
.end method

.method public first()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    #@4
    .line 55
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 88
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@2
    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    #@0
    .prologue
    .line 71
    iget-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    #@2
    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 76
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@c
    .line 77
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@e
    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@14
    .line 78
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@16
    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@18
    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@20
    .line 84
    :goto_0
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@22
    return-object v0

    #@23
    .line 80
    :cond_0
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@25
    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@27
    .line 81
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@2a
    .line 82
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    #@2d
    goto :goto_0
.end method

.method public setStart(I)Lsun/util/locale/StringTokenIterator;
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_0

    #@8
    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 95
    :cond_0
    iput p1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@10
    .line 96
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@12
    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@18
    .line 97
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@1a
    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    #@1c
    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    #@24
    .line 98
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    #@27
    .line 99
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lsun/util/locale/StringTokenIterator;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    #@2
    .line 104
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    #@6
    .line 105
    return-object p0
.end method
