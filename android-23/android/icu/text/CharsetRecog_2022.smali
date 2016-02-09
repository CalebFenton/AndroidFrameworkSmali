.class abstract Landroid/icu/text/CharsetRecog_2022;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method match([BI[[B)I
    .locals 11
    .param p1, "text"    # [B
    .param p2, "textLen"    # I
    .param p3, "escapeSequences"    # [[B

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 35
    const/4 v1, 0x0

    #@2
    .line 36
    .local v1, "hits":I
    const/4 v4, 0x0

    #@3
    .line 37
    .local v4, "misses":I
    const/4 v7, 0x0

    #@4
    .line 40
    .local v7, "shifts":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_7

    #@7
    .line 41
    aget-byte v8, p1, v2

    #@9
    const/16 v9, 0x1b

    #@b
    if-ne v8, v9, :cond_5

    #@d
    .line 43
    const/4 v0, 0x0

    #@e
    .local v0, "escN":I
    :goto_1
    array-length v8, p3

    #@f
    if-ge v0, v8, :cond_4

    #@11
    .line 44
    aget-object v6, p3, v0

    #@13
    .line 46
    .local v6, "seq":[B
    sub-int v8, p2, v2

    #@15
    array-length v9, v6

    #@16
    if-ge v8, v9, :cond_1

    #@18
    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 50
    :cond_1
    const/4 v3, 0x1

    #@1c
    .local v3, "j":I
    :goto_2
    array-length v8, v6

    #@1d
    if-ge v3, v8, :cond_2

    #@1f
    .line 51
    aget-byte v8, v6, v3

    #@21
    add-int v9, v2, v3

    #@23
    aget-byte v9, p1, v9

    #@25
    if-ne v8, v9, :cond_0

    #@27
    .line 50
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_2

    #@2a
    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2c
    .line 57
    array-length v8, v6

    #@2d
    add-int/lit8 v8, v8, -0x1

    #@2f
    add-int/2addr v2, v8

    #@30
    .line 40
    .end local v0    # "escN":I
    .end local v3    # "j":I
    .end local v6    # "seq":[B
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 61
    .restart local v0    # "escN":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@35
    .line 64
    .end local v0    # "escN":I
    :cond_5
    aget-byte v8, p1, v2

    #@37
    const/16 v9, 0xe

    #@39
    if-eq v8, v9, :cond_6

    #@3b
    aget-byte v8, p1, v2

    #@3d
    const/16 v9, 0xf

    #@3f
    if-ne v8, v9, :cond_3

    #@41
    .line 66
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@43
    goto :goto_3

    #@44
    .line 70
    :cond_7
    if-nez v1, :cond_8

    #@46
    .line 71
    return v10

    #@47
    .line 80
    :cond_8
    mul-int/lit8 v8, v1, 0x64

    #@49
    mul-int/lit8 v9, v4, 0x64

    #@4b
    sub-int/2addr v8, v9

    #@4c
    add-int v9, v1, v4

    #@4e
    div-int v5, v8, v9

    #@50
    .line 85
    .local v5, "quality":I
    add-int v8, v1, v7

    #@52
    const/4 v9, 0x5

    #@53
    if-ge v8, v9, :cond_9

    #@55
    .line 86
    add-int v8, v1, v7

    #@57
    rsub-int/lit8 v8, v8, 0x5

    #@59
    mul-int/lit8 v8, v8, 0xa

    #@5b
    sub-int/2addr v5, v8

    #@5c
    .line 89
    :cond_9
    if-gez v5, :cond_a

    #@5e
    .line 90
    const/4 v5, 0x0

    #@5f
    .line 92
    :cond_a
    return v5
.end method
