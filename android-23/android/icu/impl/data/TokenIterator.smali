.class public Landroid/icu/impl/data/TokenIterator;
.super Ljava/lang/Object;
.source "TokenIterator.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private done:Z

.field private lastpos:I

.field private line:Ljava/lang/String;

.field private pos:I

.field private reader:Landroid/icu/impl/data/ResourceReader;


# direct methods
.method public constructor <init>(Landroid/icu/impl/data/ResourceReader;)V
    .locals 2
    .param p1, "r"    # Landroid/icu/impl/data/ResourceReader;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-object p1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@9
    .line 44
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@c
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@13
    .line 46
    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    #@15
    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@17
    .line 41
    return-void
.end method

.method private nextToken(I)I
    .locals 10
    .param p1, "position"    # I

    #@0
    .prologue
    const/16 v9, 0x3a

    #@2
    const/4 v8, -0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 108
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@6
    invoke-static {v6, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@9
    move-result p1

    #@a
    .line 109
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@f
    move-result v6

    #@10
    if-ne p1, v6, :cond_0

    #@12
    .line 110
    return v8

    #@13
    .line 112
    :cond_0
    move v5, p1

    #@14
    .line 113
    .local v5, "startpos":I
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@16
    add-int/lit8 v2, p1, 0x1

    #@18
    .end local p1    # "position":I
    .local v2, "position":I
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 114
    .local v0, "c":C
    const/4 v4, 0x0

    #@1d
    .line 115
    .local v4, "quote":C
    packed-switch v0, :pswitch_data_0

    #@20
    .line 123
    :pswitch_0
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    .line 126
    .end local v4    # "quote":C
    :goto_0
    const/4 v3, 0x0

    #@26
    .local v3, "posref":[I
    move p1, v2

    #@27
    .line 127
    .end local v2    # "position":I
    .end local v3    # "posref":[I
    .restart local p1    # "position":I
    :goto_1
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2c
    move-result v6

    #@2d
    if-ge p1, v6, :cond_8

    #@2f
    .line 128
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@31
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v0

    #@35
    .line 129
    const/16 v6, 0x5c

    #@37
    if-ne v0, v6, :cond_3

    #@39
    .line 130
    if-nez v3, :cond_1

    #@3b
    .line 131
    const/4 v6, 0x1

    #@3c
    new-array v3, v6, [I

    #@3e
    .line 133
    :cond_1
    add-int/lit8 v6, p1, 0x1

    #@40
    aput v6, v3, v7

    #@42
    .line 134
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@44
    invoke-static {v6, v3}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@47
    move-result v1

    #@48
    .line 135
    .local v1, "c32":I
    if-gez v1, :cond_2

    #@4a
    .line 136
    new-instance v6, Ljava/lang/RuntimeException;

    #@4c
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "Invalid escape at "

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 137
    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@5a
    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@71
    throw v6

    #@72
    .line 118
    .end local v1    # "c32":I
    .end local p1    # "position":I
    .restart local v2    # "position":I
    .restart local v4    # "quote":C
    :pswitch_1
    move v4, v0

    #@73
    .line 119
    .local v4, "quote":C
    goto :goto_0

    #@74
    .line 121
    .local v4, "quote":C
    :pswitch_2
    return v8

    #@75
    .line 140
    .end local v2    # "position":I
    .end local v4    # "quote":C
    .restart local v1    # "c32":I
    .restart local p1    # "position":I
    :cond_2
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@77
    invoke-static {v6, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@7a
    .line 141
    aget p1, v3, v7

    #@7c
    goto :goto_1

    #@7d
    .line 142
    .end local v1    # "c32":I
    :cond_3
    if-eqz v4, :cond_5

    #@7f
    if-ne v0, v4, :cond_5

    #@81
    .line 144
    :cond_4
    add-int/lit8 p1, p1, 0x1

    #@83
    return p1

    #@84
    .line 143
    :cond_5
    if-nez v4, :cond_6

    #@86
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@89
    move-result v6

    #@8a
    .line 142
    if-nez v6, :cond_4

    #@8c
    .line 145
    :cond_6
    if-nez v4, :cond_7

    #@8e
    const/16 v6, 0x23

    #@90
    if-ne v0, v6, :cond_7

    #@92
    .line 146
    return p1

    #@93
    .line 148
    :cond_7
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@95
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@98
    .line 149
    add-int/lit8 p1, p1, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 152
    :cond_8
    if-eqz v4, :cond_9

    #@9d
    .line 153
    new-instance v6, Ljava/lang/RuntimeException;

    #@9f
    new-instance v7, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v8, "Unterminated quote at "

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    .line 154
    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@ad
    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    #@b0
    move-result-object v8

    #@b1
    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v7

    #@bd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v6

    #@c5
    .line 157
    :cond_9
    return p1

    #@c6
    .line 115
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describePosition()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@7
    invoke-virtual {v1}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x3a

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->getLineNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 54
    iget-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 55
    return-object v1

    #@7
    .line 64
    :cond_0
    iput v2, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@9
    .line 66
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    #@e
    .line 67
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@10
    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    #@12
    .line 68
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@14
    invoke-direct {p0, v0}, Landroid/icu/impl/data/TokenIterator;->nextToken(I)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@1a
    .line 69
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@1c
    if-gez v0, :cond_3

    #@1e
    .line 70
    iput-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@20
    .line 58
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@22
    if-nez v0, :cond_1

    #@24
    .line 59
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@26
    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@2c
    .line 60
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 61
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@33
    .line 62
    return-object v1

    #@34
    .line 73
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method
