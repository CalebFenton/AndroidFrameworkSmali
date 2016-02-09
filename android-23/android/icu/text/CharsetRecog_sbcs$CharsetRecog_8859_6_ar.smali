.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_6_ar"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 648
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->ngrams:[I

    #@9
    .line 646
    return-void

    #@a
    .line 648
    :array_0
    .array-data 4
        0x20c7e4
        0x20c7e6
        0x20c8c7
        0x20d9e4
        0x20e1ea
        0x20e4e4
        0x20e5e6
        0x20e8c7
        0xc720c7
        0xc7c120
        0xc7ca20
        0xc7d120
        0xc7e420
        0xc7e4c3
        0xc7e4c7
        0xc7e4c8
        0xc7e4ca
        0xc7e4cc
        0xc7e4cd
        0xc7e4cf
        0xc7e4d3
        0xc7e4d9
        0xc7e4e2
        0xc7e4e5
        0xc7e4e8
        0xc7e4ea
        0xc7e520
        0xc7e620
        0xc7e6ca
        0xc820c7
        0xc920c7
        0xc920e1
        0xc920e4
        0xc920e5
        0xc920e8
        0xca20c7
        0xcf20c7
        0xcfc920
        0xd120c7
        0xd1c920
        0xd320c7
        0xd920c7
        0xd9e4e9
        0xe1ea20
        0xe420c7
        0xe4c920
        0xe4e920
        0xe4ea20
        0xe520c7
        0xe5c720
        0xe5c920
        0xe5e620
        0xe620c7
        0xe720c7
        0xe7c720
        0xe8c7e4
        0xe8e620
        0xe920c7
        0xea20c7
        0xea20e5
        0xea20e8
        0xeac920
        0xead120
        0xeae620
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 657
    const-string/jumbo v0, "ar"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 662
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->ngrams:[I

    #@2
    sget-object v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->byteMap:[B

    #@4
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@7
    move-result v0

    #@8
    .line 663
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
