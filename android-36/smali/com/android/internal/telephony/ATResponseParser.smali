.class public Lcom/android/internal/telephony/ATResponseParser;
.super Ljava/lang/Object;
.source "ATResponseParser.java"


# instance fields
.field private blacklist mLine:Ljava/lang/String;

.field private blacklist mNext:I

.field private blacklist mTokEnd:I

.field private blacklist mTokStart:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    return-void
.end method

.method private blacklist nextTok()V
    .registers 7

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-nez v1, :cond_d

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->skipPrefix()V

    .line 104
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_9e

    .line 111
    :try_start_11
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 114
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ATResponseParser;->skipWhiteSpace(C)C

    move-result v1

    const/16 v2, 0x2c

    const/16 v3, 0x22

    if-ne v1, v3, :cond_73

    .line 117
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_6d

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    :goto_39
    if-eq v1, v3, :cond_4a

    .line 122
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v4, v0, :cond_4a

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_39

    :cond_4a
    if-ne v1, v3, :cond_67

    .line 128
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    if-ge v1, v0, :cond_97

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_61

    goto :goto_97

    .line 130
    :cond_61
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    .line 126
    :cond_67
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    .line 118
    :cond_6d
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    .line 133
    :cond_73
    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    :goto_7b
    if-eq v1, v2, :cond_97

    .line 136
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_87

    .line 137
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iput v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    .line 139
    :cond_87
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ne v1, v0, :cond_8c

    goto :goto_97

    .line 142
    :cond_8c
    iget-object v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_96
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_11 .. :try_end_96} :catch_98

    goto :goto_7b

    :cond_97
    :goto_97
    return-void

    .line 146
    :catch_98
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    .line 105
    :cond_9e
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0
.end method

.method private blacklist skipPrefix()V
    .registers 5

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_1c

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_9

    return-void

    .line 183
    :cond_1c
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    const-string v0, "missing prefix"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist skipWhiteSpace(C)C
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    :goto_6
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_6

    .line 161
    :cond_1d
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-nez p0, :cond_24

    return p1

    .line 162
    :cond_24
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0
.end method


# virtual methods
.method public blacklist hasMore()Z
    .registers 2

    .line 92
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iget-object p0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nextBoolean()Z
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_22

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x30

    if-ne p0, v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1c

    return v2

    .line 53
    :cond_1c
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    .line 47
    :cond_22
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0
.end method

.method public blacklist nextInt()I
    .registers 5

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    if-ge v0, v2, :cond_26

    .line 67
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-gt v2, v3, :cond_20

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 71
    :cond_20
    new-instance p0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {p0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw p0

    :cond_26
    return v1
.end method

.method public blacklist nextString()Ljava/lang/String;
    .registers 3

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iget p0, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
