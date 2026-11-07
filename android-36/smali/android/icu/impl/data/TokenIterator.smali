.class public Landroid/icu/impl/data/TokenIterator;
.super Ljava/lang/Object;
.source "TokenIterator.java"


# instance fields
.field private blacklist buf:Ljava/lang/StringBuffer;

.field private blacklist done:Z

.field private blacklist lastpos:I

.field private blacklist line:Ljava/lang/String;

.field private blacklist pos:I

.field private blacklist reader:Landroid/icu/impl/data/ResourceReader;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/data/ResourceReader;)V
    .registers 3
    .param p1, "r"    # Landroid/icu/impl/data/ResourceReader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    .line 53
    return-void
.end method

.method private blacklist nextToken(I)I
    .registers 10
    .param p1, "position"    # I

    .line 114
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 115
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_10

    .line 116
    return v1

    .line 118
    :cond_10
    move v0, p1

    .line 119
    .local v0, "startpos":I
    iget-object v2, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "position":I
    .local v3, "position":I
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 120
    .local p1, "c":C
    const/4 v2, 0x0

    .line 121
    .local v2, "quote":C
    sparse-switch p1, :sswitch_data_c4

    .line 129
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 127
    :sswitch_23
    return v1

    .line 124
    :sswitch_24
    move v2, p1

    .line 125
    nop

    .line 132
    :goto_26
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x3a

    if-ge v3, v1, :cond_9a

    .line 133
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 134
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_7c

    .line 135
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v1, v5}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 136
    .local v1, "cpAndLength":I
    if-ltz v1, :cond_55

    .line 141
    iget-object v4, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-static {v1}, Landroid/icu/impl/Utility;->cpFromCodePointAndLength(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 142
    invoke-static {v1}, Landroid/icu/impl/Utility;->lengthFromCodePointAndLength(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 143
    .end local v1    # "cpAndLength":I
    goto :goto_26

    .line 137
    .restart local v1    # "cpAndLength":I
    :cond_55
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid escape at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    .line 138
    invoke-virtual {v7}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    .end local v1    # "cpAndLength":I
    :cond_7c
    if-eqz v2, :cond_80

    if-eq p1, v2, :cond_88

    :cond_80
    if-nez v2, :cond_8b

    .line 144
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 145
    :cond_88
    add-int/lit8 v3, v3, 0x1

    return v3

    .line 146
    :cond_8b
    if-nez v2, :cond_92

    const/16 v1, 0x23

    if-ne p1, v1, :cond_92

    .line 147
    return v3

    .line 149
    :cond_92
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 153
    :cond_9a
    if-nez v2, :cond_9d

    .line 158
    return v3

    .line 154
    :cond_9d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unterminated quote at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    .line 155
    invoke-virtual {v6}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_c4
    .sparse-switch
        0x22 -> :sswitch_24
        0x23 -> :sswitch_23
        0x27 -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method public blacklist describePosition()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v1}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLineNumber()I
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 61
    return-object v1

    .line 64
    :cond_6
    :goto_6
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 65
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    .line 68
    return-object v1

    .line 70
    :cond_1b
    iput v2, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    .line 72
    :cond_1d
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 73
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    .line 74
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    invoke-direct {p0, v0}, Landroid/icu/impl/data/TokenIterator;->nextToken(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    .line 75
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    if-gez v0, :cond_35

    .line 76
    iput-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    .line 77
    goto :goto_6

    .line 79
    :cond_35
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
