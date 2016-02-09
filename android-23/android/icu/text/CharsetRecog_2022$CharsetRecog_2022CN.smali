.class Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;
.super Landroid/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022CN"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x4

    #@2
    .line 139
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    #@5
    .line 140
    const/16 v0, 0xb

    #@7
    new-array v0, v0, [[B

    #@9
    .line 141
    new-array v1, v3, [B

    #@b
    fill-array-data v1, :array_0

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 142
    new-array v1, v3, [B

    #@13
    fill-array-data v1, :array_1

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 143
    new-array v1, v3, [B

    #@1b
    fill-array-data v1, :array_2

    #@1e
    aput-object v1, v0, v4

    #@20
    .line 144
    new-array v1, v3, [B

    #@22
    fill-array-data v1, :array_3

    #@25
    const/4 v2, 0x3

    #@26
    aput-object v1, v0, v2

    #@28
    .line 145
    new-array v1, v3, [B

    #@2a
    fill-array-data v1, :array_4

    #@2d
    aput-object v1, v0, v3

    #@2f
    .line 146
    new-array v1, v3, [B

    #@31
    fill-array-data v1, :array_5

    #@34
    const/4 v2, 0x5

    #@35
    aput-object v1, v0, v2

    #@37
    .line 147
    new-array v1, v3, [B

    #@39
    fill-array-data v1, :array_6

    #@3c
    const/4 v2, 0x6

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 148
    new-array v1, v3, [B

    #@41
    fill-array-data v1, :array_7

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 149
    new-array v1, v3, [B

    #@49
    fill-array-data v1, :array_8

    #@4c
    const/16 v2, 0x8

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 150
    new-array v1, v4, [B

    #@52
    fill-array-data v1, :array_9

    #@55
    const/16 v2, 0x9

    #@57
    aput-object v1, v0, v2

    #@59
    .line 151
    new-array v1, v4, [B

    #@5b
    fill-array-data v1, :array_a

    #@5e
    const/16 v2, 0xa

    #@60
    aput-object v1, v0, v2

    #@62
    .line 140
    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    #@64
    .line 139
    return-void

    #@65
    .line 141
    nop

    #@66
    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    #@6c
    .line 142
    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    #@72
    .line 143
    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    #@78
    .line 144
    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    #@7e
    .line 145
    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    #@84
    .line 146
    :array_5
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    #@8a
    .line 147
    :array_6
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    #@90
    .line 148
    :array_7
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    #@96
    .line 149
    :array_8
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    #@9c
    .line 150
    :array_9
    .array-data 1
        0x1bt
        0x4et
    .end array-data

    #@a1
    .line 151
    nop

    #@a2
    :array_a
    .array-data 1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const-string/jumbo v0, "ISO-2022-CN"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 159
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@2
    iget v2, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@4
    iget-object v3, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    #@6
    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->match([BI[[B)I

    #@9
    move-result v0

    #@a
    .line 160
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
