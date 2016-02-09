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
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    #@3
    .line 125
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [[B

    #@6
    .line 126
    const/4 v1, 0x4

    #@7
    new-array v1, v1, [B

    #@9
    fill-array-data v1, :array_0

    #@c
    const/4 v2, 0x0

    #@d
    aput-object v1, v0, v2

    #@f
    .line 125
    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    #@11
    .line 124
    return-void

    #@12
    .line 126
    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x43t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "ISO-2022-KR"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 134
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@2
    iget v2, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@4
    iget-object v3, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    #@6
    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->match([BI[[B)I

    #@9
    move-result v0

    #@a
    .line 135
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
