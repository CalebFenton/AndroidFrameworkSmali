.class Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;
.super Landroid/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022JP"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x3

    #@2
    .line 98
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    #@5
    .line 99
    const/16 v0, 0xc

    #@7
    new-array v0, v0, [[B

    #@9
    .line 100
    new-array v1, v4, [B

    #@b
    fill-array-data v1, :array_0

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 101
    new-array v1, v4, [B

    #@13
    fill-array-data v1, :array_1

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 102
    new-array v1, v3, [B

    #@1b
    fill-array-data v1, :array_2

    #@1e
    const/4 v2, 0x2

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 103
    new-array v1, v3, [B

    #@23
    fill-array-data v1, :array_3

    #@26
    aput-object v1, v0, v3

    #@28
    .line 104
    new-array v1, v3, [B

    #@2a
    fill-array-data v1, :array_4

    #@2d
    aput-object v1, v0, v4

    #@2f
    .line 105
    new-array v1, v3, [B

    #@31
    fill-array-data v1, :array_5

    #@34
    const/4 v2, 0x5

    #@35
    aput-object v1, v0, v2

    #@37
    .line 106
    new-array v1, v3, [B

    #@39
    fill-array-data v1, :array_6

    #@3c
    const/4 v2, 0x6

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 107
    new-array v1, v3, [B

    #@41
    fill-array-data v1, :array_7

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 108
    new-array v1, v3, [B

    #@49
    fill-array-data v1, :array_8

    #@4c
    const/16 v2, 0x8

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 109
    new-array v1, v3, [B

    #@52
    fill-array-data v1, :array_9

    #@55
    const/16 v2, 0x9

    #@57
    aput-object v1, v0, v2

    #@59
    .line 110
    new-array v1, v3, [B

    #@5b
    fill-array-data v1, :array_a

    #@5e
    const/16 v2, 0xa

    #@60
    aput-object v1, v0, v2

    #@62
    .line 111
    new-array v1, v3, [B

    #@64
    fill-array-data v1, :array_b

    #@67
    const/16 v2, 0xb

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 99
    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    #@6d
    .line 98
    return-void

    #@6e
    .line 100
    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    #@74
    .line 101
    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    #@7a
    .line 102
    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x40t
    .end array-data

    #@80
    .line 103
    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x41t
    .end array-data

    #@86
    .line 104
    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x42t
    .end array-data

    #@8c
    .line 105
    :array_5
    .array-data 1
        0x1bt
        0x26t
        0x40t
    .end array-data

    #@92
    .line 106
    :array_6
    .array-data 1
        0x1bt
        0x28t
        0x42t
    .end array-data

    #@98
    .line 107
    :array_7
    .array-data 1
        0x1bt
        0x28t
        0x48t
    .end array-data

    #@9e
    .line 108
    :array_8
    .array-data 1
        0x1bt
        0x28t
        0x49t
    .end array-data

    #@a4
    .line 109
    :array_9
    .array-data 1
        0x1bt
        0x28t
        0x4at
    .end array-data

    #@aa
    .line 110
    :array_a
    .array-data 1
        0x1bt
        0x2et
        0x41t
    .end array-data

    #@b0
    .line 111
    :array_b
    .array-data 1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "ISO-2022-JP"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 119
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@2
    iget v2, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@4
    iget-object v3, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    #@6
    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->match([BI[[B)I

    #@9
    move-result v0

    #@a
    .line 120
    .local v0, "confidence":I
    if-nez v0, :cond_0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    #@10
    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@13
    goto :goto_0
.end method
