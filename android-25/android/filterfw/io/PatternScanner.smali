.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "PatternScanner.java"


# instance fields
.field private mIgnorePattern:Ljava/util/regex/Pattern;

.field private mInput:Ljava/lang/String;

.field private mLineNo:I

.field private mOffset:I

.field private mStartOfLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 30
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@6
    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@8
    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    #@a
    .line 35
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@c
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "ignorePattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 30
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@6
    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@8
    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    #@a
    .line 39
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@c
    .line 40
    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@e
    .line 41
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@10
    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    #@13
    .line 38
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@2
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_0

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

.method public eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "tokenName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 75
    :cond_0
    return-object v0
.end method

.method public lineNo()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@2
    return v0
.end method

.method public peek(Ljava/util/regex/Pattern;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 80
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 81
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {p0, v1}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    #@9
    .line 85
    :cond_0
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@e
    move-result-object v0

    #@f
    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@11
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@1a
    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public skip(Ljava/util/regex/Pattern;)V
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 94
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@8
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@11
    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 96
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p0, v1, v2}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    #@20
    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@23
    move-result v1

    #@24
    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@26
    .line 92
    :cond_0
    return-void
.end method

.method public tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 46
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 47
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    #@9
    .line 51
    :cond_0
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@e
    move-result-object v0

    #@f
    .line 52
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@11
    iget-object v3, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@1a
    .line 55
    const/4 v1, 0x0

    #@1b
    .line 56
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 57
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@26
    move-result v3

    #@27
    invoke-virtual {p0, v2, v3}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    #@2a
    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@30
    .line 59
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@39
    move-result v4

    #@3a
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 63
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    #@40
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 64
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    #@46
    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    #@49
    .line 67
    :cond_2
    return-object v1
.end method

.method public unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tokenName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@2
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    #@4
    iget v3, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    #@6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 111
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unexpected token on line "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " after \'"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "\' <- Expected "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 112
    const-string/jumbo v2, "!"

    #@37
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method public updateLineCount(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 116
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 117
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    const/16 v2, 0xa

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 118
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    #@13
    .line 119
    add-int/lit8 v1, v0, 0x1

    #@15
    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    #@17
    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 115
    :cond_1
    return-void
.end method
