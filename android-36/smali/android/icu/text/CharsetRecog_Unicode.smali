.class abstract Landroid/icu/text/CharsetRecog_Unicode;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method

.method static blacklist adjustConfidence(II)I
    .registers 3
    .param p0, "codeUnit"    # I
    .param p1, "confidence"    # I

    .line 42
    if-nez p0, :cond_5

    .line 43
    add-int/lit8 p1, p1, -0xa

    goto :goto_13

    .line 44
    :cond_5
    const/16 v0, 0x20

    if-lt p0, v0, :cond_d

    const/16 v0, 0xff

    if-le p0, v0, :cond_11

    :cond_d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_13

    .line 45
    :cond_11
    add-int/lit8 p1, p1, 0xa

    .line 47
    :cond_13
    :goto_13
    if-gez p1, :cond_17

    .line 48
    const/4 p1, 0x0

    goto :goto_1d

    .line 49
    :cond_17
    const/16 v0, 0x64

    if-le p1, v0, :cond_1d

    .line 50
    const/16 p1, 0x64

    .line 52
    :cond_1d
    :goto_1d
    return p1
.end method

.method static blacklist codeUnit16FromBytes(BB)I
    .registers 4
    .param p0, "hi"    # B
    .param p1, "lo"    # B

    .line 33
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method abstract blacklist getName()Ljava/lang/String;
.end method

.method abstract blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
