.class abstract Landroid/icu/text/CharsetRecog_2022;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist match([BI[[B)I
    .registers 13
    .param p1, "text"    # [B
    .param p2, "textLen"    # I
    .param p3, "escapeSequences"    # [[B

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 40
    .local v1, "misses":I
    const/4 v2, 0x0

    .line 43
    .local v2, "shifts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p2, :cond_45

    .line 44
    aget-byte v4, p1, v3

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_34

    .line 46
    const/4 v4, 0x0

    .local v4, "escN":I
    :goto_d
    array-length v5, p3

    if-ge v4, v5, :cond_32

    .line 47
    aget-object v5, p3, v4

    .line 49
    .local v5, "seq":[B
    sub-int v6, p2, v3

    array-length v7, v5

    if-ge v6, v7, :cond_18

    .line 50
    goto :goto_25

    .line 53
    :cond_18
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_19
    array-length v7, v5

    if-ge v6, v7, :cond_2b

    .line 54
    aget-byte v7, v5, v6

    add-int v8, v3, v6

    aget-byte v8, p1, v8

    if-eq v7, v8, :cond_28

    .line 55
    nop

    .line 46
    .end local v5    # "seq":[B
    .end local v6    # "j":I
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 53
    .restart local v5    # "seq":[B
    .restart local v6    # "j":I
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 59
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 60
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v3, v7

    .line 61
    goto :goto_42

    .line 64
    .end local v5    # "seq":[B
    .end local v6    # "j":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 67
    .end local v4    # "escN":I
    :cond_34
    aget-byte v4, p1, v3

    const/16 v5, 0xe

    if-eq v4, v5, :cond_40

    aget-byte v4, p1, v3

    const/16 v5, 0xf

    if-ne v4, v5, :cond_42

    .line 69
    :cond_40
    add-int/lit8 v2, v2, 0x1

    .line 43
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 73
    :cond_45
    if-nez v0, :cond_49

    .line 74
    const/4 v4, 0x0

    return v4

    .line 83
    :cond_49
    mul-int/lit8 v4, v0, 0x64

    mul-int/lit8 v5, v1, 0x64

    sub-int/2addr v4, v5

    add-int v5, v0, v1

    div-int/2addr v4, v5

    .line 88
    .local v4, "quality":I
    add-int v5, v0, v2

    const/4 v6, 0x5

    if-ge v5, v6, :cond_5c

    .line 89
    add-int v5, v0, v2

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v4, v6

    .line 92
    :cond_5c
    if-gez v4, :cond_5f

    .line 93
    const/4 v4, 0x0

    .line 95
    :cond_5f
    return v4
.end method
