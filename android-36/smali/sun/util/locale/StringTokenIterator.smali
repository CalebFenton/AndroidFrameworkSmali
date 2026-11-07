.class public Lsun/util/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private greylist-max-o delimiterChar:C

.field private greylist-max-o dlms:Ljava/lang/String;

.field private greylist-max-o done:Z

.field private greylist-max-o end:I

.field private greylist-max-o start:I

.field private greylist-max-o text:Ljava/lang/String;

.field private greylist-max-o token:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dlms"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    goto :goto_16

    .line 48
    :cond_14
    iput-object p2, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    .line 50
    :goto_16
    invoke-virtual {p0, v2}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 51
    return-void
.end method

.method private greylist-max-o nextDelimiter(I)I
    .registers 8
    .param p1, "start"    # I

    .line 109
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    .local v0, "textlen":I
    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 111
    move v1, p1

    .local v1, "idx":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 112
    iget-object v2, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lsun/util/locale/StringTokenIterator;->delimiterChar:C

    if-ne v2, v3, :cond_18

    .line 113
    return v1

    .line 111
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v1    # "idx":I
    :cond_1b
    goto :goto_3d

    .line 117
    :cond_1c
    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 118
    .local v1, "dlmslen":I
    move v2, p1

    .local v2, "idx":I
    :goto_23
    if-ge v2, v0, :cond_3d

    .line 119
    iget-object v3, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 120
    .local v3, "c":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    if-ge v4, v1, :cond_3a

    .line 121
    iget-object v5, p0, Lsun/util/locale/StringTokenIterator;->dlms:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v3, v5, :cond_37

    .line 122
    return v2

    .line 120
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 118
    .end local v3    # "c":C
    .end local v4    # "i":I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 127
    .end local v1    # "dlmslen":I
    .end local v2    # "idx":I
    :cond_3d
    :goto_3d
    return v0
.end method


# virtual methods
.method public blacklist current()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist currentEnd()I
    .registers 2

    .line 67
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    return v0
.end method

.method public blacklist currentStart()I
    .registers 2

    .line 63
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    return v0
.end method

.method public blacklist first()Ljava/lang/String;
    .registers 2

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 55
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasNext()Z
    .registers 3

    .line 88
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iget-object v1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isDone()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    return v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 4

    .line 75
    invoke-virtual {p0}, Lsun/util/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 76
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 77
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    .line 78
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    goto :goto_2a

    .line 80
    :cond_21
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    .line 84
    :goto_2a
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setStart(I)Lsun/util/locale/StringTokenIterator;
    .registers 5
    .param p1, "offset"    # I

    .line 92
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_22

    .line 95
    iput p1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    .line 96
    iget v0, p0, Lsun/util/locale/StringTokenIterator;->start:I

    invoke-direct {p0, v0}, Lsun/util/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lsun/util/locale/StringTokenIterator;->end:I

    .line 97
    iget-object v0, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    iget v1, p0, Lsun/util/locale/StringTokenIterator;->start:I

    iget v2, p0, Lsun/util/locale/StringTokenIterator;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/StringTokenIterator;->token:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/locale/StringTokenIterator;->done:Z

    .line 99
    return-object p0

    .line 93
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist setText(Ljava/lang/String;)Lsun/util/locale/StringTokenIterator;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lsun/util/locale/StringTokenIterator;->text:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/util/locale/StringTokenIterator;->setStart(I)Lsun/util/locale/StringTokenIterator;

    .line 105
    return-object p0
.end method
