.class Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_big5"
.end annotation


# static fields
.field static blacklist commonChars:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 252
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    return-void

    :array_a
    .array-data 4
        0xa140
        0xa141
        0xa142
        0xa143
        0xa147
        0xa149
        0xa175
        0xa176
        0xa440
        0xa446
        0xa447
        0xa448
        0xa451
        0xa454
        0xa457
        0xa464
        0xa46a
        0xa46c
        0xa477
        0xa4a3
        0xa4a4
        0xa4a7
        0xa4c1
        0xa4ce
        0xa4d1
        0xa4df
        0xa4e8
        0xa4fd
        0xa540
        0xa548
        0xa558
        0xa569
        0xa5cd
        0xa5e7
        0xa657
        0xa661
        0xa662
        0xa668
        0xa670
        0xa6a8
        0xa6b3
        0xa6b9
        0xa6d3
        0xa6db
        0xa6e6
        0xa6f2
        0xa740    # 5.9998E-41f
        0xa751
        0xa759
        0xa7da
        0xa8a3
        0xa8a5
        0xa8ad
        0xa8d1
        0xa8d3
        0xa8e4
        0xa8fc
        0xa9c0
        0xa9d2
        0xa9f3
        0xaa6b
        0xaaba
        0xaabe
        0xaacc
        0xaafc
        0xac47
        0xac4f
        0xacb0
        0xacd2
        0xad59
        0xaec9
        0xafe0
        0xb0ea
        0xb16f
        0xb2b3
        0xb2c4
        0xb36f
        0xb44c
        0xb44e
        0xb54c
        0xb5a5
        0xb5bd
        0xb5d0
        0xb5d8
        0xb671
        0xb7ed
        0xb867
        0xb944
        0xbad8
        0xbb44
        0xbba1
        0xbdd1
        0xc2c4
        0xc3b9
        0xc440
        0xc45f
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 310
    const-string v0, "zh"

    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 303
    const-string v0, "Big5"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 297
    sget-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->match(Landroid/icu/text/CharsetDetector;[I)I

    move-result v0

    .line 298
    .local v0, "confidence":I
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    :cond_a
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_f
    return-object v1
.end method

.method blacklist nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .registers 9
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 271
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    iput v1, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 272
    .local v1, "firstByte":I
    if-gez v1, :cond_c

    .line 273
    return v0

    .line 276
    :cond_c
    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-le v1, v2, :cond_2f

    const/16 v4, 0xff

    if-ne v1, v4, :cond_16

    goto :goto_2f

    .line 281
    :cond_16
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v5

    .line 282
    .local v5, "secondByte":I
    if-gez v5, :cond_1d

    .line 283
    return v0

    .line 285
    :cond_1d
    iget v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v5

    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 287
    const/16 v0, 0x40

    if-lt v5, v0, :cond_2c

    if-eq v5, v2, :cond_2c

    if-ne v5, v4, :cond_2e

    .line 290
    :cond_2c
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 292
    :cond_2e
    return v3

    .line 278
    .end local v5    # "secondByte":I
    :cond_2f
    :goto_2f
    return v3
.end method
