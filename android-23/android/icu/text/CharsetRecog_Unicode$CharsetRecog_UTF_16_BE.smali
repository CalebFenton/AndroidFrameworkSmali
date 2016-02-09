.class Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_BE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "UTF-16BE"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 8
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/16 v7, 0x64

    #@2
    .line 59
    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@4
    .line 60
    .local v4, "input":[B
    const/16 v3, 0xa

    #@6
    .line 62
    .local v3, "confidence":I
    array-length v5, v4

    #@7
    const/16 v6, 0x1e

    #@9
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v0

    #@d
    .line 63
    .local v0, "bytesToCheck":I
    const/4 v1, 0x0

    #@e
    .local v1, "charIndex":I
    :goto_0
    add-int/lit8 v5, v0, -0x1

    #@10
    if-ge v1, v5, :cond_0

    #@12
    .line 64
    aget-byte v5, v4, v1

    #@14
    add-int/lit8 v6, v1, 0x1

    #@16
    aget-byte v6, v4, v6

    #@18
    invoke-static {v5, v6}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->codeUnit16FromBytes(BB)I

    #@1b
    move-result v2

    #@1c
    .line 65
    .local v2, "codeUnit":I
    if-nez v1, :cond_2

    #@1e
    const v5, 0xfeff

    #@21
    if-ne v2, v5, :cond_2

    #@23
    .line 66
    const/16 v3, 0x64

    #@25
    .line 74
    .end local v2    # "codeUnit":I
    :cond_0
    const/4 v5, 0x4

    #@26
    if-ge v0, v5, :cond_1

    #@28
    if-ge v3, v7, :cond_1

    #@2a
    .line 75
    const/4 v3, 0x0

    #@2b
    .line 77
    :cond_1
    if-lez v3, :cond_3

    #@2d
    .line 78
    new-instance v5, Landroid/icu/text/CharsetMatch;

    #@2f
    invoke-direct {v5, p1, p0, v3}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@32
    return-object v5

    #@33
    .line 69
    .restart local v2    # "codeUnit":I
    :cond_2
    invoke-static {v2, v3}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->adjustConfidence(II)I

    #@36
    move-result v3

    #@37
    .line 70
    if-eqz v3, :cond_0

    #@39
    if-eq v3, v7, :cond_0

    #@3b
    .line 63
    add-int/lit8 v1, v1, 0x2

    #@3d
    goto :goto_0

    #@3e
    .line 80
    .end local v2    # "codeUnit":I
    :cond_3
    const/4 v5, 0x0

    #@3f
    return-object v5
.end method
