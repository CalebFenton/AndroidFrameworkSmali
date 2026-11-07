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
.field static blacklist commonChars:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    return-void

    :array_a
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

.method constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 240
    const-string v0, "ja"

    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 234
    const-string v0, "Shift_JIS"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 228
    sget-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->match(Landroid/icu/text/CharsetDetector;[I)I

    move-result v0

    .line 229
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
    .registers 8
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 205
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    iput v1, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 206
    .local v1, "firstByte":I
    if-gez v1, :cond_c

    .line 207
    return v0

    .line 210
    :cond_c
    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-le v1, v2, :cond_37

    const/16 v4, 0xa0

    if-le v1, v4, :cond_1a

    const/16 v4, 0xdf

    if-gt v1, v4, :cond_1a

    goto :goto_37

    .line 214
    :cond_1a
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v4

    .line 215
    .local v4, "secondByte":I
    if-gez v4, :cond_21

    .line 216
    return v0

    .line 218
    :cond_21
    shl-int/lit8 v0, v1, 0x8

    or-int/2addr v0, v4

    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 219
    const/16 v0, 0x40

    if-lt v4, v0, :cond_2c

    if-le v4, v2, :cond_36

    :cond_2c
    const/16 v0, 0x80

    if-lt v4, v0, :cond_34

    const/16 v0, 0xff

    if-le v4, v0, :cond_36

    .line 221
    :cond_34
    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 223
    :cond_36
    return v3

    .line 211
    .end local v4    # "secondByte":I
    :cond_37
    :goto_37
    return v3
.end method
