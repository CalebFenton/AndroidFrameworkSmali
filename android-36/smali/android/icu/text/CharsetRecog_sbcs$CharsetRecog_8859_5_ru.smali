.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_5_ru"
.end annotation


# static fields
.field private static blacklist ngrams:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 594
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    return-void

    :array_a
    .array-data 4
        0x20d220
        0x20d2de
        0x20d4de
        0x20d7d0
        0x20d820
        0x20dad0
        0x20dade
        0x20ddd0
        0x20ddd5
        0x20ded1
        0x20dfde
        0x20dfe0
        0x20e0d0
        0x20e1de
        0x20e1e2
        0x20e2de
        0x20e7e2
        0x20ede2
        0xd0ddd8
        0xd0e2ec
        0xd3de20
        0xd5dbec
        0xd5ddd8
        0xd5e1e2
        0xd5e220
        0xd820df
        0xd8d520
        0xd8d820
        0xd8ef20
        0xdbd5dd
        0xdbd820
        0xdbecdd
        0xddd020
        0xddd520
        0xddd8d5
        0xddd8ef
        0xddde20
        0xddded2
        0xde20d2
        0xde20df
        0xde20e1
        0xded220
        0xded2d0
        0xded3de
        0xded920
        0xdedbec
        0xdedc20
        0xdee1e2
        0xdfdedb
        0xdfe0d5
        0xdfe0d8
        0xdfe0de
        0xe0d0d2
        0xe0d5d4
        0xe1e2d0
        0xe1e2d2
        0xe1e2d8
        0xe1ef20
        0xe2d5db
        0xe2de20
        0xe2dee0
        0xe2ec20
        0xe7e2de
        0xebe520
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 592
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 604
    const-string v0, "ru"

    return-object v0
.end method

.method public blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 610
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    move-result v0

    .line 611
    .local v0, "confidence":I
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_11

    :cond_c
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_11
    return-object v1
.end method
