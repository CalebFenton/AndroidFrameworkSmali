.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_8_he"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 804
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;->ngrams:[I

    #@9
    .line 802
    return-void

    #@a
    .line 804
    :array_0
    .array-data 4
        0x20e0e5
        0x20e0ec
        0x20e4e9
        0x20e4ec
        0x20e4ee
        0x20e4f0
        0x20e9f0
        0x20ecf2
        0x20ecf9
        0x20ede5
        0x20ede9
        0x20efe5
        0x20efe9
        0x20f8e5
        0x20f8e9
        0x20fae0
        0x20fae5
        0x20fae9
        0xe020e4
        0xe020ec
        0xe020ed
        0xe020fa
        0xe0e420
        0xe0e5e4
        0xe0ec20
        0xe0ee20
        0xe120e4
        0xe120ed
        0xe120fa
        0xe420e4
        0xe420e9
        0xe420ec
        0xe420ed
        0xe420ef
        0xe420f8
        0xe420fa
        0xe4ec20
        0xe5e020
        0xe5e420
        0xe7e020
        0xe9e020
        0xe9e120
        0xe9e420
        0xec20e4
        0xec20ed
        0xec20fa
        0xecf220
        0xecf920
        0xede9e9
        0xede9f0
        0xede9f8
        0xee20e4
        0xee20ed
        0xee20fa
        0xeee120
        0xeee420
        0xf2e420
        0xf920e4
        0xf920ed
        0xf920fa
        0xf9e420
        0xfae020
        0xfae420
        0xfae5e9
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 802
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 813
    const-string/jumbo v0, "he"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 6
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 818
    iget-boolean v0, p1, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v4, "windows-1255"

    #@7
    .line 819
    .local v4, "name":Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;->ngrams:[I

    #@9
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;->byteMap:[B

    #@b
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@e
    move-result v3

    #@f
    .line 820
    .local v3, "confidence":I
    if-nez v3, :cond_1

    #@11
    const/4 v0, 0x0

    #@12
    :goto_1
    return-object v0

    #@13
    .line 818
    .end local v3    # "confidence":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "ISO-8859-8"

    #@16
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 820
    .restart local v3    # "confidence":I
    :cond_1
    new-instance v0, Landroid/icu/text/CharsetMatch;

    #@19
    const-string/jumbo v5, "he"

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p0

    #@1e
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    #@21
    goto :goto_1
.end method
