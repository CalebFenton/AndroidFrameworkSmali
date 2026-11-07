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
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .registers 9
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "firstByte":I
    const/4 v1, 0x0

    .line 334
    .local v1, "secondByte":I
    const/4 v2, 0x0

    .line 338
    .local v2, "thirdByte":I
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v3

    iput v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 339
    .end local v0    # "firstByte":I
    .local v3, "firstByte":I
    const/4 v0, 0x1

    if-gez v3, :cond_12

    .line 341
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 342
    goto :goto_4b

    .line 344
    :cond_12
    const/16 v4, 0x8d

    if-gt v3, v4, :cond_17

    .line 346
    goto :goto_4b

    .line 349
    :cond_17
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    .line 350
    iget v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v1

    iput v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 352
    const/16 v4, 0xa1

    if-lt v3, v4, :cond_2f

    const/16 v5, 0xfe

    if-gt v3, v5, :cond_2f

    .line 354
    if-ge v1, v4, :cond_4b

    .line 355
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_4b

    .line 359
    :cond_2f
    const/16 v5, 0x8e

    if-ne v3, v5, :cond_38

    .line 366
    if-ge v1, v4, :cond_4b

    .line 367
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_4b

    .line 372
    :cond_38
    const/16 v5, 0x8f

    if-ne v3, v5, :cond_4b

    .line 375
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v2

    .line 376
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v2

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 377
    if-ge v2, v4, :cond_4b

    .line 378
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 383
    :cond_4b
    :goto_4b
    iget-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    xor-int/2addr v0, v4

    return v0
.end method
