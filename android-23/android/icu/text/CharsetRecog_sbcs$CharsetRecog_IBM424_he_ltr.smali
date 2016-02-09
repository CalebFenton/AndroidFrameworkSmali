.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_IBM424_he_ltr"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1124
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->ngrams:[I

    #@9
    .line 1118
    return-void

    #@a
    .line 1124
    :array_0
    .array-data 4
        0x404146
        0x404154
        0x404551
        0x404554
        0x404556
        0x404558
        0x405158
        0x405462
        0x405469
        0x405546
        0x405551
        0x405746
        0x405751
        0x406846
        0x406851
        0x407141
        0x407146
        0x407151
        0x414045
        0x414054
        0x414055
        0x414071
        0x414540
        0x414645
        0x415440    # 5.99953E-39f
        0x415640    # 6.000248E-39f
        0x424045
        0x424055
        0x424071
        0x454045
        0x454051
        0x454054
        0x454055
        0x454057
        0x454068
        0x454071
        0x455440
        0x464140
        0x464540
        0x484140
        0x514140
        0x514240
        0x514540
        0x544045
        0x544055
        0x544071
        0x546240
        0x546940
        0x555151
        0x555158
        0x555168
        0x564045
        0x564055
        0x564071
        0x564240
        0x564540
        0x624540
        0x694045
        0x694055
        0x694071
        0x694540
        0x714140
        0x714540
        0x714651
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1118
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1122
    const-string/jumbo v0, "IBM424_ltr"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 1133
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->ngrams:[I

    #@2
    sget-object v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->byteMap:[B

    #@4
    const/16 v3, 0x40

    #@6
    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->match(Landroid/icu/text/CharsetDetector;[I[BB)I

    #@9
    move-result v0

    #@a
    .line 1134
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
