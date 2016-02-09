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
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 584
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    #@9
    .line 582
    return-void

    #@a
    .line 584
    :array_0
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

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 582
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 593
    const-string/jumbo v0, "ru"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 598
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->ngrams:[I

    #@2
    sget-object v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->byteMap:[B

    #@4
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@7
    move-result v0

    #@8
    .line 599
    .local v0, "confidence":I
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    #@e
    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@11
    goto :goto_0
.end method
