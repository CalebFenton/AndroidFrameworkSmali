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
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 251
    const/16 v0, 0x60

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 247
    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    #@9
    .line 246
    return-void

    #@a
    .line 251
    :array_0
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

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    const-string/jumbo v0, "zh"

    #@3
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 296
    const-string/jumbo v0, "Big5"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 2
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 291
    sget-object v1, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->commonChars:[I

    #@2
    invoke-virtual {p0, p1, v1}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;->match(Landroid/icu/text/CharsetDetector;[I)I

    #@5
    move-result v0

    #@6
    .line 292
    .local v0, "confidence":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    #@c
    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@f
    goto :goto_0
.end method

.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 7
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/16 v6, 0xff

    #@2
    const/16 v5, 0x7f

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 263
    iget v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@8
    iput v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@a
    .line 264
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@c
    .line 266
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@f
    move-result v0

    #@10
    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@12
    .line 267
    .local v0, "firstByte":I
    if-gez v0, :cond_0

    #@14
    .line 268
    return v3

    #@15
    .line 271
    :cond_0
    if-le v0, v5, :cond_1

    #@17
    if-ne v0, v6, :cond_2

    #@19
    .line 273
    :cond_1
    return v4

    #@1a
    .line 276
    :cond_2
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@1d
    move-result v1

    #@1e
    .line 277
    .local v1, "secondByte":I
    if-gez v1, :cond_3

    #@20
    .line 278
    return v3

    #@21
    .line 280
    :cond_3
    iget v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@23
    shl-int/lit8 v2, v2, 0x8

    #@25
    or-int/2addr v2, v1

    #@26
    iput v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@28
    .line 282
    const/16 v2, 0x40

    #@2a
    if-lt v1, v2, :cond_4

    #@2c
    .line 283
    if-ne v1, v5, :cond_6

    #@2e
    .line 285
    :cond_4
    :goto_0
    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@30
    .line 287
    :cond_5
    return v4

    #@31
    .line 284
    :cond_6
    if-ne v1, v6, :cond_5

    #@33
    goto :goto_0
.end method
