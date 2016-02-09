.class abstract Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 7
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v6, 0xa1

    #@3
    const/4 v3, 0x1

    #@4
    .line 322
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@6
    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@8
    .line 323
    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@a
    .line 324
    const/4 v0, 0x0

    #@b
    .line 325
    .local v0, "firstByte":I
    const/4 v1, 0x0

    #@c
    .line 326
    .local v1, "secondByte":I
    const/4 v2, 0x0

    #@d
    .line 330
    .local v2, "thirdByte":I
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@10
    move-result v0

    #@11
    .end local v0    # "firstByte":I
    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@13
    .line 331
    .restart local v0    # "firstByte":I
    if-gez v0, :cond_1

    #@15
    .line 333
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@17
    .line 375
    :cond_0
    :goto_0
    iget-boolean v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@19
    if-nez v5, :cond_4

    #@1b
    :goto_1
    return v3

    #@1c
    .line 336
    :cond_1
    const/16 v5, 0x8d

    #@1e
    if-le v0, v5, :cond_0

    #@20
    .line 341
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@23
    move-result v1

    #@24
    .line 342
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@26
    shl-int/lit8 v5, v5, 0x8

    #@28
    or-int/2addr v5, v1

    #@29
    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@2b
    .line 344
    if-lt v0, v6, :cond_2

    #@2d
    const/16 v5, 0xfe

    #@2f
    if-gt v0, v5, :cond_2

    #@31
    .line 346
    if-ge v1, v6, :cond_0

    #@33
    .line 347
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@35
    goto :goto_0

    #@36
    .line 351
    :cond_2
    const/16 v5, 0x8e

    #@38
    if-ne v0, v5, :cond_3

    #@3a
    .line 358
    if-ge v1, v6, :cond_0

    #@3c
    .line 359
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@3e
    goto :goto_0

    #@3f
    .line 364
    :cond_3
    const/16 v5, 0x8f

    #@41
    if-ne v0, v5, :cond_0

    #@43
    .line 367
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@46
    move-result v2

    #@47
    .line 368
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@49
    shl-int/lit8 v5, v5, 0x8

    #@4b
    or-int/2addr v5, v2

    #@4c
    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@4e
    .line 369
    if-ge v2, v6, :cond_0

    #@50
    .line 370
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@52
    goto :goto_0

    #@53
    :cond_4
    move v3, v4

    #@54
    .line 375
    goto :goto_1
.end method
