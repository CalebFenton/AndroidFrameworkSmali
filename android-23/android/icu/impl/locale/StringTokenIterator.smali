.class public Landroid/icu/impl/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private _dlms:Ljava/lang/String;

.field private _done:Z

.field private _end:I

.field private _start:I

.field private _text:Ljava/lang/String;

.field private _token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "dlms"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@5
    .line 20
    iput-object p2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    #@7
    .line 21
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    #@b
    .line 18
    return-void
.end method

.method private nextDelimiter(I)I
    .locals 4
    .param p1, "start"    # I

    #@0
    .prologue
    .line 80
    move v2, p1

    #@1
    .line 81
    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_0

    #@9
    .line 82
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 83
    .local v0, "c":C
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    #@12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@15
    move-result v3

    #@16
    if-ge v1, v3, :cond_2

    #@18
    .line 84
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    if-ne v0, v3, :cond_1

    #@20
    .line 90
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    return v2

    #@21
    .line 83
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_1

    #@24
    .line 88
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public currentEnd()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@2
    return v0
.end method

.method public currentStart()I
    .locals 1

    #@0
    .prologue
    .line 34
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@2
    return v0
.end method

.method public first()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 25
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    #@4
    .line 26
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

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
    .line 42
    iget-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    #@2
    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 47
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@c
    .line 48
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@e
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@14
    .line 49
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@16
    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@18
    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@20
    .line 55
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@22
    return-object v0

    #@23
    .line 51
    :cond_0
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@25
    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@27
    .line 52
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@2a
    .line 53
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    #@2d
    goto :goto_0
.end method

.method public setStart(I)Landroid/icu/impl/locale/StringTokenIterator;
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_0

    #@8
    .line 64
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    iput p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@10
    .line 67
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@12
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@18
    .line 68
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@1a
    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    #@1c
    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    #@24
    .line 69
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    #@27
    .line 70
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/icu/impl/locale/StringTokenIterator;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    #@2
    .line 75
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    #@6
    .line 76
    return-object p0
.end method
