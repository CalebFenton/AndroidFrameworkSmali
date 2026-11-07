.class Landroid/icu/message2/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# instance fields
.field final blacklist buffer:Ljava/lang/String;

.field private blacklist cursor:I

.field private blacklist lastReadCount:I

.field private blacklist lastReadCursor:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/message2/InputSource;->lastReadCursor:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/message2/InputSource;->lastReadCount:I

    .line 15
    if-eqz p1, :cond_10

    .line 18
    iput-object p1, p0, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    .line 19
    iput v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    .line 20
    return-void

    .line 16
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input string should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist atEnd()Z
    .registers 3

    .line 23
    iget v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    iget-object v1, p0, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist backup(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 69
    iget v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    .line 70
    return-void
.end method

.method blacklist getPosition()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    return v0
.end method

.method blacklist gotoPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 83
    iput p1, p0, Landroid/icu/message2/InputSource;->cursor:I

    .line 84
    return-void
.end method

.method blacklist peekChar()I
    .registers 3

    .line 27
    invoke-virtual {p0}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    const/4 v0, -0x1

    return v0

    .line 30
    :cond_8
    iget-object v0, p0, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    iget v1, p0, Landroid/icu/message2/InputSource;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method blacklist readCodePoint()I
    .registers 6

    .line 36
    iget v0, p0, Landroid/icu/message2/InputSource;->lastReadCursor:I

    iget v1, p0, Landroid/icu/message2/InputSource;->cursor:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    .line 37
    iget v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    iput v0, p0, Landroid/icu/message2/InputSource;->lastReadCursor:I

    .line 38
    iput v2, p0, Landroid/icu/message2/InputSource;->lastReadCount:I

    goto :goto_19

    .line 40
    :cond_e
    iget v0, p0, Landroid/icu/message2/InputSource;->lastReadCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/message2/InputSource;->lastReadCount:I

    .line 41
    iget v0, p0, Landroid/icu/message2/InputSource;->lastReadCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_57

    .line 47
    :goto_19
    invoke-virtual {p0}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48
    const/4 v0, -0x1

    return v0

    .line 51
    :cond_21
    iget-object v0, p0, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    iget v1, p0, Landroid/icu/message2/InputSource;->cursor:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/icu/message2/InputSource;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 53
    invoke-virtual {p0}, Landroid/icu/message2/InputSource;->atEnd()Z

    move-result v1

    if-nez v1, :cond_56

    .line 54
    iget-object v1, p0, Landroid/icu/message2/InputSource;->buffer:Ljava/lang/String;

    iget v3, p0, Landroid/icu/message2/InputSource;->cursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/message2/InputSource;->cursor:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 55
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 58
    :cond_50
    iget v3, p0, Landroid/icu/message2/InputSource;->cursor:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/icu/message2/InputSource;->cursor:I

    .line 59
    return v0

    .line 63
    .end local v1    # "c2":C
    :cond_56
    return v0

    .line 42
    .end local v0    # "c":C
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stuck in a loop!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist skip(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 78
    iget v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/message2/InputSource;->cursor:I

    .line 79
    return-void
.end method
