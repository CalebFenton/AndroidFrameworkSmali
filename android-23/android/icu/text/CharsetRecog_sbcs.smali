.class abstract Landroid/icu/text/CharsetRecog_sbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;[I[B)I
    .locals 1
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B

    #@0
    .prologue
    .line 267
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/CharsetRecog_sbcs;->match(Landroid/icu/text/CharsetDetector;[I[BB)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method match(Landroid/icu/text/CharsetDetector;[I[BB)I
    .locals 2
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B
    .param p4, "spaceChar"    # B

    #@0
    .prologue
    .line 272
    new-instance v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;

    #@2
    invoke-direct {v0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    #@5
    .line 273
    .local v0, "parser":Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
    invoke-virtual {v0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method matchIBM420(Landroid/icu/text/CharsetDetector;[I[BB)I
    .locals 2
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B
    .param p4, "spaceChar"    # B

    #@0
    .prologue
    .line 277
    new-instance v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;

    #@2
    invoke-direct {v0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;-><init>([I[B)V

    #@5
    .line 278
    .local v0, "parser":Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;
    invoke-virtual {v0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->parse(Landroid/icu/text/CharsetDetector;B)I

    #@8
    move-result v1

    #@9
    return v1
.end method
