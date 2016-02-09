.class abstract Landroid/icu/text/CharsetRecog_Unicode;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    #@3
    return-void
.end method

.method static adjustConfidence(II)I
    .locals 1
    .param p0, "codeUnit"    # I
    .param p1, "confidence"    # I

    #@0
    .prologue
    .line 37
    if-nez p0, :cond_2

    #@2
    .line 38
    add-int/lit8 p1, p1, -0xa

    #@4
    .line 42
    :cond_0
    :goto_0
    if-gez p1, :cond_4

    #@6
    .line 43
    const/4 p1, 0x0

    #@7
    .line 47
    :cond_1
    :goto_1
    return p1

    #@8
    .line 39
    :cond_2
    const/16 v0, 0x20

    #@a
    if-lt p0, v0, :cond_3

    #@c
    const/16 v0, 0xff

    #@e
    if-gt p0, v0, :cond_3

    #@10
    .line 40
    :goto_2
    add-int/lit8 p1, p1, 0xa

    #@12
    goto :goto_0

    #@13
    .line 39
    :cond_3
    const/16 v0, 0xa

    #@15
    if-ne p0, v0, :cond_0

    #@17
    goto :goto_2

    #@18
    .line 44
    :cond_4
    const/16 v0, 0x64

    #@1a
    if-le p1, v0, :cond_1

    #@1c
    .line 45
    const/16 p1, 0x64

    #@1e
    goto :goto_1
.end method

.method static codeUnit16FromBytes(BB)I
    .locals 2
    .param p0, "hi"    # B
    .param p1, "lo"    # B

    #@0
    .prologue
    .line 28
    and-int/lit16 v0, p0, 0xff

    #@2
    shl-int/lit8 v0, v0, 0x8

    #@4
    and-int/lit16 v1, p1, 0xff

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
