.class Landroid/icu/text/CharsetRecog_UTF8;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_UTF8.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 19
    const-string v0, "UTF-8"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 13
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "hasBOM":Z
    const/4 v1, 0x0

    .line 29
    .local v1, "numValid":I
    const/4 v2, 0x0

    .line 30
    .local v2, "numInvalid":I
    iget-object v3, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 32
    .local v3, "input":[B
    const/4 v4, 0x0

    .line 35
    .local v4, "trailBytes":I
    iget v5, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-lt v5, v7, :cond_27

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xef

    if-ne v5, v8, :cond_27

    aget-byte v5, v3, v6

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_27

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbf

    if-ne v5, v8, :cond_27

    .line 37
    const/4 v0, 0x1

    .line 41
    :cond_27
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v5, v8, :cond_67

    .line 42
    aget-byte v8, v3, v5

    .line 43
    .local v8, "b":I
    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_33

    .line 44
    goto :goto_65

    .line 48
    :cond_33
    and-int/lit16 v9, v8, 0xe0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_3b

    .line 49
    const/4 v4, 0x1

    goto :goto_4a

    .line 50
    :cond_3b
    and-int/lit16 v9, v8, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_43

    .line 51
    const/4 v4, 0x2

    goto :goto_4a

    .line 52
    :cond_43
    and-int/lit16 v9, v8, 0xf8

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_62

    .line 53
    const/4 v4, 0x3

    .line 61
    :cond_4a
    :goto_4a
    add-int/2addr v5, v6

    .line 62
    iget v9, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-lt v5, v9, :cond_50

    .line 63
    goto :goto_65

    .line 65
    :cond_50
    aget-byte v8, v3, v5

    .line 66
    and-int/lit16 v9, v8, 0xc0

    const/16 v10, 0x80

    if-eq v9, v10, :cond_5b

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_65

    .line 70
    :cond_5b
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4a

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_65

    .line 55
    :cond_62
    add-int/lit8 v2, v2, 0x1

    .line 56
    nop

    .line 41
    .end local v8    # "b":I
    :goto_65
    add-int/2addr v5, v6

    goto :goto_28

    .line 79
    :cond_67
    const/4 v6, 0x0

    .line 80
    .local v6, "confidence":I
    if-eqz v0, :cond_6f

    if-nez v2, :cond_6f

    .line 81
    const/16 v6, 0x64

    goto :goto_93

    .line 82
    :cond_6f
    if-eqz v0, :cond_78

    mul-int/lit8 v8, v2, 0xa

    if-le v1, v8, :cond_78

    .line 83
    const/16 v6, 0x50

    goto :goto_93

    .line 84
    :cond_78
    if-le v1, v7, :cond_7f

    if-nez v2, :cond_7f

    .line 85
    const/16 v6, 0x64

    goto :goto_93

    .line 86
    :cond_7f
    if-lez v1, :cond_86

    if-nez v2, :cond_86

    .line 87
    const/16 v6, 0x50

    goto :goto_93

    .line 88
    :cond_86
    if-nez v1, :cond_8d

    if-nez v2, :cond_8d

    .line 92
    const/16 v6, 0xf

    goto :goto_93

    .line 93
    :cond_8d
    mul-int/lit8 v7, v2, 0xa

    if-le v1, v7, :cond_93

    .line 95
    const/16 v6, 0x19

    .line 97
    :cond_93
    :goto_93
    if-nez v6, :cond_97

    const/4 v7, 0x0

    goto :goto_9c

    :cond_97
    new-instance v7, Landroid/icu/text/CharsetMatch;

    invoke-direct {v7, p1, p0, v6}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_9c
    return-object v7
.end method
