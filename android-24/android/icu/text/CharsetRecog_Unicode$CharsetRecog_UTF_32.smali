.class abstract Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_UTF_32"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract getChar([BI)I
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 11
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 127
    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@4
    .line 128
    .local v4, "input":[B
    iget v9, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@6
    div-int/lit8 v9, v9, 0x4

    #@8
    mul-int/lit8 v5, v9, 0x4

    #@a
    .line 129
    .local v5, "limit":I
    const/4 v7, 0x0

    #@b
    .line 130
    .local v7, "numValid":I
    const/4 v6, 0x0

    #@c
    .line 131
    .local v6, "numInvalid":I
    const/4 v2, 0x0

    #@d
    .line 132
    .local v2, "hasBOM":Z
    const/4 v1, 0x0

    #@e
    .line 134
    .local v1, "confidence":I
    if-nez v5, :cond_0

    #@10
    .line 135
    return-object v8

    #@11
    .line 137
    :cond_0
    invoke-virtual {p0, v4, v10}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    #@14
    move-result v9

    #@15
    const v10, 0xfeff

    #@18
    if-ne v9, v10, :cond_1

    #@1a
    .line 138
    const/4 v2, 0x1

    #@1b
    .line 141
    :cond_1
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    #@1e
    .line 142
    invoke-virtual {p0, v4, v3}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    #@21
    move-result v0

    #@22
    .line 144
    .local v0, "ch":I
    if-ltz v0, :cond_2

    #@24
    const v9, 0x10ffff

    #@27
    if-lt v0, v9, :cond_3

    #@29
    .line 145
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2b
    .line 141
    :goto_1
    add-int/lit8 v3, v3, 0x4

    #@2d
    goto :goto_0

    #@2e
    .line 144
    :cond_3
    const v9, 0xd800

    #@31
    if-lt v0, v9, :cond_4

    #@33
    const v9, 0xdfff

    #@36
    if-le v0, v9, :cond_2

    #@38
    .line 147
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 154
    .end local v0    # "ch":I
    :cond_5
    if-eqz v2, :cond_7

    #@3d
    if-nez v6, :cond_7

    #@3f
    .line 155
    const/16 v1, 0x64

    #@41
    .line 167
    :cond_6
    :goto_2
    if-nez v1, :cond_b

    #@43
    :goto_3
    return-object v8

    #@44
    .line 156
    :cond_7
    if-eqz v2, :cond_8

    #@46
    mul-int/lit8 v9, v6, 0xa

    #@48
    if-le v7, v9, :cond_8

    #@4a
    .line 157
    const/16 v1, 0x50

    #@4c
    .line 156
    goto :goto_2

    #@4d
    .line 158
    :cond_8
    const/4 v9, 0x3

    #@4e
    if-le v7, v9, :cond_9

    #@50
    if-nez v6, :cond_9

    #@52
    .line 159
    const/16 v1, 0x64

    #@54
    .line 158
    goto :goto_2

    #@55
    .line 160
    :cond_9
    if-lez v7, :cond_a

    #@57
    if-nez v6, :cond_a

    #@59
    .line 161
    const/16 v1, 0x50

    #@5b
    .line 160
    goto :goto_2

    #@5c
    .line 162
    :cond_a
    mul-int/lit8 v9, v6, 0xa

    #@5e
    if-le v7, v9, :cond_6

    #@60
    .line 164
    const/16 v1, 0x19

    #@62
    goto :goto_2

    #@63
    .line 167
    :cond_b
    new-instance v8, Landroid/icu/text/CharsetMatch;

    #@65
    invoke-direct {v8, p1, p0, v1}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@68
    goto :goto_3
.end method
