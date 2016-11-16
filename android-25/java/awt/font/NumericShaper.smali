.class public final Ljava/awt/font/NumericShaper;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/NumericShaper$Range;
    }
.end annotation


# static fields
.field public static final ALL_RANGES:I = 0x7ffff

.field public static final ARABIC:I = 0x2

.field private static final ARABIC_KEY:I = 0x1

.field public static final BENGALI:I = 0x10

.field private static final BENGALI_KEY:I = 0x4

.field private static final BSEARCH_THRESHOLD:I = 0x3

.field private static final CONTEXTUAL_MASK:I = -0x80000000

.field public static final DEVANAGARI:I = 0x8

.field private static final DEVANAGARI_KEY:I = 0x3

.field public static final EASTERN_ARABIC:I = 0x4

.field private static final EASTERN_ARABIC_KEY:I = 0x2

.field public static final ETHIOPIC:I = 0x10000

.field private static final ETHIOPIC_KEY:I = 0x10

.field public static final EUROPEAN:I = 0x1

.field private static final EUROPEAN_KEY:I = 0x0

.field public static final GUJARATI:I = 0x40

.field private static final GUJARATI_KEY:I = 0x6

.field public static final GURMUKHI:I = 0x20

.field private static final GURMUKHI_KEY:I = 0x5

.field public static final KANNADA:I = 0x400

.field private static final KANNADA_KEY:I = 0xa

.field public static final KHMER:I = 0x20000

.field private static final KHMER_KEY:I = 0x11

.field public static final LAO:I = 0x2000

.field private static final LAO_KEY:I = 0xd

.field public static final MALAYALAM:I = 0x800

.field private static final MALAYALAM_KEY:I = 0xb

.field public static final MONGOLIAN:I = 0x40000

.field private static final MONGOLIAN_KEY:I = 0x12

.field public static final MYANMAR:I = 0x8000

.field private static final MYANMAR_KEY:I = 0xf

.field private static final NUM_KEYS:I = 0x13

.field public static final ORIYA:I = 0x80

.field private static final ORIYA_KEY:I = 0x7

.field public static final TAMIL:I = 0x100

.field private static final TAMIL_KEY:I = 0x8

.field public static final TELUGU:I = 0x200

.field private static final TELUGU_KEY:I = 0x9

.field public static final THAI:I = 0x1000

.field private static final THAI_KEY:I = 0xc

.field public static final TIBETAN:I = 0x4000

.field private static final TIBETAN_KEY:I = 0xe

