.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_IBM420_ar_ltr"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1190
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;->ngrams:[I

    #@9
    .line 1188
    return-void

    #@a
    .line 1190
    :array_0
    .array-data 4
        0x404656
        0x4056bb
        0x4056bf
        0x406273
        0x406275
        0x4062b1
        0x4062bb
        0x4062dc
        0x406356
        0x407556
        0x4075dc
        0x40b156
        0x40bb56
        0x40bd56
        0x40bdbb
        0x40bdcf
        0x40bddc
        0x40dab1
        0x40dcab
        0x40dcb1
        0x49b156
        0x564056
        0x564058
        0x564062
        0x564063
        0x564073
        0x564075
        0x564078
        0x56409a
        0x5640b1
        0x5640bb
        0x5640bd
        0x5640bf
        0x5640da
        0x5640dc
        0x565840
        0x56b156
        0x56cf40
        0x58b156
        0x63b156
        0x63bd56
        0x67b156
        0x69b156
        0x73b156
        0x78b156
        0x9ab156
        0xab4062
        0xadb156
        0xb14062
        0xb15640
        0xb156cf
        0xb19a40
        0xb1b140
        0xbb4062
        0xbb40dc
        0xbbb156
        0xbd5640
        0xbdbb40
        0xcf4062
        0xcf40dc
        0xcfb156
        0xdab19a
        0xdcab40
        0xdcb156
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1188
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1199
    const-string/jumbo v0, "IBM420_ltr"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 1203
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;->ngrams:[I

    #@2
    sget-object v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;->byteMap:[B

    #@4
    const/16 v3, 0x40

    #@6
    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;->matchIBM420(Landroid/icu/text/CharsetDetector;[I[BB)I

    #@9
    move-result v0

    #@a
    .line 1204
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
