.class Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;
.super Landroid/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022KR"
.end annotation


# instance fields
.field private blacklist escapeSequences:[[B


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    return-void

    :array_10
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x43t
    .end array-data
.end method


# virtual methods
.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "ISO-2022-KR"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 141
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->match([BI[[B)I

    move-result v0

    .line 142
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
