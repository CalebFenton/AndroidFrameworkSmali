.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "PatternScanner.java"


# instance fields
.field private blacklist mIgnorePattern:Ljava/util/regex/Pattern;

.field private blacklist mInput:Ljava/lang/String;

.field private blacklist mLineNo:I

.field private blacklist mOffset:I

.field private blacklist mStartOfLine:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 35
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "ignorePattern"    # Ljava/util/regex/Pattern;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 39
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 41
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist atEnd()Z
    .registers 3

    .line 102
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

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

.method public blacklist eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "tokenName"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 75
    return-object v0

    .line 73
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist lineNo()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    return v0
.end method

.method public blacklist peek(Ljava/util/regex/Pattern;)Z
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 80
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 85
    :cond_9
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    return v1
.end method

.method public blacklist skip(Ljava/util/regex/Pattern;)V
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 93
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 96
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 99
    :cond_26
    return-void
.end method

.method public blacklist tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 46
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 51
    :cond_9
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 52
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 57
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 59
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_3e
    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_49

    .line 64
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 67
    :cond_49
    return-object v1
.end method

.method public blacklist unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tokenName"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' <- Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateLineCount(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 116
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 117
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    .line 118
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 119
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 116
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method
