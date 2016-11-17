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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    iput-object p1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@6
    .line 47
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@9
    .line 48
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@c
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@13
    .line 50
    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    #@15
    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@17
    .line 45
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
    .line 112
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@6
    invoke-static {v6, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@9
    move-result p1

    #@a
    .line 113
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@f
    move-result v6

    #@10
    if-ne p1, v6, :cond_0

    #@12
    .line 114
    return v8

    #@13
    .line 116
    :cond_0
    move v5, p1

    #@14
    .line 117
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
    .line 118
    .local v0, "c":C
    const/4 v4, 0x0

    #@1d
    .line 119
    .local v4, "quote":C
    packed-switch v0, :pswitch_data_0

    #@20
    .line 127
    :pswitch_0
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    .line 130
    .end local v4    # "quote":C
    :goto_0
    const/4 v3, 0x0

    #@26
    .line 131
    :goto_1
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2b
    move-result v6

    #@2c
    if-ge v2, v6, :cond_8

    #@2e
    .line 132
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@30
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v0

    #@34
    .line 133
    const/16 v6, 0x5c

    #@36
    if-ne v0, v6, :cond_3

    #@38
    .line 134
    if-nez v3, :cond_1

    #@3a
    .line 135
    const/4 v6, 0x1

    #@3b
    new-array v3, v6, [I

    #@3d
    .line 137
    :cond_1
    add-int/lit8 v6, v2, 0x1

    #@3f
    aput v6, v3, v7

    #@41
    .line 138
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@43
    invoke-static {v6, v3}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@46
    move-result v1

    #@47
    .line 139
    .local v1, "c32":I
    if-gez v1, :cond_2

    #@49
    .line 140
    new-instance v6, Ljava/lang/RuntimeException;

    #@4b
    new-instance v7, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v8, "Invalid escape at "

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    .line 141
    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@59
    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@70
    throw v6

    #@71
    .line 122
    .end local v1    # "c32":I
    .restart local v4    # "quote":C
    :pswitch_1
    move v4, v0

    #@72
    .line 123
    .local v4, "quote":C
    goto :goto_0

    #@73
    .line 125
    .local v4, "quote":C
    :pswitch_2
    return v8

    #@74
    .line 144
    .end local v4    # "quote":C
    .restart local v1    # "c32":I
    :cond_2
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@76
    invoke-static {v6, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@79
    .line 145
    aget v2, v3, v7

    #@7b
    goto :goto_1

    #@7c
    .line 146
    .end local v1    # "c32":I
    :cond_3
    if-eqz v4, :cond_5

    #@7e
    if-ne v0, v4, :cond_5

    #@80
    .line 148
    :cond_4
    add-int/lit8 p1, v2, 0x1

    #@82
    .end local v2    # "position":I
    .restart local p1    # "position":I
    return p1

    #@83
    .line 147
    .end local p1    # "position":I
    .restart local v2    # "position":I
    :cond_5
    if-nez v4, :cond_6

    #@85
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@88
    move-result v6

    #@89
    .line 146
    if-nez v6, :cond_4

    #@8b
    .line 149
    :cond_6
    if-nez v4, :cond_7

    #@8d
    const/16 v6, 0x23

    #@8f
    if-ne v0, v6, :cond_7

    #@91
    .line 150
    return v2

    #@92
    .line 152
    :cond_7
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@94
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@97
    .line 153
    add-int/lit8 v2, v2, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 156
    :cond_8
    if-eqz v4, :cond_9

    #@9c
    .line 157
    new-instance v6, Ljava/lang/RuntimeException;

    #@9e
    new-instance v7, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v8, "Unterminated quote at "

    #@a6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    .line 158
    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@ac
    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v6

    #@c4
    .line 161
    :cond_9
    return v2

    #@c5
    .line 119
    nop

    #@c6
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
    .line 96
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
    .line 88
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
    .line 58
    iget-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 59
    return-object v1

    #@7
    .line 68
    :cond_0
    iput v2, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@9
    .line 70
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    #@e
    .line 71
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@10
    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    #@12
    .line 72
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@14
    invoke-direct {p0, v0}, Landroid/icu/impl/data/TokenIterator;->nextToken(I)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@1a
    .line 73
    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    #@1c
    if-gez v0, :cond_3

    #@1e
    .line 74
    iput-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@20
    .line 62
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@22
    if-nez v0, :cond_1

    #@24
    .line 63
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    #@26
    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@2c
    .line 64
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 65
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    #@33
    .line 66
    return-object v1

    #@34
    .line 77
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method
