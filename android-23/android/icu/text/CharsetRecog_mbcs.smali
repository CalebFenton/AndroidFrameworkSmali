.class abstract Landroid/icu/text/CharsetRecog_mbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;[I)I
    .locals 20
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "commonChars"    # [I

    #@0
    .prologue
    .line 47
    const/4 v9, 0x0

    #@1
    .line 48
    .local v9, "singleByteCharCount":I
    const/4 v5, 0x0

    #@2
    .line 49
    .local v5, "doubleByteCharCount":I
    const/4 v3, 0x0

    #@3
    .line 50
    .local v3, "commonCharCount":I
    const/4 v2, 0x0

    #@4
    .line 51
    .local v2, "badCharCount":I
    const/4 v14, 0x0

    #@5
    .line 52
    .local v14, "totalCharCount":I
    const/4 v4, 0x0

    #@6
    .line 53
    .local v4, "confidence":I
    new-instance v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;

    #@8
    invoke-direct {v8}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;-><init>()V

    #@b
    .line 56
    .local v8, "iter":Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    invoke-virtual {v8}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->reset()V

    #@e
    :cond_0
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    invoke-virtual {v0, v8, v1}, Landroid/icu/text/CharsetRecog_mbcs;->nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z

    #@15
    move-result v15

    #@16
    if-eqz v15, :cond_5

    #@18
    .line 57
    add-int/lit8 v14, v14, 0x1

    #@1a
    .line 58
    iget-boolean v15, v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@1c
    if-eqz v15, :cond_3

    #@1e
    .line 59
    add-int/lit8 v2, v2, 0x1

    #@20
    .line 75
    :cond_1
    :goto_0
    const/4 v15, 0x2

    #@21
    if-lt v2, v15, :cond_0

    #@23
    mul-int/lit8 v15, v2, 0x5

    #@25
    if-lt v15, v5, :cond_0

    #@27
    .line 126
    :cond_2
    :goto_1
    return v4

    #@28
    .line 61
    :cond_3
    iget v15, v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@2a
    int-to-long v0, v15

    #@2b
    move-wide/from16 v16, v0

    #@2d
    const-wide v18, 0xffffffffL

    #@32
    and-long v6, v16, v18

    #@34
    .line 63
    .local v6, "cv":J
    const-wide/16 v16, 0xff

    #@36
    cmp-long v15, v6, v16

    #@38
    if-gtz v15, :cond_4

    #@3a
    .line 64
    add-int/lit8 v9, v9, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 66
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@3f
    .line 67
    if-eqz p2, :cond_1

    #@41
    .line 69
    long-to-int v15, v6

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-static {v0, v15}, Ljava/util/Arrays;->binarySearch([II)I

    #@47
    move-result v15

    #@48
    if-ltz v15, :cond_1

    #@4a
    .line 70
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 81
    .end local v6    # "cv":J
    :cond_5
    const/16 v15, 0xa

    #@4f
    if-gt v5, v15, :cond_7

    #@51
    if-nez v2, :cond_7

    #@53
    .line 83
    if-nez v5, :cond_6

    #@55
    const/16 v15, 0xa

    #@57
    if-ge v14, v15, :cond_6

    #@59
    .line 87
    const/4 v4, 0x0

    #@5a
    .line 83
    goto :goto_1

    #@5b
    .line 92
    :cond_6
    const/16 v4, 0xa

    #@5d
    goto :goto_1

    #@5e
    .line 102
    :cond_7
    mul-int/lit8 v15, v2, 0x14

    #@60
    if-ge v5, v15, :cond_8

    #@62
    .line 103
    const/4 v4, 0x0

    #@63
    .line 104
    goto :goto_1

    #@64
    .line 107
    :cond_8
    if-nez p2, :cond_9

    #@66
    .line 111
    add-int/lit8 v15, v5, 0x1e

    #@68
    mul-int/lit8 v16, v2, 0x14

    #@6a
    sub-int v4, v15, v16

    #@6c
    .line 112
    const/16 v15, 0x64

    #@6e
    if-le v4, v15, :cond_2

    #@70
    .line 113
    const/16 v4, 0x64

    #@72
    goto :goto_1

    #@73
    .line 119
    :cond_9
    int-to-float v15, v5

    #@74
    const/high16 v16, 0x40800000    # 4.0f

    #@76
    div-float v15, v15, v16

    #@78
    float-to-double v0, v15

    #@79
    move-wide/from16 v16, v0

    #@7b
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    #@7e
    move-result-wide v10

    #@7f
    .line 120
    .local v10, "maxVal":D
    const-wide v16, 0x4056800000000000L    # 90.0

    #@84
    div-double v12, v16, v10

    #@86
    .line 121
    .local v12, "scaleFactor":D
    add-int/lit8 v15, v3, 0x1

    #@88
    int-to-double v0, v15

    #@89
    move-wide/from16 v16, v0

    #@8b
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    #@8e
    move-result-wide v16

    #@8f
    mul-double v16, v16, v12

    #@91
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    #@93
    add-double v16, v16, v18

    #@95
    move-wide/from16 v0, v16

    #@97
    double-to-int v4, v0

    #@98
    .line 122
    const/16 v15, 0x64

    #@9a
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    #@9d
    move-result v4

    #@9e
    goto :goto_1
.end method

.method abstract nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
.end method
