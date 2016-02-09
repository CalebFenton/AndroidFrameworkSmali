.class Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_sjis"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 192
    const/16 v0, 0x39

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 188
    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    #@9
    .line 187
    return-void

    #@a
    .line 192
    :array_0
    .array-data 4
        0x8140
        0x8141
        0x8142
        0x8145
        0x815b
        0x8169
        0x816a
        0x8175
        0x8176
        0x82a0
        0x82a2
        0x82a4
        0x82a9
        0x82aa
        0x82ab
        0x82ad
        0x82af
        0x82b1
        0x82b3
        0x82b5
        0x82b7
        0x82bd
        0x82be
        0x82c1
        0x82c4
        0x82c5
        0x82c6
        0x82c8
        0x82c9
        0x82cc
        0x82cd
        0x82dc
        0x82e0
        0x82e7
        0x82e8
        0x82e9
        0x82ea
        0x82f0
        0x82f1
        0x8341
        0x8343
        0x834e
        0x834f
        0x8358
        0x835e
        0x8362
        0x8367
        0x8375
        0x8376
        0x8389
        0x838a
        0x838b
        0x838d
        0x8393
        0x8e96
        0x93fa
        0x95aa
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    const-string/jumbo v0, "ja"

    #@3
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    const-string/jumbo v0, "Shift_JIS"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 2
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 225
    sget-object v1, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    #@2
    invoke-virtual {p0, p1, v1}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->match(Landroid/icu/text/CharsetDetector;[I)I

    #@5
    move-result v0

    #@6
    .line 226
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
    .locals 6
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/16 v5, 0x7f

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 200
    iget v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@6
    iput v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@8
    .line 201
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@a
    .line 203
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@d
    move-result v0

    #@e
    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@10
    .line 204
    .local v0, "firstByte":I
    if-gez v0, :cond_0

    #@12
    .line 205
    return v3

    #@13
    .line 208
    :cond_0
    if-le v0, v5, :cond_1

    #@15
    const/16 v2, 0xa0

    #@17
    if-le v0, v2, :cond_2

    #@19
    const/16 v2, 0xdf

    #@1b
    if-gt v0, v2, :cond_2

    #@1d
    .line 209
    :cond_1
    return v4

    #@1e
    .line 212
    :cond_2
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@21
    move-result v1

    #@22
    .line 213
    .local v1, "secondByte":I
    if-gez v1, :cond_3

    #@24
    .line 214
    return v3

    #@25
    .line 216
    :cond_3
    shl-int/lit8 v2, v0, 0x8

    #@27
    or-int/2addr v2, v1

    #@28
    iput v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@2a
    .line 217
    const/16 v2, 0x40

    #@2c
    if-lt v1, v2, :cond_4

    #@2e
    if-le v1, v5, :cond_6

    #@30
    :cond_4
    const/16 v2, 0x80

    #@32
    if-lt v1, v2, :cond_5

    #@34
    const/16 v2, 0xff

    #@36
    if-le v1, v2, :cond_6

    #@38
    .line 219
    :cond_5
    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@3a
    .line 221
    :cond_6
    return v4
.end method
