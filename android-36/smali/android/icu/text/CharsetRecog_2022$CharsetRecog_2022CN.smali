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
.field private blacklist escapeSequences:[[B


# direct methods
.method constructor blacklist <init>()V
    .registers 13

    .line 146
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    .line 147
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_44

    new-array v2, v0, [B

    fill-array-data v2, :array_4a

    new-array v3, v0, [B

    fill-array-data v3, :array_50

    new-array v4, v0, [B

    fill-array-data v4, :array_56

    new-array v5, v0, [B

    fill-array-data v5, :array_5c

    new-array v6, v0, [B

    fill-array-data v6, :array_62

    new-array v7, v0, [B

    fill-array-data v7, :array_68

    new-array v8, v0, [B

    fill-array-data v8, :array_6e

    new-array v9, v0, [B

    fill-array-data v9, :array_74

    const/4 v0, 0x2

    new-array v10, v0, [B

    fill-array-data v10, :array_7a

    new-array v11, v0, [B

    fill-array-data v11, :array_80

    filled-new-array/range {v1 .. v11}, [[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    return-void

    nop

    :array_44
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    :array_4a
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    :array_50
    .array-data 1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    :array_56
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    :array_5c
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    :array_62
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    :array_68
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    :array_6e
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    :array_74
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    :array_7a
    .array-data 1
        0x1bt
        0x4et
    .end array-data

    nop

    :array_80
    .array-data 1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 163
    const-string v0, "ISO-2022-CN"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 168
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->match([BI[[B)I

    move-result v0

    .line 169
    .local v0, "confidence":I
    if-nez v0, :cond_e

    const/4 v1, 0x0

    goto :goto_13

    :cond_e
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_13
    return-object v1
.end method
