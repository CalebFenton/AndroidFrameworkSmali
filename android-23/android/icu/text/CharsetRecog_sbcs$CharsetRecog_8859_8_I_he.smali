.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_8_I_he"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 777
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;->ngrams:[I

    #@9
    .line 775
    return-void

    #@a
    .line 777
    :array_0
    .array-data 4
        0x20e0e5
        0x20e0e7
        0x20e0e9
        0x20e0fa
        0x20e1e9
        0x20e1ee
        0x20e4e0
        0x20e4e5
        0x20e4e9
        0x20e4ee
        0x20e4f2
        0x20e4f9
        0x20e4fa
        0x20ece0
        0x20ece4
        0x20eee0
        0x20f2ec
        0x20f9ec
        0xe0fa20
        0xe420e0
        0xe420e1
        0xe420e4
        0xe420ec
        0xe420ee
        0xe420f9
        0xe4e5e0
        0xe5e020
        0xe5ed20
        0xe5ef20
        0xe5f820
        0xe5fa20
        0xe920e4
        0xe9e420
        0xe9e5fa
        0xe9e9ed
        0xe9ed20
        0xe9ef20
        0xe9f820
        0xe9fa20
        0xec20e0
        0xec20e4
        0xece020
        0xece420
        0xed20e0
        0xed20e1
        0xed20e4
        0xed20ec
        0xed20ee
        0xed20f9
        0xeee420
        0xef20e4
        0xf0e420
        0xf0e920
        0xf0e9ed
        0xf2ec20
        0xf820e4
        0xf8e9ed
        0xf9ec20
        0xfa20e0
        0xfa20e1
        0xfa20e4
        0xfa20ec
        0xfa20ee
        0xfa20f9
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 775
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 791
    const-string/jumbo v0, "he"

    #@3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 786
    const-string/jumbo v0, "ISO-8859-8-I"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 6
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 796
    iget-boolean v0, p1, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v4, "windows-1255"

    #@7
    .line 797
    .local v4, "name":Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;->ngrams:[I

    #@9
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;->byteMap:[B

    #@b
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@e
    move-result v3

    #@f
    .line 798
    .local v3, "confidence":I
    if-nez v3, :cond_1

    #@11
    const/4 v0, 0x0

    #@12
    :goto_1
    return-object v0

    #@13
    .line 796
    .end local v3    # "confidence":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "ISO-8859-8-I"

    #@16
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 798
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
