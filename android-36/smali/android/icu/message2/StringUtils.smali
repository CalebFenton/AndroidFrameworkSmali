.class Landroid/icu/message2/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist isAlpha(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 108
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static blacklist isBackslash(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 39
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist isContentChar(I)Z
    .registers 3
    .param p0, "cp"    # I

    .line 21
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/16 v1, 0x8

    if-le p0, v1, :cond_4c

    :cond_7
    const/16 v1, 0xb

    if-lt p0, v1, :cond_f

    const/16 v1, 0xc

    if-le p0, v1, :cond_4c

    :cond_f
    const/16 v1, 0xe

    if-lt p0, v1, :cond_17

    const/16 v1, 0x1f

    if-le p0, v1, :cond_4c

    :cond_17
    const/16 v1, 0x21

    if-lt p0, v1, :cond_1f

    const/16 v1, 0x2d

    if-le p0, v1, :cond_4c

    :cond_1f
    const/16 v1, 0x2f

    if-lt p0, v1, :cond_27

    const/16 v1, 0x3f

    if-le p0, v1, :cond_4c

    :cond_27
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2f

    const/16 v1, 0x5b

    if-le p0, v1, :cond_4c

    :cond_2f
    const/16 v1, 0x5d

    if-lt p0, v1, :cond_37

    const/16 v1, 0x7a

    if-le p0, v1, :cond_4c

    :cond_37
    const/16 v1, 0x7e

    if-lt p0, v1, :cond_40

    const v1, 0xd7ff

    if-le p0, v1, :cond_4c

    :cond_40
    const v1, 0xe000

    if-lt p0, v1, :cond_4b

    const v1, 0x10ffff

    if-gt p0, v1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :cond_4c
    :goto_4c
    return v0
.end method

.method static blacklist isDigit(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 114
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static blacklist isFunctionSigil(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 119
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist isNameChar(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 79
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 80
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2b

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x300

    if-lt p0, v0, :cond_20

    const/16 v0, 0x36f

    if-le p0, v0, :cond_2b

    :cond_20
    const/16 v0, 0x203f

    if-lt p0, v0, :cond_29

    const/16 v0, 0x2040

    if-gt p0, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 79
    :goto_2c
    return v0
.end method

.method static blacklist isNameStart(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 58
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isAlpha(I)Z

    move-result v0

    if-nez v0, :cond_73

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_73

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_12

    const/16 v0, 0xd6

    if-le p0, v0, :cond_73

    :cond_12
    const/16 v0, 0xd8

    if-lt p0, v0, :cond_1a

    const/16 v0, 0xf6

    if-le p0, v0, :cond_73

    :cond_1a
    const/16 v0, 0xf8

    if-lt p0, v0, :cond_22

    const/16 v0, 0x2ff

    if-le p0, v0, :cond_73

    :cond_22
    const/16 v0, 0x370

    if-lt p0, v0, :cond_2a

    const/16 v0, 0x37d

    if-le p0, v0, :cond_73

    :cond_2a
    const/16 v0, 0x37f

    if-lt p0, v0, :cond_32

    const/16 v0, 0x1fff

    if-le p0, v0, :cond_73

    :cond_32
    const/16 v0, 0x200c

    if-lt p0, v0, :cond_3a

    const/16 v0, 0x200d

    if-le p0, v0, :cond_73

    :cond_3a
    const/16 v0, 0x2070

    if-lt p0, v0, :cond_42

    const/16 v0, 0x218f

    if-le p0, v0, :cond_73

    :cond_42
    const/16 v0, 0x2c00

    if-lt p0, v0, :cond_4a

    const/16 v0, 0x2fef

    if-le p0, v0, :cond_73

    :cond_4a
    const/16 v0, 0x3001

    if-lt p0, v0, :cond_53

    const v0, 0xd7ff

    if-le p0, v0, :cond_73

    :cond_53
    const v0, 0xf900

    if-lt p0, v0, :cond_5d

    const v0, 0xfdcf

    if-le p0, v0, :cond_73

    :cond_5d
    const v0, 0xfdf0

    if-lt p0, v0, :cond_67

    const v0, 0xfffc

    if-le p0, v0, :cond_73

    :cond_67
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_71

    const v0, 0xeffff

    if-gt p0, v0, :cond_71

    goto :goto_73

    :cond_71
    const/4 v0, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v0, 0x1

    :goto_74
    return v0
.end method

.method static blacklist isQuotedChar(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 90
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isContentChar(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 91
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x7d

    if-ne p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 90
    :goto_20
    return v0
.end method

.method static blacklist isSimpleStartChar(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 99
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isContentChar(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 100
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x40

    if-eq p0, v0, :cond_17

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 99
    :goto_18
    return v0
.end method

.method static blacklist isTextChar(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 34
    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isContentChar(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0}, Landroid/icu/message2/StringUtils;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method static blacklist isWhitespace(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 47
    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method
