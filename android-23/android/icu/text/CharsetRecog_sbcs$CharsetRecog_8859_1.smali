.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;
.super Landroid/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_1"
.end annotation


# static fields
.field protected static byteMap:[B

.field private static ngrams_8859_1:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x40

    #@2
    .line 292
    const/16 v0, 0x100

    #@4
    new-array v0, v0, [B

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;->byteMap:[B

    #@b
    .line 328
    const/16 v0, 0xa

    #@d
    new-array v0, v0, [Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@f
    .line 329
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@11
    .line 330
    const-string/jumbo v2, "da"

    #@14
    .line 331
    new-array v3, v4, [I

    #@16
    fill-array-data v3, :array_1

    #@19
    .line 329
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@1c
    const/4 v2, 0x0

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 337
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@21
    .line 338
    const-string/jumbo v2, "de"

    #@24
    .line 339
    new-array v3, v4, [I

    #@26
    fill-array-data v3, :array_2

    #@29
    .line 337
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@2c
    const/4 v2, 0x1

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 345
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@31
    .line 346
    const-string/jumbo v2, "en"

    #@34
    .line 347
    new-array v3, v4, [I

    #@36
    fill-array-data v3, :array_3

    #@39
    .line 345
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@3c
    const/4 v2, 0x2

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 354
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@41
    .line 355
    const-string/jumbo v2, "es"

    #@44
    .line 356
    new-array v3, v4, [I

    #@46
    fill-array-data v3, :array_4

    #@49
    .line 354
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@4c
    const/4 v2, 0x3

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 363
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@51
    .line 364
    const-string/jumbo v2, "fr"

    #@54
    .line 365
    new-array v3, v4, [I

    #@56
    fill-array-data v3, :array_5

    #@59
    .line 363
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@5c
    const/4 v2, 0x4

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 372
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@61
    .line 373
    const-string/jumbo v2, "it"

    #@64
    .line 374
    new-array v3, v4, [I

    #@66
    fill-array-data v3, :array_6

    #@69
    .line 372
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@6c
    const/4 v2, 0x5

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 381
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@71
    .line 382
    const-string/jumbo v2, "nl"

    #@74
    .line 383
    new-array v3, v4, [I

    #@76
    fill-array-data v3, :array_7

    #@79
    .line 381
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@7c
    const/4 v2, 0x6

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 390
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@81
    .line 391
    const-string/jumbo v2, "no"

    #@84
    .line 392
    new-array v3, v4, [I

    #@86
    fill-array-data v3, :array_8

    #@89
    .line 390
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@8c
    const/4 v2, 0x7

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 399
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@91
    .line 400
    const-string/jumbo v2, "pt"

    #@94
    .line 401
    new-array v3, v4, [I

    #@96
    fill-array-data v3, :array_9

    #@99
    .line 399
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@9c
    const/16 v2, 0x8

    #@9e
    aput-object v1, v0, v2

    #@a0
    .line 409
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@a2
    .line 410
    const-string/jumbo v2, "sv"

    #@a5
    .line 411
    new-array v3, v4, [I

    #@a7
    fill-array-data v3, :array_a

    #@aa
    .line 409
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    #@ad
    const/16 v2, 0x9

    #@af
    aput-object v1, v0, v2

    #@b1
    .line 328
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;->ngrams_8859_1:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@b3
    .line 290
    return-void

    #@b4
    .line 292
    :array_0
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
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x56t
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
        -0x4bt
        0x20t
        0x20t
        0x20t
        0x20t
        -0x46t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x21t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x1t
    .end array-data

    #@138
    .line 331
    :array_1
    .array-data 4
        0x206166
        0x206174
        0x206465
        0x20656e
        0x206572
        0x20666f
        0x206861
        0x206920
        0x206d65
        0x206f67
        0x2070e5
        0x207369
        0x207374
        0x207469
        0x207669
        0x616620
        0x616e20
        0x616e64
        0x617220
        0x617420
        0x646520
        0x64656e
        0x646572
        0x646574
        0x652073
        0x656420
        0x656465
        0x656e20
        0x656e64
        0x657220
        0x657265
        0x657320
        0x657420
        0x666f72
        0x676520
        0x67656e
        0x676572
        0x696765
        0x696c20
        0x696e67
        0x6b6520
        0x6b6b65
        0x6c6572
        0x6c6967
        0x6c6c65
        0x6d6564
        0x6e6465
        0x6e6520
        0x6e6720
        0x6e6765
        0x6f6720
        0x6f6d20
        0x6f7220
        0x70e520
        0x722064
        0x722065
        0x722073
        0x726520
        0x737465
        0x742073
        0x746520
        0x746572
        0x74696c
        0x766572
    .end array-data

    #@1bc
    .line 339
    :array_2
    .array-data 4
        0x20616e
        0x206175
        0x206265
        0x206461
        0x206465
        0x206469
        0x206569
        0x206765
        0x206861
        0x20696e
        0x206d69
        0x207363
        0x207365
        0x20756e
        0x207665
        0x20766f
        0x207765
        0x207a75
        0x626572
        0x636820
        0x636865
        0x636874
        0x646173
        0x64656e
        0x646572
        0x646965
        0x652064
        0x652073
        0x65696e
        0x656974
        0x656e20
        0x657220
        0x657320
        0x67656e
        0x68656e
        0x687420
        0x696368
        0x696520
        0x696e20
        0x696e65
        0x697420
        0x6c6963
        0x6c6c65
        0x6e2061
        0x6e2064
        0x6e2073
        0x6e6420
        0x6e6465
        0x6e6520
        0x6e6720
        0x6e6765
        0x6e7465
        0x722064
        0x726465
        0x726569
        0x736368
        0x737465
        0x742064
        0x746520
        0x74656e
        0x746572
        0x756e64
        0x756e67
        0x766572
    .end array-data

    #@240
    .line 347
    :array_3
    .array-data 4
        0x206120
        0x20616e
        0x206265
        0x20636f
        0x20666f
        0x206861
        0x206865
        0x20696e
        0x206d61
        0x206f66
        0x207072
        0x207265
        0x207361
        0x207374
        0x207468
        0x20746f
        0x207768
        0x616964
        0x616c20
        0x616e20
        0x616e64
        0x617320
        0x617420
        0x617465
        0x617469
        0x642061
        0x642074
        0x652061    # 9.287E-39f
        0x652073
        0x652074
        0x656420
        0x656e74
        0x657220
        0x657320
        0x666f72
        0x686174
        0x686520
        0x686572
        0x696420
        0x696e20
        0x696e67
        0x696f6e
        0x697320
        0x6e2061
        0x6e2074
        0x6e6420
        0x6e6720
        0x6e7420
        0x6f6620
        0x6f6e20
        0x6f7220
        0x726520
        0x727320
        0x732061
        0x732074
        0x736169
        0x737420
        0x742074
        0x746572
        0x746861
        0x746865
        0x74696f
        0x746f20
        0x747320
    .end array-data

    #@2c4
    .line 356
    :array_4
    .array-data 4
        0x206120
        0x206361
        0x20636f
        0x206465
        0x20656c
        0x20656e
        0x206573
        0x20696e
        0x206c61
        0x206c6f
        0x207061
        0x20706f
        0x207072
        0x207175
        0x207265
        0x207365
        0x20756e
        0x207920
        0x612063
        0x612064
        0x612065
        0x61206c
        0x612070
        0x616369
        0x61646f
        0x616c20
        0x617220
        0x617320
        0x6369f3
        0x636f6e
        0x646520
        0x64656c
        0x646f20
        0x652064
        0x652065
        0x65206c
        0x656c20
        0x656e20
        0x656e74
        0x657320
        0x657374
        0x69656e
        0x69f36e
        0x6c6120
        0x6c6f73
        0x6e2065
        0x6e7465
        0x6f2064
        0x6f2065
        0x6f6e20
        0x6f7220
        0x6f7320
        0x706172
        0x717565
        0x726120
        0x726573
        0x732064
        0x732065
        0x732070
        0x736520
        0x746520
        0x746f20
        0x756520
        0xf36e20
    .end array-data

    #@348
    .line 365
    :array_5
    .array-data 4
        0x206175
        0x20636f
        0x206461
        0x206465
        0x206475
        0x20656e
        0x206574
        0x206c61
        0x206c65
        0x207061
        0x20706f
        0x207072
        0x207175
        0x207365
        0x20736f
        0x20756e
        0x20e020
        0x616e74
        0x617469
        0x636520
        0x636f6e
        0x646520
        0x646573
        0x647520
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652065
        0x65206c
        0x652070
        0x652073
        0x656e20
        0x656e74
        0x657220
        0x657320
        0x657420
        0x657572
        0x696f6e
        0x697320
        0x697420
        0x6c6120
        0x6c6520
        0x6c6573
        0x6d656e
        0x6e2064
        0x6e6520
        0x6e7320
        0x6e7420
        0x6f6e20
        0x6f6e74
        0x6f7572
        0x717565
        0x72206c
        0x726520
        0x732061
        0x732064
        0x732065
        0x73206c
        0x732070
        0x742064
        0x746520
        0x74696f
        0x756520
        0x757220
    .end array-data

    #@3cc
    .line 374
    :array_6
    .array-data 4
        0x20616c
        0x206368
        0x20636f
        0x206465
        0x206469
        0x206520
        0x20696c
        0x20696e
        0x206c61
        0x207065
        0x207072
        0x20756e
        0x612063
        0x612064
        0x612070
        0x612073
        0x61746f
        0x636865
        0x636f6e
        0x64656c
        0x646920
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652069
        0x65206c
        0x652070
        0x652073
        0x656c20
        0x656c6c
        0x656e74
        0x657220
        0x686520
        0x692061
        0x692063
        0x692064
        0x692073
        0x696120
        0x696c20
        0x696e20
        0x696f6e
        0x6c6120
        0x6c6520
        0x6c6920
        0x6c6c61
        0x6e6520
        0x6e6920
        0x6e6f20
        0x6e7465
        0x6f2061
        0x6f2064
        0x6f2069
        0x6f2073
        0x6f6e20
        0x6f6e65
        0x706572
        0x726120
        0x726520
        0x736920
        0x746120
        0x746520
        0x746920
        0x746f20
        0x7a696f
    .end array-data

    #@450
    .line 383
    :array_7
    .array-data 4
        0x20616c
        0x206265
        0x206461
        0x206465
        0x206469
        0x206565
        0x20656e
        0x206765
        0x206865
        0x20696e
        0x206d61
        0x206d65
        0x206f70
        0x207465
        0x207661
        0x207665
        0x20766f
        0x207765
        0x207a69
        0x61616e
        0x616172    # 8.943E-39f
        0x616e20
        0x616e64
        0x617220
        0x617420
        0x636874
        0x646520
        0x64656e
        0x646572
        0x652062
        0x652076
        0x65656e
        0x656572
        0x656e20
        0x657220
        0x657273
        0x657420
        0x67656e
        0x686574
        0x696520
        0x696e20
        0x696e67
        0x697320
        0x6e2062
        0x6e2064
        0x6e2065
        0x6e2068
        0x6e206f
        0x6e2076
        0x6e6465
        0x6e6720
        0x6f6e64
        0x6f6f72
        0x6f7020
        0x6f7220
        0x736368
        0x737465
        0x742064
        0x746520
        0x74656e
        0x746572
        0x76616e
        0x766572
        0x766f6f
    .end array-data

    #@4d4
    .line 392
    :array_8
    .array-data 4
        0x206174
        0x206176
        0x206465
        0x20656e
        0x206572
        0x20666f
        0x206861
        0x206920
        0x206d65
        0x206f67
        0x2070e5
        0x207365
        0x20736b
        0x20736f
        0x207374
        0x207469
        0x207669
        0x20e520
        0x616e64
        0x617220
        0x617420
        0x646520
        0x64656e
        0x646574
        0x652073
        0x656420
        0x656e20
        0x656e65
        0x657220
        0x657265
        0x657420
        0x657474
        0x666f72
        0x67656e
        0x696b6b
        0x696c20
        0x696e67
        0x6b6520
        0x6b6b65
        0x6c6520
        0x6c6c65
        0x6d6564
        0x6d656e
        0x6e2073
        0x6e6520
        0x6e6720
        0x6e6765
        0x6e6e65
        0x6f6720
        0x6f6d20
        0x6f7220
        0x70e520
        0x722073
        0x726520
        0x736f6d
        0x737465
        0x742073
        0x746520
        0x74656e
        0x746572
        0x74696c
        0x747420
        0x747465
        0x766572
    .end array-data

    #@558
    .line 401
    :array_9
    .array-data 4
        0x206120
        0x20636f
        0x206461
        0x206465
        0x20646f
        0x206520
        0x206573
        0x206d61
        0x206e6f
        0x206f20
        0x207061
        0x20706f
        0x207072
        0x207175
        0x207265
        0x207365
        0x20756d
        0x612061
        0x612063
        0x612064
        0x612070
        0x616465
        0x61646f
        0x616c20
        0x617220
        0x617261
        0x617320
        0x636f6d
        0x636f6e
        0x646120
        0x646520
        0x646f20
        0x646f73
        0x652061    # 9.287E-39f
        0x652064
        0x656d20
        0x656e74
        0x657320
        0x657374
        0x696120
        0x696361
        0x6d656e
        0x6e7465
        0x6e746f
        0x6f2061
        0x6f2063
        0x6f2064
        0x6f2065
        0x6f2070
        0x6f7320
        0x706172
        0x717565
        0x726120
        0x726573
        0x732061
        0x732064
        0x732065
        0x732070
        0x737461
        0x746520
        0x746f20
        0x756520
        0xe36f20
        0xe7e36f
    .end array-data

    #@5dc
    .line 411
    :array_a
    .array-data 4
        0x206174
        0x206176
        0x206465
        0x20656e
        0x2066f6
        0x206861
        0x206920
        0x20696e
        0x206b6f
        0x206d65
        0x206f63
        0x2070e5
        0x20736b
        0x20736f
        0x207374
        0x207469
        0x207661
        0x207669
        0x20e472
        0x616465
        0x616e20
        0x616e64
        0x617220
        0x617474
        0x636820
        0x646520
        0x64656e
        0x646572
        0x646574
        0x656420
        0x656e20
        0x657220
        0x657420
        0x66f672
        0x67656e
        0x696c6c
        0x696e67
        0x6b6120
        0x6c6c20
        0x6d6564
        0x6e2073
        0x6e6120
        0x6e6465
        0x6e6720
        0x6e6765
        0x6e696e
        0x6f6368
        0x6f6d20
        0x6f6e20
        0x70e520
        0x722061
        0x722073
        0x726120
        0x736b61
        0x736f6d
        0x742073
        0x746120
        0x746520
        0x746572
        0x74696c
        0x747420
        0x766172
        0xe47220
        0xf67220
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 439
    const-string/jumbo v0, "ISO-8859-1"

    #@3
    return-object v0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 10
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 423
    iget-boolean v1, p1, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    const-string/jumbo v4, "windows-1252"

    #@8
    .line 424
    .local v4, "name":Ljava/lang/String;
    :goto_0
    const/4 v3, -0x1

    #@9
    .line 425
    .local v3, "bestConfidenceSoFar":I
    const/4 v5, 0x0

    #@a
    .line 426
    .local v5, "lang":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;->ngrams_8859_1:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    #@c
    array-length v2, v1

    #@d
    .end local v5    # "lang":Ljava/lang/String;
    :goto_1
    if-ge v0, v2, :cond_2

    #@f
    aget-object v7, v1, v0

    #@11
    .line 427
    .local v7, "ngl":Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;
    iget-object v8, v7, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fNGrams:[I

    #@13
    sget-object v9, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;->byteMap:[B

    #@15
    invoke-virtual {p0, p1, v8, v9}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    #@18
    move-result v6

    #@19
    .line 428
    .local v6, "confidence":I
    if-le v6, v3, :cond_0

    #@1b
    .line 429
    move v3, v6

    #@1c
    .line 430
    iget-object v5, v7, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fLang:Ljava/lang/String;

    #@1e
    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 423
    .end local v3    # "bestConfidenceSoFar":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "confidence":I
    .end local v7    # "ngl":Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;
    :cond_1
    const-string/jumbo v4, "ISO-8859-1"

    #@24
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    #@25
    .line 433
    .restart local v3    # "bestConfidenceSoFar":I
    :cond_2
    if-gtz v3, :cond_3

    #@27
    const/4 v0, 0x0

    #@28
    :goto_2
    return-object v0

    #@29
    :cond_3
    new-instance v0, Landroid/icu/text/CharsetMatch;

    #@2b
    move-object v1, p1

    #@2c
    move-object v2, p0

    #@2d
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    #@30
    goto :goto_2
.end method
