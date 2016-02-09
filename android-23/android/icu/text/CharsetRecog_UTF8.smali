.class Landroid/icu/text/CharsetRecog_UTF8;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_UTF8.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 15
    const-string/jumbo v0, "UTF-8"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 11
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    .line 22
    const/4 v2, 0x0

    #@3
    .line 23
    .local v2, "hasBOM":Z
    const/4 v6, 0x0

    #@4
    .line 24
    .local v6, "numValid":I
    const/4 v5, 0x0

    #@5
    .line 25
    .local v5, "numInvalid":I
    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@7
    .line 27
    .local v4, "input":[B
    const/4 v7, 0x0

    #@8
    .line 30
    .local v7, "trailBytes":I
    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@a
    if-lt v8, v10, :cond_0

    #@c
    .line 31
    aget-byte v8, v4, v9

    #@e
    and-int/lit16 v8, v8, 0xff

    #@10
    const/16 v9, 0xef

    #@12
    if-ne v8, v9, :cond_0

    #@14
    const/4 v8, 0x1

    #@15
    aget-byte v8, v4, v8

    #@17
    and-int/lit16 v8, v8, 0xff

    #@19
    const/16 v9, 0xbb

    #@1b
    if-ne v8, v9, :cond_0

    #@1d
    const/4 v8, 0x2

    #@1e
    aget-byte v8, v4, v8

    #@20
    and-int/lit16 v8, v8, 0xff

    #@22
    const/16 v9, 0xbf

    #@24
    if-ne v8, v9, :cond_0

    #@26
    .line 32
    const/4 v2, 0x1

    #@27
    .line 36
    :cond_0
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_0
    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@2a
    if-ge v3, v8, :cond_8

    #@2c
    .line 37
    aget-byte v0, v4, v3

    #@2e
    .line 38
    .local v0, "b":I
    and-int/lit16 v8, v0, 0x80

    #@30
    if-nez v8, :cond_2

    #@32
    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_0

    #@35
    .line 43
    :cond_2
    and-int/lit16 v8, v0, 0xe0

    #@37
    const/16 v9, 0xc0

    #@39
    if-ne v8, v9, :cond_4

    #@3b
    .line 44
    const/4 v7, 0x1

    #@3c
    .line 56
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    .line 57
    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@40
    if-ge v3, v8, :cond_1

    #@42
    .line 60
    aget-byte v0, v4, v3

    #@44
    .line 61
    and-int/lit16 v8, v0, 0xc0

    #@46
    const/16 v9, 0x80

    #@48
    if-eq v8, v9, :cond_7

    #@4a
    .line 62
    add-int/lit8 v5, v5, 0x1

    #@4c
    .line 63
    goto :goto_1

    #@4d
    .line 45
    :cond_4
    and-int/lit16 v8, v0, 0xf0

    #@4f
    const/16 v9, 0xe0

    #@51
    if-ne v8, v9, :cond_5

    #@53
    .line 46
    const/4 v7, 0x2

    #@54
    goto :goto_2

    #@55
    .line 47
    :cond_5
    and-int/lit16 v8, v0, 0xf8

    #@57
    const/16 v9, 0xf0

    #@59
    if-ne v8, v9, :cond_6

    #@5b
    .line 48
    const/4 v7, 0x3

    #@5c
    goto :goto_2

    #@5d
    .line 50
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@5f
    .line 51
    goto :goto_1

    #@60
    .line 65
    :cond_7
    add-int/lit8 v7, v7, -0x1

    #@62
    if-nez v7, :cond_3

    #@64
    .line 66
    add-int/lit8 v6, v6, 0x1

    #@66
    .line 67
    goto :goto_1

    #@67
    .line 74
    .end local v0    # "b":I
    :cond_8
    const/4 v1, 0x0

    #@68
    .line 75
    .local v1, "confidence":I
    if-eqz v2, :cond_a

    #@6a
    if-nez v5, :cond_a

    #@6c
    .line 76
    const/16 v1, 0x64

    #@6e
    .line 92
    :cond_9
    :goto_3
    if-nez v1, :cond_f

    #@70
    const/4 v8, 0x0

    #@71
    :goto_4
    return-object v8

    #@72
    .line 77
    :cond_a
    if-eqz v2, :cond_b

    #@74
    mul-int/lit8 v8, v5, 0xa

    #@76
    if-le v6, v8, :cond_b

    #@78
    .line 78
    const/16 v1, 0x50

    #@7a
    .line 77
    goto :goto_3

    #@7b
    .line 79
    :cond_b
    if-le v6, v10, :cond_c

    #@7d
    if-nez v5, :cond_c

    #@7f
    .line 80
    const/16 v1, 0x64

    #@81
    .line 79
    goto :goto_3

    #@82
    .line 81
    :cond_c
    if-lez v6, :cond_d

    #@84
    if-nez v5, :cond_d

    #@86
    .line 82
    const/16 v1, 0x50

    #@88
    .line 81
    goto :goto_3

    #@89
    .line 83
    :cond_d
    if-nez v6, :cond_e

    #@8b
    if-nez v5, :cond_e

    #@8d
    .line 87
    const/16 v1, 0xf

    #@8f
    .line 83
    goto :goto_3

    #@90
    .line 88
    :cond_e
    mul-int/lit8 v8, v5, 0xa

    #@92
    if-le v6, v8, :cond_9

    #@94
    .line 90
    const/16 v1, 0x19

    #@96
    goto :goto_3

    #@97
    .line 92
    :cond_f
    new-instance v8, Landroid/icu/text/CharsetMatch;

    #@99
    invoke-direct {v8, p1, p0, v1}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@9c
    goto :goto_4
.end method
