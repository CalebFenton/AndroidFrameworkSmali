.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;
.super Landroid/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_KOI8_R"
.end annotation


# static fields
.field private static byteMap:[B

.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1014
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;->ngrams:[I

    #@9
    .line 1021
    const/16 v0, 0x100

    #@b
    new-array v0, v0, [B

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;->byteMap:[B

    #@12
    .line 1012
    return-void

    #@13
    .line 1014
    nop

    #@14
    :array_0
    .array-data 4
        0x20c4cf
        0x20c920
        0x20cbc1
        0x20cbcf
        0x20cec1
        0x20cec5
        0x20cfc2
        0x20d0cf
        0x20d0d2
        0x20d2c1
        0x20d3cf
        0x20d3d4
        0x20d4cf
        0x20d720
        0x20d7cf
        0x20dac1
        0x20dcd4
        0x20ded4
        0xc1cec9
        0xc1d4d8
        0xc5ccd8
        0xc5cec9
        0xc5d3d4
        0xc5d420
        0xc7cf20
        0xc920d0
        0xc9c520
        0xc9c920
        0xc9d120
        0xccc5ce
        0xccc920
        0xccd8ce
        0xcec120
        0xcec520
        0xcec9c5
        0xcec9d1
        0xcecf20
        0xcecfd7
        0xcf20d0
        0xcf20d3
        0xcf20d7
        0xcfc7cf
        0xcfca20
        0xcfccd8
        0xcfcd20
        0xcfd3d4
        0xcfd720
        0xcfd7c1
        0xd0cfcc
        0xd0d2c5
        0xd0d2c9
        0xd0d2cf
        0xd2c1d7
        0xd2c5c4
        0xd3d120
        0xd3d4c1
        0xd3d4c9
        0xd3d4d7
        0xd4c5cc
        0xd4cf20
        0xd4cfd2
        0xd4d820
        0xd9c820    # 2.0000094E-38f
        0xded4cf
    .end array-data

    #@98
    .line 1021
    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x0t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x5dt
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x5dt
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
        -0x21t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
        -0x21t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1012
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1063
    const-string/jumbo v0, "ru"

    #@3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1058
    const-string/jumbo v0, "KOI8-R"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 1068
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;->ngrams:[I

    #@2
    sget-object v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;->byteMap:[B

    #@4
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@7
    move-result v0

    #@8
    .line 1069
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
