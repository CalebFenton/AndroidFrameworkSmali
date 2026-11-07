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
.method constructor blacklist <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist getChar([BI)I
.end method

.method abstract blacklist getName()Ljava/lang/String;
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 12
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 137
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 138
    .local v0, "input":[B
    iget v1, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    .line 139
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 140
    .local v2, "numValid":I
    const/4 v3, 0x0

    .line 141
    .local v3, "numInvalid":I
    const/4 v4, 0x0

    .line 142
    .local v4, "hasBOM":Z
    const/4 v5, 0x0

    .line 144
    .local v5, "confidence":I
    const/4 v6, 0x0

    if-nez v1, :cond_10

    .line 145
    return-object v6

    .line 147
    :cond_10
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v7

    const v8, 0xfeff

    if-ne v7, v8, :cond_1b

    .line 148
    const/4 v4, 0x1

    .line 151
    :cond_1b
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c
    if-ge v7, v1, :cond_3c

    .line 152
    invoke-virtual {p0, v0, v7}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v8

    .line 154
    .local v8, "ch":I
    if-ltz v8, :cond_37

    const v9, 0x10ffff

    if-ge v8, v9, :cond_37

    const v9, 0xd800

    if-lt v8, v9, :cond_34

    const v9, 0xdfff

    if-gt v8, v9, :cond_34

    goto :goto_37

    .line 157
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 155
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    .line 151
    .end local v8    # "ch":I
    :goto_39
    add-int/lit8 v7, v7, 0x4

    goto :goto_1c

    .line 164
    .end local v7    # "i":I
    :cond_3c
    if-eqz v4, :cond_43

    if-nez v3, :cond_43

    .line 165
    const/16 v5, 0x64

    goto :goto_61

    .line 166
    :cond_43
    if-eqz v4, :cond_4c

    mul-int/lit8 v7, v3, 0xa

    if-le v2, v7, :cond_4c

    .line 167
    const/16 v5, 0x50

    goto :goto_61

    .line 168
    :cond_4c
    const/4 v7, 0x3

    if-le v2, v7, :cond_54

    if-nez v3, :cond_54

    .line 169
    const/16 v5, 0x64

    goto :goto_61

    .line 170
    :cond_54
    if-lez v2, :cond_5b

    if-nez v3, :cond_5b

    .line 171
    const/16 v5, 0x50

    goto :goto_61

    .line 172
    :cond_5b
    mul-int/lit8 v7, v3, 0xa

    if-le v2, v7, :cond_61

    .line 174
    const/16 v5, 0x19

    .line 177
    :cond_61
    :goto_61
    if-nez v5, :cond_64

    goto :goto_69

    :cond_64
    new-instance v6, Landroid/icu/text/CharsetMatch;

    invoke-direct {v6, p1, p0, v5}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_69
    return-object v6
.end method
