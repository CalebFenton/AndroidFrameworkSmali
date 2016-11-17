.class public Lcom/android/internal/telephony/ATResponseParser;
.super Ljava/lang/Object;
.source "ATResponseParser.java"


# instance fields
.field private mLine:Ljava/lang/String;

.field private mNext:I

.field private mTokEnd:I

.field private mTokStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@6
    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@8
    .line 33
    return-void
.end method

.method private nextTok()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x2c

    #@2
    const/16 v7, 0x22

    #@4
    .line 98
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    .line 100
    .local v3, "len":I
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@c
    if-nez v4, :cond_0

    #@e
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->skipPrefix()V

    #@11
    .line 104
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@13
    if-lt v4, v3, :cond_1

    #@15
    .line 105
    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    #@17
    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@1a
    throw v4

    #@1b
    .line 111
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@1d
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@1f
    add-int/lit8 v6, v5, 0x1

    #@21
    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v0

    #@27
    .line 112
    .local v0, "c":C
    const/4 v2, 0x0

    #@28
    .line 114
    .local v2, "hasQuote":Z
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ATResponseParser;->skipWhiteSpace(C)C

    #@2b
    move-result v0

    #@2c
    .line 116
    if-ne v0, v7, :cond_5

    #@2e
    .line 117
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@30
    if-lt v4, v3, :cond_2

    #@32
    .line 118
    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    #@34
    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@37
    throw v4
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 145
    .end local v0    # "c":C
    .end local v2    # "hasQuote":Z
    :catch_0
    move-exception v1

    #@39
    .line 146
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    #@3b
    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@3e
    throw v4

    #@3f
    .line 120
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v0    # "c":C
    .restart local v2    # "hasQuote":Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@41
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@43
    add-int/lit8 v6, v5, 0x1

    #@45
    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v0

    #@4b
    .line 121
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@4d
    add-int/lit8 v4, v4, -0x1

    #@4f
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@51
    .line 122
    :goto_0
    if-eq v0, v7, :cond_3

    #@53
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@55
    if-ge v4, v3, :cond_3

    #@57
    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@59
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@5b
    add-int/lit8 v6, v5, 0x1

    #@5d
    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@62
    move-result v0

    #@63
    goto :goto_0

    #@64
    .line 125
    :cond_3
    if-eq v0, v7, :cond_4

    #@66
    .line 126
    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    #@68
    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@6b
    throw v4

    #@6c
    .line 128
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@6e
    add-int/lit8 v4, v4, -0x1

    #@70
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@72
    .line 129
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@74
    if-ge v4, v3, :cond_7

    #@76
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@78
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@7a
    add-int/lit8 v6, v5, 0x1

    #@7c
    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@81
    move-result v4

    #@82
    if-eq v4, v8, :cond_7

    #@84
    .line 130
    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    #@86
    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@89
    throw v4

    #@8a
    .line 133
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@8c
    add-int/lit8 v4, v4, -0x1

    #@8e
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@90
    .line 134
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@92
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@94
    .line 135
    :goto_1
    if-eq v0, v8, :cond_7

    #@96
    .line 136
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@99
    move-result v4

    #@9a
    if-nez v4, :cond_6

    #@9c
    .line 137
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@9e
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@a0
    .line 139
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@a2
    if-ne v4, v3, :cond_8

    #@a4
    .line 96
    :cond_7
    return-void

    #@a5
    .line 142
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@a7
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@a9
    add-int/lit8 v6, v5, 0x1

    #@ab
    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@b0
    move-result v0

    #@b1
    goto :goto_1
.end method

.method private skipPrefix()V
    .locals 5

    #@0
    .prologue
    .line 173
    const/4 v2, 0x0

    #@1
    iput v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@3
    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .line 175
    .local v1, "s":I
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@b
    if-ge v2, v1, :cond_1

    #@d
    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@f
    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@11
    add-int/lit8 v4, v3, 0x1

    #@13
    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 178
    .local v0, "c":C
    const/16 v2, 0x3a

    #@1b
    if-ne v0, v2, :cond_0

    #@1d
    .line 179
    return-void

    #@1e
    .line 183
    .end local v0    # "c":C
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/ATParseEx;

    #@20
    const-string/jumbo v3, "missing prefix"

    #@23
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    #@26
    throw v2
.end method

.method private skipWhiteSpace(C)C
    .locals 4
    .param p1, "c"    # C

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    .line 157
    .local v0, "len":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@8
    if-ge v1, v0, :cond_0

    #@a
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@12
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@14
    add-int/lit8 v3, v2, 0x1

    #@16
    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result p1

    #@1c
    goto :goto_0

    #@1d
    .line 161
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 162
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    #@25
    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@28
    throw v1

    #@29
    .line 164
    :cond_1
    return p1
.end method


# virtual methods
.method public hasMore()Z
    .locals 2

    #@0
    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

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

.method public nextBoolean()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    #@4
    .line 46
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@6
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@8
    sub-int/2addr v1, v2

    #@9
    if-le v1, v3, :cond_0

    #@b
    .line 47
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    #@d
    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@10
    throw v1

    #@11
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@13
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 51
    .local v0, "c":C
    const/16 v1, 0x30

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    const/4 v1, 0x0

    #@1e
    return v1

    #@1f
    .line 52
    :cond_1
    const/16 v1, 0x31

    #@21
    if-ne v0, v1, :cond_2

    #@23
    return v3

    #@24
    .line 53
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    #@26
    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@29
    throw v1
.end method

.method public nextInt()I
    .locals 4

    #@0
    .prologue
    .line 62
    const/4 v2, 0x0

    #@1
    .line 64
    .local v2, "ret":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    #@4
    .line 66
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@6
    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@8
    if-ge v1, v3, :cond_2

    #@a
    .line 67
    iget-object v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@c
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 70
    .local v0, "c":C
    const/16 v3, 0x30

    #@12
    if-lt v0, v3, :cond_0

    #@14
    const/16 v3, 0x39

    #@16
    if-le v0, v3, :cond_1

    #@18
    .line 71
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    #@1a
    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    #@1d
    throw v3

    #@1e
    .line 74
    :cond_1
    mul-int/lit8 v2, v2, 0xa

    #@20
    .line 75
    add-int/lit8 v3, v0, -0x30

    #@22
    add-int/2addr v2, v3

    #@23
    .line 66
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 78
    .end local v0    # "c":C
    :cond_2
    return v2
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    #@3
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    #@5
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    #@7
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
