.class Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 9
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 102
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 103
    .local v0, "input":[B
    const/16 v1, 0xa

    .line 105
    .local v1, "confidence":I
    array-length v2, v0

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    .local v2, "bytesToCheck":I
    const/4 v3, 0x0

    .local v3, "charIndex":I
    :goto_c
    add-int/lit8 v4, v2, -0x1

    const/16 v5, 0x64

    if-ge v3, v4, :cond_32

    .line 107
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v0, v4

    aget-byte v6, v0, v3

    invoke-static {v4, v6}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->codeUnit16FromBytes(BB)I

    move-result v4

    .line 108
    .local v4, "codeUnit":I
    if-nez v3, :cond_26

    const v6, 0xfeff

    if-ne v4, v6, :cond_26

    .line 109
    const/16 v1, 0x64

    .line 110
    goto :goto_32

    .line 112
    :cond_26
    invoke-static {v4, v1}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->adjustConfidence(II)I

    move-result v1

    .line 113
    if-eqz v1, :cond_32

    if-ne v1, v5, :cond_2f

    .line 114
    goto :goto_32

    .line 106
    .end local v4    # "codeUnit":I
    :cond_2f
    add-int/lit8 v3, v3, 0x2

    goto :goto_c

    .line 117
    .end local v3    # "charIndex":I
    :cond_32
    :goto_32
    const/4 v3, 0x4

    if-ge v2, v3, :cond_38

    if-ge v1, v5, :cond_38

    .line 118
    const/4 v1, 0x0

    .line 120
    :cond_38
    if-lez v1, :cond_40

    .line 121
    new-instance v3, Landroid/icu/text/CharsetMatch;

    invoke-direct {v3, p1, p0, v1}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    return-object v3

    .line 123
    :cond_40
    const/4 v3, 0x0

    return-object v3
.end method
