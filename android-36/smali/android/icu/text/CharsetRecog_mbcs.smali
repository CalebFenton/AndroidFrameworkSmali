.class abstract Landroid/icu/text/CharsetRecog_mbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist getName()Ljava/lang/String;
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;[I)I
    .registers 23
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "commonChars"    # [I

    .line 51
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 52
    .local v1, "singleByteCharCount":I
    const/4 v2, 0x0

    .line 53
    .local v2, "doubleByteCharCount":I
    const/4 v3, 0x0

    .line 54
    .local v3, "commonCharCount":I
    const/4 v4, 0x0

    .line 55
    .local v4, "badCharCount":I
    const/4 v5, 0x0

    .line 56
    .local v5, "totalCharCount":I
    const/4 v6, 0x0

    .line 57
    .local v6, "confidence":I
    new-instance v7, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;

    invoke-direct {v7}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;-><init>()V

    .line 60
    .local v7, "iter":Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    invoke-virtual {v7}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->reset()V

    :cond_10
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual {v8, v7, v9}, Landroid/icu/text/CharsetRecog_mbcs;->nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    iget-boolean v10, v7, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    if-eqz v10, :cond_23

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 65
    :cond_23
    iget v10, v7, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 67
    .local v10, "cv":J
    const-wide/16 v12, 0xff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_35

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 70
    :cond_35
    add-int/lit8 v2, v2, 0x1

    .line 71
    if-eqz v0, :cond_42

    .line 73
    long-to-int v12, v10

    invoke-static {v0, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v12

    if-ltz v12, :cond_42

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 79
    .end local v10    # "cv":J
    :cond_42
    :goto_42
    const/4 v10, 0x2

    if-lt v4, v10, :cond_10

    mul-int/lit8 v10, v4, 0x5

    if-lt v10, v2, :cond_10

    .line 81
    goto :goto_92

    .line 85
    :cond_4a
    const/16 v10, 0xa

    if-gt v2, v10, :cond_59

    if-nez v4, :cond_59

    .line 87
    if-nez v2, :cond_56

    if-ge v5, v10, :cond_56

    .line 91
    const/4 v6, 0x0

    goto :goto_92

    .line 96
    :cond_56
    const/16 v6, 0xa

    .line 99
    goto :goto_92

    .line 106
    :cond_59
    mul-int/lit8 v10, v4, 0x14

    if-ge v2, v10, :cond_5f

    .line 107
    const/4 v6, 0x0

    .line 108
    goto :goto_92

    .line 111
    :cond_5f
    const/16 v10, 0x64

    if-nez v0, :cond_6e

    .line 115
    add-int/lit8 v11, v2, 0x1e

    mul-int/lit8 v12, v4, 0x14

    sub-int v6, v11, v12

    .line 116
    if-le v6, v10, :cond_92

    .line 117
    const/16 v6, 0x64

    goto :goto_92

    .line 123
    :cond_6e
    int-to-float v11, v2

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    .line 124
    .local v11, "maxVal":D
    const-wide v13, 0x4056800000000000L    # 90.0

    div-double/2addr v13, v11

    .line 125
    .local v13, "scaleFactor":D
    add-int/lit8 v15, v3, 0x1

    move-wide/from16 v16, v11

    .end local v11    # "maxVal":D
    .local v16, "maxVal":D
    int-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v10, v13

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    add-double v10, v10, v18

    double-to-int v6, v10

    .line 126
    const/16 v10, 0x64

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 130
    .end local v13    # "scaleFactor":D
    .end local v16    # "maxVal":D
    :cond_92
    :goto_92
    return v6
.end method

.method abstract blacklist nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
.end method
