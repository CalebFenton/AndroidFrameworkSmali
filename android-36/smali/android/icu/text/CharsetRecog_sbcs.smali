.class abstract Landroid/icu/text/CharsetRecog_sbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist getName()Ljava/lang/String;
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;[I[B)I
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B

    .line 272
    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/CharsetRecog_sbcs;->match(Landroid/icu/text/CharsetDetector;[I[BB)I

    move-result v0

    return v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;[I[BB)I
    .registers 7
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B
    .param p4, "spaceChar"    # B

    .line 277
    new-instance v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;

    invoke-direct {v0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    .line 278
    .local v0, "parser":Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
    invoke-virtual {v0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result v1

    return v1
.end method

.method blacklist matchIBM420(Landroid/icu/text/CharsetDetector;[I[BB)I
    .registers 7
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "ngrams"    # [I
    .param p3, "byteMap"    # [B
    .param p4, "spaceChar"    # B

    .line 282
    new-instance v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;

    invoke-direct {v0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;-><init>([I[B)V

    .line 283
    .local v0, "parser":Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;
    invoke-virtual {v0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result v1

    return v1
.end method
