.class public Landroid/icu/impl/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private greylist-max-o _dlms:Ljava/lang/String;

.field private greylist-max-o _done:Z

.field private greylist-max-o _end:I

.field private greylist-max-o _start:I

.field private greylist-max-o _text:Ljava/lang/String;

.field private greylist-max-o _token:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dlms"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    .line 28
    return-void
.end method

.method private greylist-max-o nextDelimiter(I)I
    .registers 6
    .param p1, "start"    # I

    .line 86
    move v0, p1

    .line 87
    .local v0, "idx":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 88
    iget-object v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, "c":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 90
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_21

    .line 91
    goto :goto_28

    .line 89
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 94
    .end local v2    # "i":I
    :cond_24
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_28
    :goto_28
    return v0
.end method


# virtual methods
.method public blacklist current()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist currentEnd()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    return v0
.end method

.method public blacklist currentStart()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    return v0
.end method

.method public blacklist first()Ljava/lang/String;
    .registers 2

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    .line 32
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasNext()Z
    .registers 3

    .line 65
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iget-object v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

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

    .line 48
    iget-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    return v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 4

    .line 52
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 53
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    .line 54
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    .line 55
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    goto :goto_2a

    .line 57
    :cond_21
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    .line 61
    :goto_2a
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setStart(I)Landroid/icu/impl/locale/StringTokenIterator;
    .registers 5
    .param p1, "offset"    # I

    .line 69
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_22

    .line 72
    iput p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    .line 73
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    .line 74
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    .line 76
    return-object p0

    .line 70
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist setText(Ljava/lang/String;)Landroid/icu/impl/locale/StringTokenIterator;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    .line 82
    return-object p0
.end method
