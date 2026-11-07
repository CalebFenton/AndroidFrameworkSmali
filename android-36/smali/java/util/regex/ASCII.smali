.class final Ljava/util/regex/ASCII;
.super Ljava/lang/Object;
.source "ASCII.java"


# static fields
.field static final blacklist ALNUM:I = 0x700

.field static final blacklist ALPHA:I = 0x300

.field static final blacklist ASCII:I = 0xff00

.field static final blacklist BLANK:I = 0x4000

.field static final blacklist CNTRL:I = 0x2000

.field static final blacklist DIGIT:I = 0x400

.field static final blacklist GRAPH:I = 0x1700

.field static final blacklist HEX:I = 0x8000

.field static final blacklist LOWER:I = 0x200

.field static final blacklist PUNCT:I = 0x1000

.field static final blacklist SPACE:I = 0x800

.field static final blacklist UNDER:I = 0x10000

.field static final blacklist UPPER:I = 0x100

.field static final blacklist WORD:I = 0x10700

.field static final blacklist XDIGIT:I = 0x8000

.field private static final blacklist ctype:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ljava/util/regex/ASCII;->ctype:[I

    return-void

    :array_a
    .array-data 4
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x6800
        0x2800
        0x2800
        0x2800
        0x2800
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x4800
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x8400
        0x8401
        0x8402
        0x8403
        0x8404
        0x8405
        0x8406
        0x8407
        0x8408
        0x8409
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x810a
        0x810b
        0x810c
        0x810d
        0x810e
        0x810f
        0x110
        0x111
        0x112
        0x113
        0x114
        0x115
        0x116
        0x117
        0x118
        0x119
        0x11a
        0x11b
        0x11c
        0x11d
        0x11e
        0x11f
        0x120
        0x121
        0x122
        0x123
        0x1000
        0x1000
        0x1000
        0x1000
        0x11000
        0x1000
        0x820a
        0x820b
        0x820c
        0x820d
        0x820e
        0x820f
        0x210
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21c
        0x21d
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x1000
        0x1000
        0x1000
        0x1000
        0x2000
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getType(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 199
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_9

    sget-object v0, Ljava/util/regex/ASCII;->ctype:[I

    aget v0, v0, p0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isAlnum(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 219
    const/16 v0, 0x700

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isAlpha(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 211
    const/16 v0, 0x300

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isAscii(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 207
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist isCntrl(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 247
    const/16 v0, 0x2000

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isDigit(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 215
    add-int/lit8 v0, p0, -0x30

    rsub-int/lit8 v1, p0, 0x39

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isGraph(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 223
    const/16 v0, 0x1700

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isHexDigit(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 239
    const v0, 0x8000

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isLower(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 251
    add-int/lit8 v0, p0, -0x61

    rsub-int/lit8 v1, p0, 0x7a

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isOctDigit(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 243
    add-int/lit8 v0, p0, -0x30

    rsub-int/lit8 v1, p0, 0x37

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isPrint(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 227
    add-int/lit8 v0, p0, -0x20

    rsub-int/lit8 v1, p0, 0x7e

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isPunct(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 231
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isSpace(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 235
    const/16 v0, 0x800

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isType(II)Z
    .registers 3
    .param p0, "ch"    # I
    .param p1, "type"    # I

    .line 203
    invoke-static {p0}, Ljava/util/regex/ASCII;->getType(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isUpper(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 255
    add-int/lit8 v0, p0, -0x41

    rsub-int/lit8 v1, p0, 0x5a

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isWord(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 259
    const v0, 0x10700

    invoke-static {p0, v0}, Ljava/util/regex/ASCII;->isType(II)Z

    move-result v0

    return v0
.end method

.method static blacklist toDigit(I)I
    .registers 3
    .param p0, "ch"    # I

    .line 263
    sget-object v0, Ljava/util/regex/ASCII;->ctype:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method static blacklist toLower(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 267
    invoke-static {p0}, Ljava/util/regex/ASCII;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, 0x20

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method

.method static blacklist toUpper(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 271
    invoke-static {p0}, Ljava/util/regex/ASCII;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, -0x20

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method