.field private static final bases:[C

.field private static final contexts:[C

.field private static ctCache:I = 0x0

.field private static ctCacheLimit:I = 0x0

.field private static final serialVersionUID:J = -0x6f5695fe5d200b84L

.field private static strongTable:[I


# instance fields
.field private volatile transient currentRange:Ljava/awt/font/NumericShaper$Range;

.field private key:I

.field private mask:I

.field private transient rangeArray:[Ljava/awt/font/NumericShaper$Range;

.field private transient rangeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation
.end field

.field private shapingRange:Ljava/awt/font/NumericShaper$Range;

.field private volatile transient stCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 498
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/awt/font/NumericShaper;->bases:[C

    #@9
    .line 522
    const/16 v0, 0x27

    #@b
    new-array v0, v0, [C

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    #@12
    .line 548
    const/4 v0, 0x0

    #@13
    sput v0, Ljava/awt/font/NumericShaper;->ctCache:I

    #@15
    .line 549
    sget-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    #@17
    array-length v0, v0

    #@18
    add-int/lit8 v0, v0, -0x2

    #@1a
    sput v0, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    #@1c
    .line 603
    const/16 v0, 0x234

    #@1e
    new-array v0, v0, [I

    #@20
    fill-array-data v0, :array_2

    #@23
    sput-object v0, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@25
    .line 136
    return-void

    #@26
    .line 498
    :array_0
    .array-data 2
        0x0s
        0x630s
        0x6c0s
        0x936s
        0x9b6s
        0xa36s
        0xab6s
        0xb36s
        0xbb6s
        0xc36s
        0xcb6s
        0xd36s
        0xe20s
        0xea0s
        0xef0s
        0x1010s
        0x1338s
        0x17b0s
        0x17e0s
    .end array-data

    #@3d
    .line 522
    nop

    #@3e
    :array_1
    .array-data 2
        0x0s
        0x300s
        0x600s
        0x780s
        0x600s
        0x780s
        0x900s
        0x980s
        0x980s
        0xa00s
        0xa00s
        0xa80s
        0xa80s
        0xb00s
        0xb00s
        0xb80s
        0xb80s
        0xc00s
        0xc00s
        0xc80s
        0xc80s
        0xd00s
        0xd00s
        0xd80s
        0xe00s
        0xe80s
        0xe80s
        0xf00s
        0xf00s
        0x1000s
        0x1000s
        0x1080s
        0x1200s
        0x1380s
        0x1780s
        0x1800s
        0x1800s
        0x1900s
        -0x1s
    .end array-data

    #@69
    .line 603
    nop

    #@6a
    :array_2
    .array-data 4
        0x0
        0x41
        0x5b
        0x61
        0x7b
        0xaa
        0xab
        0xb5
        0xb6
        0xba
        0xbb
        0xc0
        0xd7
        0xd8
        0xf7
        0xf8
        0x2b9
        0x2bb
        0x2c2
        0x2d0
        0x2d2
        0x2e0
        0x2e5
        0x2ee
        0x2ef
        0x370
        0x374
        0x376
        0x37e
        0x386
        0x387
        0x388
        0x3f6
        0x3f7
        0x483
        0x48a
        0x58a
        0x5be
        0x5bf
        0x5c0
        0x5c1
        0x5c3
        0x5c4
        0x5c6
        0x5c7
        0x5d0
        0x600
        0x608
        0x609
        0x60b
        0x60c
        0x60d
        0x60e
        0x61b
        0x64b
        0x66d
        0x670
        0x671
        0x6d6
        0x6e5
        0x6e7
        0x6ee
        0x6f0
        0x6fa
        0x70f
        0x710
        0x711
        0x712
        0x730
        0x74d
        0x7a6
        0x7b1
        0x7eb
        0x7f4
        0x7f6
        0x7fa
        0x816
        0x81a
        0x81b
        0x824
        0x825
        0x828
        0x829
        0x830
        0x859
        0x85e
        0x900
        0x903
        0x93a
        0x93b
        0x93c
        0x93d
        0x941
        0x949
        0x94d
        0x94e
        0x951
        0x958
        0x962
        0x964
        0x981
        0x982
        0x9bc
        0x9bd
        0x9c1
        0x9c7
        0x9cd
        0x9ce
        0x9e2
        0x9e6
        0x9f2
        0x9f4
        0x9fb
        0xa03
        0xa3c
        0xa3e
        0xa41
        0xa59
        0xa70
        0xa72
        0xa75
        0xa83
        0xabc
        0xabd
        0xac1
        0xac9
        0xacd
        0xad0
        0xae2
        0xae6
        0xaf1
        0xb02
        0xb3c
        0xb3d
        0xb3f
        0xb40
        0xb41
        0xb47
        0xb4d
        0xb57
        0xb62
        0xb66
        0xb82
        0xb83
        0xbc0
        0xbc1
        0xbcd
        0xbd0
        0xbf3
        0xc01
        0xc3e
        0xc41
        0xc46
        0xc58
        0xc62
        0xc66
        0xc78
        0xc7f
        0xcbc
        0xcbd
        0xccc
        0xcd5
        0xce2
        0xce6
        0xd41
        0xd46
        0xd4d
        0xd4e
        0xd62
        0xd66
        0xdca
        0xdcf
        0xdd2
        0xdd8
        0xe31
        0xe32
        0xe34
        0xe40
        0xe47
        0xe4f
        0xeb1
        0xeb2
        0xeb4
        0xebd
        0xec8
        0xed0
        0xf18
        0xf1a
        0xf35
        0xf36
        0xf37
        0xf38
        0xf39
        0xf3e
        0xf71
        0xf7f
        0xf80
        0xf85
        0xf86
        0xf88
        0xf8d
        0xfbe
        0xfc6
        0xfc7
        0x102d
        0x1031
        0x1032
        0x1038
        0x1039
        0x103b
        0x103d
        0x103f
        0x1058
        0x105a
        0x105e
        0x1061
        0x1071
        0x1075
        0x1082
        0x1083
        0x1085
        0x1087
        0x108d
        0x108e
        0x109d
        0x109e
        0x135d
        0x1360
        0x1390
        0x13a0
        0x1400
        0x1401
        0x1680
        0x1681
        0x169b
        0x16a0
        0x1712
        0x1720
        0x1732
        0x1735
        0x1752
        0x1760
        0x1772
        0x1780
        0x17b7
        0x17be
        0x17c6
        0x17c7
        0x17c9
        0x17d4
        0x17db
        0x17dc
        0x17dd
        0x17e0
        0x17f0
        0x1810
        0x18a9
        0x18aa
        0x1920
        0x1923
        0x1927
        0x1929
        0x1932
        0x1933
        0x1939
        0x1946
        0x19de
        0x1a00
        0x1a17
        0x1a19
        0x1a56
        0x1a57
        0x1a58
        0x1a61
        0x1a62
        0x1a63
        0x1a65
        0x1a6d
        0x1a73
        0x1a80
        0x1b00
        0x1b04
        0x1b34
        0x1b35
        0x1b36
        0x1b3b
        0x1b3c
        0x1b3d
        0x1b42
        0x1b43
        0x1b6b
        0x1b74
        0x1b80
        0x1b82
        0x1ba2
        0x1ba6
        0x1ba8
        0x1baa
        0x1be6    # 1.0008E-41f
        0x1be7    # 1.001E-41f
        0x1be8
        0x1bea
        0x1bed
        0x1bee
        0x1bef
        0x1bf2
        0x1c2c
        0x1c34
        0x1c36
        0x1c3b
        0x1cd0
        0x1cd3
        0x1cd4
        0x1ce1
        0x1ce2
        0x1ce9
        0x1ced
        0x1cee
        0x1dc0
        0x1e00
        0x1fbd
        0x1fbe
        0x1fbf
        0x1fc2
        0x1fcd
        0x1fd0
        0x1fdd
        0x1fe0
        0x1fed
        0x1ff2
        0x1ffd
        0x200e
        0x2010
        0x2071
        0x2074
        0x207f
        0x2080
        0x2090
        0x20a0
        0x2102
        0x2103
        0x2107
        0x2108
        0x210a
        0x2114
        0x2115
        0x2116
        0x2119
        0x211e
        0x2124
        0x2125
        0x2126
        0x2127
        0x2128
        0x2129
        0x212a
        0x212e
        0x212f
        0x213a
        0x213c
        0x2140
        0x2145
        0x214a
        0x214e
        0x2150
        0x2160
        0x2189
        0x2336
        0x237b
        0x2395
        0x2396
        0x249c
        0x24ea
        0x26ac
        0x26ad
        0x2800
        0x2900
        0x2c00
        0x2ce5
        0x2ceb
        0x2cef
        0x2d00
        0x2d7f
        0x2d80
        0x2de0
        0x3005
        0x3008
        0x3021
        0x302a
        0x3031
        0x3036
        0x3038
        0x303d
        0x3041
        0x3099
        0x309d
        0x30a0
        0x30a1
        0x30fb
        0x30fc
        0x31c0
        0x31f0
        0x321d
        0x3220
        0x3250
        0x3260
        0x327c
        0x327f
        0x32b1
        0x32c0
        0x32cc
        0x32d0
        0x3377
        0x337b
        0x33de
        0x33e0
        0x33ff
        0x3400
        0x4dc0
        0x4e00
        0xa490
        0xa4d0
        0xa60d
        0xa610
        0xa66f
        0xa680
        0xa6f0
        0xa6f2
        0xa700
        0xa722
        0xa788
        0xa789
        0xa802
        0xa803
        0xa806
        0xa807
        0xa80b
        0xa80c
        0xa825
        0xa827
        0xa828
        0xa830
        0xa838
        0xa840
        0xa874
        0xa880
        0xa8c4
        0xa8ce
        0xa8e0
        0xa8f2
        0xa926
        0xa92e
        0xa947
        0xa952
        0xa980
        0xa983
        0xa9b3
        0xa9b4
        0xa9b6
        0xa9ba
        0xa9bc
        0xa9bd
        0xaa29
        0xaa2f
        0xaa31
        0xaa33
        0xaa35
        0xaa40
        0xaa43
        0xaa44
        0xaa4c
        0xaa4d
        0xaab0
        0xaab1
        0xaab2
        0xaab5
        0xaab7
        0xaab9
        0xaabe
        0xaac0
        0xaac1
        0xaac2
        0xabe5
        0xabe6
        0xabe8
        0xabe9
        0xabed
        0xabf0
        0xfb1e
        0xfb1f
        0xfb29
        0xfb2a
        0xfd3e
        0xfd50
        0xfdfd
        0xfe70
        0xfeff
        0xff21
        0xff3b
        0xff41
        0xff5b
        0xff66
        0xffe0
        0x10000
        0x10101
        0x10102
        0x10140
        0x101d0
        0x101fd
        0x10280
        0x1091f
        0x10920
        0x10a01
        0x10a10
        0x10a38
        0x10a40
        0x10b39
        0x10b40
        0x10e60
        0x11000
        0x11001
        0x11002
        0x11038
        0x11047
        0x11052
        0x11066
        0x11080
        0x11082
        0x110b3
        0x110b7
        0x110b9
        0x110bb
        0x1d167
        0x1d16a
        0x1d173
        0x1d183
        0x1d185
        0x1d18c
        0x1d1aa
        0x1d1ae
        0x1d200
        0x1d360
        0x1d6db
        0x1d6dc
        0x1d715
        0x1d716
        0x1d74f
        0x1d750
        0x1d789
        0x1d78a
        0x1d7c3
        0x1d7c4
        0x1d7ce
        0x1f110
        0x1f300
        0x1f48c
        0x1f48d
        0x1f524
        0x1f525
        0x20000
        0xe0001
        0xf0000
        0x10fffe
        0x10ffff
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 564
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@5
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    #@7
    .line 891
    const/4 v0, 0x0

    #@8
    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    #@a
    .line 1036
    iput p1, p0, Ljava/awt/font/NumericShaper;->key:I

    #@c
    .line 1037
    iput p2, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@e
    .line 1035
    return-void
.end method

.method private constructor <init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
    .locals 2
    .param p1, "defaultContext"    # Ljava/awt/font/NumericShaper$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/font/NumericShaper$Range;",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1040
    .local p2, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 564
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@5
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    #@7
    .line 891
    const/4 v0, 0x0

    #@8
    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    #@a
    .line 1041
    iput-object p1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@c
    .line 1042
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@12
    .line 1046
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@14
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@16
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 1047
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@1e
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@20
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 1046
    if-eqz v0, :cond_0

    #@26
    .line 1048
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@28
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    #@2a
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2d
    .line 1053
    :cond_0
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@2f
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    #@31
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 1054
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@39
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    #@3b
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    .line 1053
    if-eqz v0, :cond_1

    #@41
    .line 1055
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@43
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    #@45
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@48
    .line 1058
    :cond_1
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@4a
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@4c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@4f
    move-result v1

    #@50
    new-array v1, v1, [Ljava/awt/font/NumericShaper$Range;

    #@52
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, [Ljava/awt/font/NumericShaper$Range;

    #@58
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    #@5a
    .line 1059
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    #@5c
    array-length v0, v0

    #@5d
    const/4 v1, 0x3

    #@5e
    if-le v0, v1, :cond_2

    #@60
    .line 1061
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    #@62
    .line 1062
    new-instance v1, Ljava/awt/font/NumericShaper$1;

    #@64
    invoke-direct {v1, p0}, Ljava/awt/font/NumericShaper$1;-><init>(Ljava/awt/font/NumericShaper;)V

    #@67
    .line 1061
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@6a
    .line 1040
    :cond_2
    return-void
.end method

.method private checkParams([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1168
    if-nez p1, :cond_0

    #@2
    .line 1169
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "text is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1171
    :cond_0
    if-ltz p2, :cond_1

    #@d
    .line 1172
    array-length v0, p1

    #@e
    if-le p2, v0, :cond_2

    #@10
    .line 1175
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "bad start or count for text of length "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    array-length v2, p1

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1175
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1173
    :cond_2
    add-int v0, p2, p3

    #@2d
    if-ltz v0, :cond_1

    #@2f
    .line 1174
    add-int v0, p2, p3

    #@31
    array-length v1, p1

    #@32
    if-gt v0, v1, :cond_1

    #@34
    .line 1167
    return-void
.end method

.method private static getContextKey(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 553
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    #@3
    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    #@5
    aget-char v1, v1, v2

    #@7
    if-ge p0, v1, :cond_0

    #@9
    .line 554
    :goto_0
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@b
    if-lez v1, :cond_1

    #@d
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    #@f
    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    #@11
    aget-char v1, v1, v2

    #@13
    if-ge p0, v1, :cond_1

    #@15
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@1b
    goto :goto_0

    #@1c
    .line 555
    :cond_0
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    #@1e
    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    aget-char v1, v1, v2

    #@24
    if-lt p0, v1, :cond_1

    #@26
    .line 556
    :goto_1
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@28
    sget v2, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    #@2a
    if-ge v1, v2, :cond_1

    #@2c
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    #@2e
    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    aget-char v1, v1, v2

    #@34
    if-lt p0, v1, :cond_1

    #@36
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@38
    add-int/lit8 v1, v1, 0x1

    #@3a
    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@3c
    goto :goto_1

    #@3d
    .line 560
    :cond_1
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    #@3f
    and-int/lit8 v1, v1, 0x1

    #@41
    if-nez v1, :cond_2

    #@43
    sget v0, Ljava/awt/font/NumericShaper;->ctCache:I

    #@45
    div-int/lit8 v0, v0, 0x2

    #@47
    :cond_2
    return v0
.end method

.method public static getContextualShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I

    #@0
    .prologue
    .line 960
    const/high16 v0, -0x80000000

    #@2
    or-int/2addr p0, v0

    #@3
    .line 961
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    #@9
    return-object v0
.end method

.method public static getContextualShaper(II)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I
    .param p1, "defaultContext"    # I

    #@0
    .prologue
    .line 1002
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    #@3
    move-result v0

    #@4
    .line 1003
    .local v0, "key":I
    const/high16 v1, -0x80000000

    #@6
    or-int/2addr p0, v1

    #@7
    .line 1004
    new-instance v1, Ljava/awt/font/NumericShaper;

    #@9
    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    #@c
    return-object v1
.end method

.method public static getContextualShaper(Ljava/util/Set;)Ljava/awt/font/NumericShaper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    #@0
    .prologue
    .line 981
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@2
    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@4
    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    #@7
    .line 982
    .local v0, "shaper":Ljava/awt/font/NumericShaper;
    const/high16 v1, -0x80000000

    #@9
    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    #@b
    .line 983
    return-object v0
.end method

.method public static getContextualShaper(Ljava/util/Set;Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p1, "defaultContext"    # Ljava/awt/font/NumericShaper$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;",
            "Ljava/awt/font/NumericShaper$Range;",
            ")",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    if-nez p1, :cond_0

    #@2
    .line 1025
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1027
    :cond_0
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@a
    invoke-direct {v0, p1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    #@d
    .line 1028
    .local v0, "shaper":Ljava/awt/font/NumericShaper;
    const/high16 v1, -0x80000000

    #@f
    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    #@11
    .line 1029
    return-object v0
.end method

.method private static getHighBit(I)I
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1427
    if-gtz p0, :cond_0

    #@2
    .line 1428
    const/16 v1, -0x20

    #@4
    return v1

    #@5
    .line 1431
    :cond_0
    const/4 v0, 0x0

    #@6
    .line 1433
    .local v0, "bit":I
    const/high16 v1, 0x10000

    #@8
    if-lt p0, v1, :cond_1

    #@a
    .line 1434
    shr-int/lit8 p0, p0, 0x10

    #@c
    .line 1435
    const/16 v0, 0x10

    #@e
    .line 1438
    :cond_1
    const/16 v1, 0x100

    #@10
    if-lt p0, v1, :cond_2

    #@12
    .line 1439
    shr-int/lit8 p0, p0, 0x8

    #@14
    .line 1440
    add-int/lit8 v0, v0, 0x8

    #@16
    .line 1443
    :cond_2
    const/16 v1, 0x10

    #@18
    if-lt p0, v1, :cond_3

    #@1a
    .line 1444
    shr-int/lit8 p0, p0, 0x4

    #@1c
    .line 1445
    add-int/lit8 v0, v0, 0x4

    #@1e
    .line 1448
    :cond_3
    const/4 v1, 0x4

    #@1f
    if-lt p0, v1, :cond_4

    #@21
    .line 1449
    shr-int/lit8 p0, p0, 0x2

    #@23
    .line 1450
    add-int/lit8 v0, v0, 0x2

    #@25
    .line 1453
    :cond_4
    const/4 v1, 0x2

    #@26
    if-lt p0, v1, :cond_5

    #@28
    .line 1454
    add-int/lit8 v0, v0, 0x1

    #@2a
    .line 1457
    :cond_5
    return v0
.end method

.method private static getKeyFromMask(I)I
    .locals 4
    .param p0, "mask"    # I

    #@0
    .prologue
    const/16 v3, 0x13

    #@2
    const/4 v2, 0x1

    #@3
    .line 907
    const/4 v0, 0x0

    #@4
    .line 908
    .local v0, "key":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@6
    shl-int v1, v2, v0

    #@8
    and-int/2addr v1, p0

    #@9
    if-nez v1, :cond_0

    #@b
    .line 909
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 911
    :cond_0
    if-eq v0, v3, :cond_1

    #@10
    shl-int v1, v2, v0

    #@12
    not-int v1, v1

    #@13
    and-int/2addr v1, p0

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 912
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "invalid shaper: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 914
    :cond_2
    return v0
.end method

.method public static getShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "singleRange"    # I

    #@0
    .prologue
    .line 926
    invoke-static {p0}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    #@3
    move-result v0

    #@4
    .line 927
    .local v0, "key":I
    new-instance v1, Ljava/awt/font/NumericShaper;

    #@6
    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    #@9
    return-object v1
.end method

.method public static getShaper(Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "singleRange"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    .line 942
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@2
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    #@9
    return-object v0
.end method

.method private isStrongDirectional(C)Z
    .locals 5
    .param p1, "c"    # C

    #@0
    .prologue
    .line 894
    iget v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    #@2
    .line 895
    .local v0, "cachedIndex":I
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@4
    aget v2, v2, v0

    #@6
    if-ge p1, v2, :cond_1

    #@8
    .line 896
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@a
    const/4 v3, 0x0

    #@b
    invoke-static {p1, v2, v3, v0}, Ljava/awt/font/NumericShaper;->search(I[III)I

    #@e
    move-result v0

    #@f
    .line 901
    :cond_0
    :goto_0
    and-int/lit8 v2, v0, 0x1

    #@11
    const/4 v3, 0x1

    #@12
    if-ne v2, v3, :cond_2

    #@14
    const/4 v1, 0x1

    #@15
    .line 902
    .local v1, "val":Z
    :goto_1
    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    #@17
    .line 903
    return v1

    #@18
    .line 897
    .end local v1    # "val":Z
    :cond_1
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@1a
    add-int/lit8 v3, v0, 0x1

    #@1c
    aget v2, v2, v3

    #@1e
    if-lt p1, v2, :cond_0

    #@20
    .line 898
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@22
    add-int/lit8 v3, v0, 0x1

    #@24
    .line 899
    sget-object v4, Ljava/awt/font/NumericShaper;->strongTable:[I

    #@26
    array-length v4, v4

    #@27
    sub-int/2addr v4, v0

    #@28
    add-int/lit8 v4, v4, -0x1

    #@2a
    .line 898
    invoke-static {p1, v2, v3, v4}, Ljava/awt/font/NumericShaper;->search(I[III)I

    #@2d
    move-result v0

    #@2e
    goto :goto_0

    #@2f
    .line 901
    :cond_2
    const/4 v1, 0x0

    #@30
    .restart local v1    # "val":Z
    goto :goto_1
.end method

.method private rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;
    .locals 8
    .param p1, "codepoint"    # I

    #@0
    .prologue
    .line 567
    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    #@2
    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 568
    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    #@a
    return-object v6

    #@b
    .line 571
    :cond_0
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    #@d
    .line 572
    .local v5, "ranges":[Ljava/awt/font/NumericShaper$Range;
    array-length v6, v5

    #@e
    const/4 v7, 0x3

    #@f
    if-le v6, v7, :cond_3

    #@11
    .line 573
    const/4 v2, 0x0

    #@12
    .line 574
    .local v2, "lo":I
    array-length v6, v5

    #@13
    add-int/lit8 v0, v6, -0x1

    #@15
    .line 575
    .local v0, "hi":I
    :goto_0
    if-gt v2, v0, :cond_5

    #@17
    .line 576
    add-int v6, v2, v0

    #@19
    div-int/lit8 v3, v6, 0x2

    #@1b
    .line 577
    .local v3, "mid":I
    aget-object v4, v5, v3

    #@1d
    .line 578
    .local v4, "range":Ljava/awt/font/NumericShaper$Range;
    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get2(Ljava/awt/font/NumericShaper$Range;)I

    #@20
    move-result v6

    #@21
    if-ge p1, v6, :cond_1

    #@23
    .line 579
    add-int/lit8 v0, v3, -0x1

    #@25
    goto :goto_0

    #@26
    .line 580
    :cond_1
    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get1(Ljava/awt/font/NumericShaper$Range;)I

    #@29
    move-result v6

    #@2a
    if-lt p1, v6, :cond_2

    #@2c
    .line 581
    add-int/lit8 v2, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 583
    :cond_2
    iput-object v4, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    #@31
    .line 584
    return-object v4

    #@32
    .line 588
    .end local v0    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "mid":I
    .end local v4    # "range":Ljava/awt/font/NumericShaper$Range;
    :cond_3
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_1
    array-length v6, v5

    #@34
    if-ge v1, v6, :cond_5

    #@36
    .line 589
    aget-object v6, v5, v1

    #@38
    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_4

    #@3e
    .line 590
    aget-object v6, v5, v1

    #@40
    return-object v6

    #@41
    .line 588
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_1

    #@44
    .line 594
    .end local v1    # "i":I
    :cond_5
    sget-object v6, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@46
    return-object v6
.end method

.method private static search(I[III)I
    .locals 6
    .param p0, "value"    # I
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1465
    invoke-static {p3}, Ljava/awt/font/NumericShaper;->getHighBit(I)I

    #@4
    move-result v4

    #@5
    shl-int v2, v5, v4

    #@7
    .line 1466
    .local v2, "power":I
    sub-int v0, p3, v2

    #@9
    .line 1467
    .local v0, "extra":I
    move v3, v2

    #@a
    .line 1468
    .local v3, "probe":I
    move v1, p2

    #@b
    .line 1470
    .local v1, "index":I
    add-int v4, p2, v0

    #@d
    aget v4, p1, v4

    #@f
    if-lt p0, v4, :cond_0

    #@11
    .line 1471
    add-int v1, p2, v0

    #@13
    .line 1474
    :cond_0
    :goto_0
    if-le v3, v5, :cond_1

    #@15
    .line 1475
    shr-int/lit8 v3, v3, 0x1

    #@17
    .line 1477
    add-int v4, v1, v3

    #@19
    aget v4, p1, v4

    #@1b
    if-lt p0, v4, :cond_0

    #@1d
    .line 1478
    add-int/2addr v1, v3

    #@1e
    goto :goto_0

    #@1f
    .line 1482
    :cond_1
    return v1
.end method

.method private declared-synchronized shapeContextually([CIII)V
    .locals 10
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "ctxKey"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1253
    :try_start_0
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@3
    const/4 v8, 0x1

    #@4
    shl-int/2addr v8, p4

    #@5
    and-int/2addr v7, v8

    #@6
    if-nez v7, :cond_0

    #@8
    .line 1254
    const/4 p4, 0x0

    #@9
    .line 1256
    :cond_0
    move v4, p4

    #@a
    .line 1258
    .local v4, "lastkey":I
    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    #@c
    aget-char v0, v7, p4

    #@e
    .line 1259
    .local v0, "base":I
    const/16 v7, 0x10

    #@10
    if-ne p4, v7, :cond_5

    #@12
    const/16 v5, 0x31

    #@14
    .line 1261
    .local v5, "minDigit":C
    :goto_0
    const-class v8, Ljava/awt/font/NumericShaper;

    #@16
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    .line 1262
    move v3, p2

    #@18
    .local v3, "i":I
    add-int v2, p2, p3

    #@1a
    .local v2, "e":I
    :goto_1
    if-ge v3, v2, :cond_a

    #@1c
    .line 1263
    :try_start_1
    aget-char v1, p1, v3

    #@1e
    .line 1264
    .local v1, "c":C
    if-lt v1, v5, :cond_1

    #@20
    const/16 v7, 0x39

    #@22
    if-gt v1, v7, :cond_1

    #@24
    .line 1265
    add-int v7, v1, v0

    #@26
    int-to-char v7, v7

    #@27
    aput-char v7, p1, v3

    #@29
    .line 1268
    :cond_1
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_4

    #@2f
    .line 1269
    invoke-static {v1}, Ljava/awt/font/NumericShaper;->getContextKey(C)I

    #@32
    move-result v6

    #@33
    .line 1270
    .local v6, "newkey":I
    if-eq v6, v4, :cond_4

    #@35
    .line 1271
    move v4, v6

    #@36
    .line 1273
    move p4, v6

    #@37
    .line 1274
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@39
    and-int/lit8 v7, v7, 0x4

    #@3b
    if-eqz v7, :cond_6

    #@3d
    .line 1275
    const/4 v7, 0x1

    #@3e
    if-eq v6, v7, :cond_2

    #@40
    .line 1276
    const/4 v7, 0x2

    #@41
    if-ne v6, v7, :cond_6

    #@43
    .line 1277
    :cond_2
    const/4 p4, 0x2

    #@44
    .line 1286
    :cond_3
    :goto_2
    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    #@46
    aget-char v0, v7, p4

    #@48
    .line 1288
    const/16 v7, 0x10

    #@4a
    if-ne p4, v7, :cond_9

    #@4c
    const/16 v5, 0x31

    #@4e
    .line 1262
    .end local v6    # "newkey":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_1

    #@51
    .line 1259
    .end local v1    # "c":C
    .end local v2    # "e":I
    .end local v3    # "i":I
    .end local v5    # "minDigit":C
    :cond_5
    const/16 v5, 0x30

    #@53
    .restart local v5    # "minDigit":C
    goto :goto_0

    #@54
    .line 1278
    .restart local v1    # "c":C
    .restart local v2    # "e":I
    .restart local v3    # "i":I
    .restart local v6    # "newkey":I
    :cond_6
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@56
    and-int/lit8 v7, v7, 0x2

    #@58
    if-eqz v7, :cond_8

    #@5a
    .line 1279
    const/4 v7, 0x1

    #@5b
    if-eq v6, v7, :cond_7

    #@5d
    .line 1280
    const/4 v7, 0x2

    #@5e
    if-ne v6, v7, :cond_8

    #@60
    .line 1281
    :cond_7
    const/4 p4, 0x1

    #@61
    goto :goto_2

    #@62
    .line 1282
    :cond_8
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    const/4 v9, 0x1

    #@65
    shl-int/2addr v9, v6

    #@66
    and-int/2addr v7, v9

    #@67
    if-nez v7, :cond_3

    #@69
    .line 1283
    const/4 p4, 0x0

    #@6a
    goto :goto_2

    #@6b
    .line 1288
    :cond_9
    const/16 v5, 0x30

    #@6d
    goto :goto_3

    #@6e
    .end local v1    # "c":C
    .end local v6    # "newkey":I
    :cond_a
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6f
    monitor-exit p0

    #@70
    .line 1250
    return-void

    #@71
    .line 1261
    :catchall_0
    move-exception v7

    #@72
    :try_start_3
    monitor-exit v8

    #@73
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@74
    .end local v0    # "base":I
    .end local v2    # "e":I
    .end local v3    # "i":I
    .end local v4    # "lastkey":I
    .end local v5    # "minDigit":C
    :catchall_1
    move-exception v7

    #@75
    monitor-exit p0

    #@76
    throw v7
.end method

.method private shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "ctxKey"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    .line 1297
    if-eqz p4, :cond_1

    #@2
    iget-object v6, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@4
    invoke-interface {v6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 1301
    :goto_0
    move-object v4, p4

    #@b
    .line 1302
    .local v4, "lastKey":Ljava/awt/font/NumericShaper$Range;
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    #@e
    move-result v0

    #@f
    .line 1303
    .local v0, "base":I
    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    #@12
    move-result v6

    #@13
    add-int/lit8 v6, v6, 0x30

    #@15
    int-to-char v5, v6

    #@16
    .line 1304
    .local v5, "minDigit":C
    add-int v2, p2, p3

    #@18
    .line 1305
    .local v2, "end":I
    move v3, p2

    #@19
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    #@1b
    .line 1306
    aget-char v1, p1, v3

    #@1d
    .line 1307
    .local v1, "c":C
    if-lt v1, v5, :cond_2

    #@1f
    const/16 v6, 0x39

    #@21
    if-gt v1, v6, :cond_2

    #@23
    .line 1308
    add-int v6, v1, v0

    #@25
    int-to-char v6, v6

    #@26
    aput-char v6, p1, v3

    #@28
    .line 1305
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1298
    .end local v0    # "base":I
    .end local v1    # "c":C
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "lastKey":Ljava/awt/font/NumericShaper$Range;
    .end local v5    # "minDigit":C
    :cond_1
    sget-object p4, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    #@2d
    goto :goto_0

    #@2e
    .line 1311
    .restart local v0    # "base":I
    .restart local v1    # "c":C
    .restart local v2    # "end":I
    .restart local v3    # "i":I
    .restart local v4    # "lastKey":Ljava/awt/font/NumericShaper$Range;
    .restart local v5    # "minDigit":C
    :cond_2
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_0

    #@34
    .line 1312
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;

    #@37
    move-result-object p4

    #@38
    .line 1313
    if-eq p4, v4, :cond_0

    #@3a
    .line 1314
    move-object v4, p4

    #@3b
    .line 1315
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    #@3e
    move-result v0

    #@3f
    .line 1316
    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    #@42
    move-result v6

    #@43
    add-int/lit8 v6, v6, 0x30

    #@45
    int-to-char v5, v6

    #@46
    goto :goto_2

    #@47
    .line 1295
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method private shapeNonContextually([CII)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1228
    const/16 v4, 0x30

    #@2
    .line 1229
    .local v4, "minDigit":C
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@4
    if-eqz v5, :cond_2

    #@6
    .line 1230
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@8
    invoke-static {v5}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    #@b
    move-result v0

    #@c
    .line 1231
    .local v0, "base":I
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@e
    invoke-virtual {v5}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    #@11
    move-result v5

    #@12
    add-int/lit8 v5, v5, 0x30

    #@14
    int-to-char v4, v5

    #@15
    .line 1238
    .end local v4    # "minDigit":C
    :cond_0
    :goto_0
    move v3, p2

    #@16
    .local v3, "i":I
    add-int v2, p2, p3

    #@18
    .local v2, "e":I
    :goto_1
    if-ge v3, v2, :cond_3

    #@1a
    .line 1239
    aget-char v1, p1, v3

    #@1c
    .line 1240
    .local v1, "c":C
    if-lt v1, v4, :cond_1

    #@1e
    const/16 v5, 0x39

    #@20
    if-gt v1, v5, :cond_1

    #@22
    .line 1241
    add-int v5, v1, v0

    #@24
    int-to-char v5, v5

    #@25
    aput-char v5, p1, v3

    #@27
    .line 1238
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1233
    .end local v0    # "base":I
    .end local v1    # "c":C
    .end local v2    # "e":I
    .end local v3    # "i":I
    .restart local v4    # "minDigit":C
    :cond_2
    sget-object v5, Ljava/awt/font/NumericShaper;->bases:[C

    #@2c
    iget v6, p0, Ljava/awt/font/NumericShaper;->key:I

    #@2e
    aget-char v0, v5, v6

    #@30
    .line 1234
    .restart local v0    # "base":I
    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    #@32
    const/16 v6, 0x10

    #@34
    if-ne v5, v6, :cond_0

    #@36
    .line 1235
    const/16 v5, 0x31

    #@38
    int-to-char v4, v5

    #@39
    .local v4, "minDigit":C
    goto :goto_0

    #@3a
    .line 1226
    .end local v4    # "minDigit":C
    .restart local v2    # "e":I
    .restart local v3    # "i":I
    :cond_3
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1496
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1497
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@6
    invoke-static {v1}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    #@9
    move-result v0

    #@a
    .line 1498
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@c
    .line 1499
    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@e
    .line 1502
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1503
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@14
    iget-object v2, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@16
    invoke-static {v2}, Ljava/awt/font/NumericShaper$Range;->-wrap3(Ljava/util/Set;)I

    #@19
    move-result v2

    #@1a
    or-int/2addr v1, v2

    #@1b
    iput v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@1d
    .line 1505
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@20
    .line 1495
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1358
    if-eqz p1, :cond_8

    #@4
    .line 1360
    :try_start_0
    move-object v0, p1

    #@5
    check-cast v0, Ljava/awt/font/NumericShaper;

    #@7
    move-object v2, v0

    #@8
    .line 1361
    .local v2, "rhs":Ljava/awt/font/NumericShaper;
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@a
    if-eqz v7, :cond_4

    #@c
    .line 1362
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@e
    if-eqz v7, :cond_2

    #@10
    .line 1363
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@13
    move-result v7

    #@14
    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@17
    move-result v8

    #@18
    if-ne v7, v8, :cond_1

    #@1a
    .line 1364
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@1c
    iget-object v8, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@1e
    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v7

    #@22
    .line 1363
    if-eqz v7, :cond_1

    #@24
    .line 1365
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@26
    iget-object v8, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@28
    if-ne v7, v8, :cond_0

    #@2a
    .line 1363
    :goto_0
    return v5

    #@2b
    :cond_0
    move v5, v6

    #@2c
    .line 1365
    goto :goto_0

    #@2d
    :cond_1
    move v5, v6

    #@2e
    .line 1363
    goto :goto_0

    #@2f
    .line 1367
    :cond_2
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@32
    move-result v7

    #@33
    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@36
    move-result v8

    #@37
    if-ne v7, v8, :cond_3

    #@39
    .line 1368
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@3b
    iget v8, v2, Ljava/awt/font/NumericShaper;->mask:I

    #@3d
    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    #@40
    move-result-object v8

    #@41
    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v7

    #@45
    .line 1367
    if-eqz v7, :cond_3

    #@47
    .line 1369
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@49
    iget v8, v2, Ljava/awt/font/NumericShaper;->key:I

    #@4b
    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    #@4e
    move-result-object v8

    #@4f
    if-ne v7, v8, :cond_3

    #@51
    move v6, v5

    #@52
    .line 1367
    :cond_3
    return v6

    #@53
    .line 1370
    :cond_4
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@55
    if-eqz v7, :cond_6

    #@57
    .line 1371
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@59
    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    #@5c
    move-result-object v3

    #@5d
    .line 1372
    .local v3, "rset":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    iget v7, p0, Ljava/awt/font/NumericShaper;->key:I

    #@5f
    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    #@62
    move-result-object v4

    #@63
    .line 1373
    .local v4, "srange":Ljava/awt/font/NumericShaper$Range;
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@66
    move-result v7

    #@67
    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@6a
    move-result v8

    #@6b
    if-ne v7, v8, :cond_5

    #@6d
    .line 1374
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@6f
    invoke-interface {v3, v7}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v7

    #@73
    .line 1373
    if-eqz v7, :cond_5

    #@75
    .line 1375
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@77
    if-ne v4, v7, :cond_5

    #@79
    move v6, v5

    #@7a
    .line 1373
    :cond_5
    return v6

    #@7b
    .line 1377
    .end local v3    # "rset":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    .end local v4    # "srange":Ljava/awt/font/NumericShaper$Range;
    :cond_6
    iget v7, v2, Ljava/awt/font/NumericShaper;->mask:I

    #@7d
    iget v8, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@7f
    if-ne v7, v8, :cond_7

    #@81
    iget v7, v2, Ljava/awt/font/NumericShaper;->key:I

    #@83
    iget v8, p0, Ljava/awt/font/NumericShaper;->key:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    if-ne v7, v8, :cond_7

    #@87
    move v6, v5

    #@88
    :cond_7
    return v6

    #@89
    .line 1379
    .end local v2    # "rhs":Ljava/awt/font/NumericShaper;
    :catch_0
    move-exception v1

    #@8a
    .line 1382
    :cond_8
    return v6
.end method

.method public getRangeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1217
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1218
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@6
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1220
    :cond_0
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@d
    invoke-static {v0}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getRanges()I
    .locals 2

    #@0
    .prologue
    .line 1206
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@2
    const v1, 0x7fffffff

    #@5
    and-int/2addr v0, v1

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1328
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@2
    .line 1329
    .local v0, "hash":I
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1333
    const/high16 v1, -0x80000000

    #@8
    and-int/2addr v0, v1

    #@9
    .line 1334
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@b
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    #@e
    move-result v1

    #@f
    xor-int/2addr v0, v1

    #@10
    .line 1336
    :cond_0
    return v0
.end method

.method public isContextual()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1187
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public shape([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1083
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    #@3
    .line 1084
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1085
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1086
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@f
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    #@12
    .line 1082
    :goto_0
    return-void

    #@13
    .line 1088
    :cond_0
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@15
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    #@18
    goto :goto_0

    #@19
    .line 1091
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    #@1c
    goto :goto_0
.end method

.method public shape([CIII)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # I

    #@0
    .prologue
    .line 1114
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    #@3
    .line 1115
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1116
    invoke-static {p4}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    #@c
    move-result v0

    #@d
    .line 1117
    .local v0, "ctxKey":I
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1118
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    #@14
    .line 1113
    .end local v0    # "ctxKey":I
    :goto_0
    return-void

    #@15
    .line 1120
    .restart local v0    # "ctxKey":I
    :cond_0
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    #@18
    move-result-object v1

    #@19
    aget-object v1, v1, v0

    #@1b
    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1123
    .end local v0    # "ctxKey":I
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    #@22
    goto :goto_0
.end method

.method public shape([CIILjava/awt/font/NumericShaper$Range;)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    .line 1146
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    #@3
    .line 1147
    if-nez p4, :cond_0

    #@5
    .line 1148
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "context is null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 1151
    :cond_0
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 1152
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1153
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    #@1b
    .line 1145
    :goto_0
    return-void

    #@1c
    .line 1155
    :cond_1
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    #@1f
    move-result v0

    #@20
    .line 1156
    .local v0, "key":I
    if-ltz v0, :cond_2

    #@22
    .line 1157
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    #@25
    goto :goto_0

    #@26
    .line 1159
    :cond_2
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@28
    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1163
    .end local v0    # "key":I
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    #@2f
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 1393
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "[contextual:"

    #@c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@13
    move-result v5

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    .line 1395
    const/4 v3, 0x0

    #@18
    .line 1396
    .local v3, "keyNames":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1397
    const-string/jumbo v4, ", context:"

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 1398
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@26
    if-nez v4, :cond_2

    #@28
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    #@2b
    move-result-object v4

    #@2c
    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    #@2e
    aget-object v4, v4, v5

    #@30
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    .line 1401
    :cond_0
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@35
    if-nez v4, :cond_4

    #@37
    .line 1402
    const-string/jumbo v4, ", range(s): "

    #@3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1403
    const/4 v1, 0x1

    #@3e
    .line 1404
    .local v1, "first":Z
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_1
    const/16 v4, 0x13

    #@41
    if-ge v2, v4, :cond_5

    #@43
    .line 1405
    iget v4, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@45
    const/4 v5, 0x1

    #@46
    shl-int/2addr v5, v2

    #@47
    and-int/2addr v4, v5

    #@48
    if-eqz v4, :cond_1

    #@4a
    .line 1406
    if-eqz v1, :cond_3

    #@4c
    .line 1407
    const/4 v1, 0x0

    #@4d
    .line 1411
    :goto_2
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    #@50
    move-result-object v4

    #@51
    aget-object v4, v4, v2

    #@53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    .line 1404
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_1

    #@59
    .line 1398
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    #@5b
    goto :goto_0

    #@5c
    .line 1409
    .restart local v1    # "first":Z
    .restart local v2    # "i":I
    :cond_3
    const-string/jumbo v4, ", "

    #@5f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_2

    #@63
    .line 1415
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v4, ", range set: "

    #@66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    .line 1417
    :cond_5
    const/16 v4, 0x5d

    #@71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 1419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    return-object v4
.end method
