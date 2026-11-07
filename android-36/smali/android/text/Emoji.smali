.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static greylist-max-o CANCEL_TAG:I

.field public static greylist-max-o COMBINING_ENCLOSING_KEYCAP:I

.field public static greylist-max-o VARIATION_SELECTOR_16:I

.field public static greylist-max-o ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    .line 30
    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    .line 32
    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    .line 34
    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isEmoji(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 73
    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmojiModifier(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 47
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmojiModifierBase(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 61
    const v0, 0x1f91d

    if-eq p0, v0, :cond_12

    const v0, 0x1f93c

    if-ne p0, v0, :cond_b

    goto :goto_12

    .line 66
    :cond_b
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0

    .line 62
    :cond_12
    :goto_12
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o isKeycapBase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 78
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x23

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static greylist-max-o isRegionalIndicatorSymbol(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 40
    const v0, 0x1f1e6

    if-gt v0, p0, :cond_c

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o isTagSpecChar(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 87
    const v0, 0xe0020

    if-gt v0, p0, :cond_c

    const v0, 0xe007e

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
