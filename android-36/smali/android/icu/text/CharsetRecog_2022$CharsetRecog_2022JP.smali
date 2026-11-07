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
.field private blacklist escapeSequences:[[B


# direct methods
.method constructor blacklist <init>()V
    .registers 14

    .line 101
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    .line 102
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_48

    new-array v2, v0, [B

    fill-array-data v2, :array_4e

    const/4 v0, 0x3

    new-array v3, v0, [B

    fill-array-data v3, :array_54

    new-array v4, v0, [B

    fill-array-data v4, :array_5a

    new-array v5, v0, [B

    fill-array-data v5, :array_60

    new-array v6, v0, [B

    fill-array-data v6, :array_66

    new-array v7, v0, [B

    fill-array-data v7, :array_6c

    new-array v8, v0, [B

    fill-array-data v8, :array_72

    new-array v9, v0, [B

    fill-array-data v9, :array_78

    new-array v10, v0, [B

    fill-array-data v10, :array_7e

    new-array v11, v0, [B

    fill-array-data v11, :array_84

    new-array v12, v0, [B

    fill-array-data v12, :array_8a

    filled-new-array/range {v1 .. v12}, [[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    return-void

    :array_48
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    :array_4e
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    :array_54
    .array-data 1
        0x1bt
        0x24t
        0x40t
    .end array-data

    :array_5a
    .array-data 1
        0x1bt
        0x24t
        0x41t
    .end array-data

    :array_60
    .array-data 1
        0x1bt
        0x24t
        0x42t
    .end array-data

    :array_66
    .array-data 1
        0x1bt
        0x26t
        0x40t
    .end array-data

    :array_6c
    .array-data 1
        0x1bt
        0x28t
        0x42t
    .end array-data

    :array_72
    .array-data 1
        0x1bt
        0x28t
        0x48t
    .end array-data

    :array_78
    .array-data 1
        0x1bt
        0x28t
        0x49t
    .end array-data

    :array_7e
    .array-data 1
        0x1bt
        0x28t
        0x4at
    .end array-data

    :array_84
    .array-data 1
        0x1bt
        0x2et
        0x41t
    .end array-data

    :array_8a
    .array-data 1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "ISO-2022-JP"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 124
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;->match([BI[[B)I

    move-result v0

    .line 125
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
