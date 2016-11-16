.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 37
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    mul-int/lit8 v0, v0, 0x2

    #@7
    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    #@9
    .line 36
    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    #@b
    .line 432
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    .line 431
    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@12
    .line 434
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@14
    const/16 v1, 0x41

    #@16
    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 435
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1e
    const/16 v1, 0x43

    #@20
    const-string/jumbo v2, "\u00c7\u0106\u010c"

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 436
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@28
    const/16 v1, 0x44

    #@2a
    const-string/jumbo v2, "\u010e"

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 437
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@32
    const/16 v1, 0x45

    #@34
    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    #@37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3a
    .line 438
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@3c
    const/16 v1, 0x47

    #@3e
    const-string/jumbo v2, "\u011e"

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@44
    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@46
    const/16 v1, 0x4c

    #@48
    const-string/jumbo v2, "\u0141"

    #@4b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@50
    const/16 v1, 0x49

    #@52
    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@58
    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@5a
    const/16 v1, 0x4e

    #@5c
    const-string/jumbo v2, "\u00d1\u0143\u0147"

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@62
    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@64
    const/16 v1, 0x4f

    #@66
    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    #@69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6c
    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@6e
    const/16 v1, 0x52

    #@70
    const-string/jumbo v2, "\u0158"

    #@73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@76
    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@78
    const/16 v1, 0x53

    #@7a
    const-string/jumbo v2, "\u015a\u0160\u015e"

    #@7d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@80
    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@82
    const/16 v1, 0x54

    #@84
    const-string/jumbo v2, "\u0164"

    #@87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8a
    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@8c
    const/16 v1, 0x55

    #@8e
    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    #@91
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@94
    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@96
    const/16 v1, 0x59

    #@98
    const-string/jumbo v2, "\u00dd\u0178"

    #@9b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9e
    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@a0
    const/16 v1, 0x5a

    #@a2
    const-string/jumbo v2, "\u0179\u017b\u017d"

    #@a5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a8
    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@aa
    const/16 v1, 0x61

    #@ac
    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    #@af
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@b2
    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@b4
    const/16 v1, 0x63

    #@b6
    const-string/jumbo v2, "\u00e7\u0107\u010d"

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@bc
    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@be
    const/16 v1, 0x64

    #@c0
    const-string/jumbo v2, "\u010f"

    #@c3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c6
    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@c8
    const/16 v1, 0x65

    #@ca
    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    #@cd
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@d0
    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@d2
    const/16 v1, 0x67

    #@d4
    const-string/jumbo v2, "\u011f"

    #@d7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@da
    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@dc
    const/16 v1, 0x69

    #@de
    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    #@e1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e4
    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@e6
    const/16 v1, 0x6c

    #@e8
    const-string/jumbo v2, "\u0142"

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ee
    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@f0
    const/16 v1, 0x6e

    #@f2
    const-string/jumbo v2, "\u00f1\u0144\u0148"

    #@f5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@f8
    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@fa
    const/16 v1, 0x6f

    #@fc
    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    #@ff
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@102
    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@104
    const/16 v1, 0x72

    #@106
    const-string/jumbo v2, "\u0159"

    #@109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10c
    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@10e
    const/16 v1, 0x73

    #@110
    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    #@113
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@116
    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@118
    const/16 v1, 0x74

    #@11a
    const-string/jumbo v2, "\u0165"

    #@11d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@120
    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@122
    const/16 v1, 0x75

    #@124
    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    #@127
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@12a
    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@12c
    const/16 v1, 0x79

    #@12e
    const-string/jumbo v2, "\u00fd\u00ff"

    #@131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@134
    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@136
    const/16 v1, 0x7a

    #@138
    const-string/jumbo v2, "\u017a\u017c\u017e"

    #@13b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13e
    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@140
    const v1, 0xef01

    #@143
    .line 465
    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    #@146
    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@149
    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@14b
    const/16 v1, 0x2f

    #@14d
    const-string/jumbo v2, "\\"

    #@150
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@153
    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@155
    const/16 v1, 0x31

    #@157
    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    #@15a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15d
    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@15f
    const/16 v1, 0x32

    #@161
    const-string/jumbo v2, "\u00b2\u2154"

    #@164
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@167
    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@169
    const/16 v1, 0x33

    #@16b
    const-string/jumbo v2, "\u00b3\u00be\u215c"

    #@16e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@171
    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@173
    const/16 v1, 0x34

    #@175
    const-string/jumbo v2, "\u2074"

    #@178
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17b
    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@17d
    const/16 v1, 0x35

    #@17f
    const-string/jumbo v2, "\u215d"

    #@182
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@185
    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@187
    const/16 v1, 0x37

    #@189
    const-string/jumbo v2, "\u215e"

    #@18c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18f
    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@191
    const/16 v1, 0x30

    #@193
    const-string/jumbo v2, "\u207f\u2205"

    #@196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@199
    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@19b
    const/16 v1, 0x24

    #@19d
    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    #@1a0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a3
    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1a5
    const/16 v1, 0x25

    #@1a7
    const-string/jumbo v2, "\u2030"

    #@1aa
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1ad
    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1af
    const/16 v1, 0x2a

    #@1b1
    const-string/jumbo v2, "\u2020\u2021"

    #@1b4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b7
    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1b9
    const/16 v1, 0x2d

    #@1bb
    const-string/jumbo v2, "\u2013\u2014"

    #@1be
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c1
    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1c3
    const/16 v1, 0x2b

    #@1c5
    const-string/jumbo v2, "\u00b1"

    #@1c8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1cb
    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1cd
    const/16 v1, 0x28

    #@1cf
    const-string/jumbo v2, "[{<"

    #@1d2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1d5
    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1d7
    const/16 v1, 0x29

    #@1d9
    const-string/jumbo v2, "]}>"

    #@1dc
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1df
    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1e1
    const/16 v1, 0x21

    #@1e3
    const-string/jumbo v2, "\u00a1"

    #@1e6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1e9
    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1eb
    const/16 v1, 0x22

    #@1ed
    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    #@1f0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f3
    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1f5
    const/16 v1, 0x3f

    #@1f7
    const-string/jumbo v2, "\u00bf"

    #@1fa
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1fd
    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@1ff
    const/16 v1, 0x2c

    #@201
    const-string/jumbo v2, "\u201a\u201e"

    #@204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@207
    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@209
    const/16 v1, 0x3d

    #@20b
    const-string/jumbo v2, "\u2260\u2248\u221e"

    #@20e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@211
    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@213
    const/16 v1, 0x3c

    #@215
    const-string/jumbo v2, "\u2264\u00ab\u2039"

    #@218
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@21b
    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@21d
    const/16 v1, 0x3e

    #@21f
    const-string/jumbo v2, "\u2265\u00bb\u203a"

    #@222
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@225
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    #@4
    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autoText"    # Z
    .param p3, "fullKeyboard"    # Z

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@5
    .line 46
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    #@7
    .line 47
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    #@9
    .line 44
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .param p0, "autoText"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@3
    move-result v1

    #@4
    mul-int/lit8 v2, v1, 0x2

    #@6
    if-eqz p0, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    add-int v0, v2, v1

    #@b
    .line 61
    .local v0, "off":I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    #@d
    aget-object v1, v1, v0

    #@f
    if-nez v1, :cond_0

    #@11
    .line 62
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    #@13
    new-instance v2, Landroid/text/method/QwertyKeyListener;

    #@15
    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    #@18
    aput-object v2, v1, v0

    #@1a
    .line 65
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    #@1c
    aget-object v1, v1, v0

    #@1e
    return-object v1

    #@1f
    .line 59
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    #@0
    .prologue
    .line 74
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 75
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    #@6
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x1

    #@a
    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    #@d
    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    #@f
    .line 77
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    #@11
    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 362
    sub-int v4, p3, p2

    #@4
    .line 363
    .local v4, "len":I
    const/4 v1, 0x0

    #@5
    .line 365
    .local v1, "changecase":Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 367
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_0

    #@b
    .line 368
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@e
    move-result-object v7

    #@f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 369
    .local v3, "key":Ljava/lang/String;
    sub-int v7, p3, p2

    #@15
    invoke-static {v3, v9, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    .line 370
    const/4 v1, 0x1

    #@1a
    .line 372
    if-nez v6, :cond_0

    #@1c
    .line 373
    return-object v8

    #@1d
    .line 376
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@1e
    .line 378
    .local v0, "caps":I
    if-eqz v1, :cond_2

    #@20
    .line 379
    move v2, p2

    #@21
    .local v2, "j":I
    :goto_0
    if-ge v2, p3, :cond_2

    #@23
    .line 380
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@26
    move-result v7

    #@27
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_1

    #@2d
    .line 381
    add-int/lit8 v0, v0, 0x1

    #@2f
    .line 379
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 387
    .end local v2    # "j":I
    :cond_2
    if-nez v0, :cond_3

    #@34
    .line 388
    move-object v5, v6

    #@35
    .line 396
    .local v5, "out":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-ne v7, v4, :cond_6

    #@3b
    .line 397
    invoke-static {p1, p2, v5, v9, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    #@3e
    move-result v7

    #@3f
    .line 396
    if-eqz v7, :cond_6

    #@41
    .line 398
    return-object v8

    #@42
    .line 389
    .end local v5    # "out":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    #@43
    if-ne v0, v7, :cond_4

    #@45
    .line 390
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    #@4a
    .line 391
    .end local v5    # "out":Ljava/lang/String;
    :cond_4
    if-ne v0, v4, :cond_5

    #@4c
    .line 392
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    #@51
    .line 394
    .end local v5    # "out":Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    .restart local v5    # "out":Ljava/lang/String;
    goto :goto_1

    #@56
    .line 400
    :cond_6
    return-object v5
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 418
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@4
    move-result v4

    #@5
    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    #@7
    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    #@d
    .line 419
    .local v3, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    #@e
    .local v0, "a":I
    :goto_0
    array-length v4, v3

    #@f
    if-ge v0, v4, :cond_0

    #@11
    .line 420
    aget-object v4, v3, v0

    #@13
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@16
    .line 419
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 423
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    .line 424
    .local v1, "len":I
    new-array v2, v1, [C

    #@1f
    .line 425
    .local v2, "orig":[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@22
    .line 427
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    #@24
    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    #@27
    .line 428
    const/16 v5, 0x21

    #@29
    .line 427
    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@2c
    .line 417
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "c"    # C
    .param p4, "insert"    # Z
    .param p5, "count"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Ljava/lang/String;

    #@9
    .line 499
    .local v4, "set":Ljava/lang/String;
    if-nez v4, :cond_0

    #@b
    .line 500
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 503
    :cond_0
    if-ne p5, v6, :cond_1

    #@f
    .line 504
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    #@11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    move-object v2, p1

    #@16
    move-object v3, p2

    #@17
    move v5, p4

    #@18
    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    #@1b
    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    #@1e
    .line 508
    :cond_1
    return v6
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const/4 v1, 0x1

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    #@4
    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 45
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 87
    const/16 v35, 0x0

    #@2
    .line 89
    .local v35, "pref":I
    if-eqz p1, :cond_0

    #@4
    .line 90
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@7
    move-result-object v5

    #@8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@b
    move-result-object v6

    #@c
    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    #@f
    move-result v35

    #@10
    .line 94
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@13
    move-result v17

    #@14
    .line 95
    .local v17, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@17
    move-result v21

    #@18
    .line 97
    .local v21, "b":I
    move/from16 v0, v17

    #@1a
    move/from16 v1, v21

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v40

    #@20
    .line 98
    .local v40, "selStart":I
    move/from16 v0, v17

    #@22
    move/from16 v1, v21

    #@24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v39

    #@28
    .line 100
    .local v39, "selEnd":I
    if-ltz v40, :cond_1

    #@2a
    if-gez v39, :cond_2

    #@2c
    .line 101
    :cond_1
    const/16 v39, 0x0

    #@2e
    const/16 v40, 0x0

    #@30
    .line 102
    const/4 v5, 0x0

    #@31
    const/4 v6, 0x0

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-static {v0, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@37
    .line 106
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@39
    move-object/from16 v0, p2

    #@3b
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@3e
    move-result v20

    #@3f
    .line 107
    .local v20, "activeStart":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@46
    move-result v19

    #@47
    .line 111
    .local v19, "activeEnd":I
    move-object/from16 v0, p2

    #@49
    move-object/from16 v1, p4

    #@4b
    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    #@4e
    move-result v5

    #@4f
    move-object/from16 v0, p4

    #@51
    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    #@54
    move-result v29

    #@55
    .line 113
    .local v29, "i":I
    move-object/from16 v0, p0

    #@57
    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    #@59
    if-nez v5, :cond_4

    #@5b
    .line 114
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@5e
    move-result v10

    #@5f
    .line 115
    .local v10, "count":I
    if-lez v10, :cond_4

    #@61
    move/from16 v0, v40

    #@63
    move/from16 v1, v39

    #@65
    if-ne v0, v1, :cond_4

    #@67
    if-lez v40, :cond_4

    #@69
    .line 116
    add-int/lit8 v5, v40, -0x1

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@70
    move-result v8

    #@71
    .line 118
    .local v8, "c":C
    move/from16 v0, v29

    #@73
    if-eq v8, v0, :cond_3

    #@75
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    #@78
    move-result v5

    #@79
    if-ne v8, v5, :cond_4

    #@7b
    :cond_3
    if-eqz p1, :cond_4

    #@7d
    .line 119
    const/4 v9, 0x0

    #@7e
    move-object/from16 v5, p0

    #@80
    move-object/from16 v6, p1

    #@82
    move-object/from16 v7, p2

    #@84
    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_4

    #@8a
    .line 120
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    #@8d
    .line 121
    const/4 v5, 0x1

    #@8e
    return v5

    #@8f
    .line 127
    .end local v8    # "c":C
    .end local v10    # "count":I
    :cond_4
    const v5, 0xef01

    #@92
    move/from16 v0, v29

    #@94
    if-ne v0, v5, :cond_6

    #@96
    .line 128
    if-eqz p1, :cond_5

    #@98
    .line 130
    const v14, 0xef01

    #@9b
    const/4 v15, 0x1

    #@9c
    const/16 v16, 0x1

    #@9e
    move-object/from16 v11, p0

    #@a0
    move-object/from16 v12, p1

    #@a2
    move-object/from16 v13, p2

    #@a4
    .line 129
    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    #@a7
    .line 132
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    #@aa
    .line 133
    const/4 v5, 0x1

    #@ab
    return v5

    #@ac
    .line 136
    :cond_6
    const v5, 0xef00

    #@af
    move/from16 v0, v29

    #@b1
    if-ne v0, v5, :cond_9

    #@b3
    .line 139
    move/from16 v0, v40

    #@b5
    move/from16 v1, v39

    #@b7
    if-ne v0, v1, :cond_7

    #@b9
    .line 140
    move/from16 v42, v39

    #@bb
    .line 142
    .local v42, "start":I
    :goto_0
    if-lez v42, :cond_8

    #@bd
    sub-int v5, v39, v42

    #@bf
    const/4 v6, 0x4

    #@c0
    if-ge v5, v6, :cond_8

    #@c2
    .line 143
    add-int/lit8 v5, v42, -0x1

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@c9
    move-result v5

    #@ca
    const/16 v6, 0x10

    #@cc
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    #@cf
    move-result v5

    #@d0
    if-ltz v5, :cond_8

    #@d2
    .line 144
    add-int/lit8 v42, v42, -0x1

    #@d4
    goto :goto_0

    #@d5
    .line 147
    .end local v42    # "start":I
    :cond_7
    move/from16 v42, v40

    #@d7
    .line 150
    .restart local v42    # "start":I
    :cond_8
    const/16 v22, -0x1

    #@d9
    .line 152
    .local v22, "ch":I
    :try_start_0
    move-object/from16 v0, p2

    #@db
    move/from16 v1, v42

    #@dd
    move/from16 v2, v39

    #@df
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@e2
    move-result-object v28

    #@e3
    .line 153
    .local v28, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    #@e5
    move-object/from16 v0, v28

    #@e7
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@ea
    move-result v22

    #@eb
    .line 156
    .end local v28    # "hex":Ljava/lang/String;
    :goto_1
    if-ltz v22, :cond_12

    #@ed
    .line 157
    move/from16 v40, v42

    #@ef
    .line 158
    move-object/from16 v0, p2

    #@f1
    move/from16 v1, v40

    #@f3
    move/from16 v2, v39

    #@f5
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@f8
    .line 159
    move/from16 v29, v22

    #@fa
    .line 165
    .end local v22    # "ch":I
    .end local v42    # "start":I
    :cond_9
    :goto_2
    if-eqz v29, :cond_1d

    #@fc
    .line 166
    const/16 v25, 0x0

    #@fe
    .line 168
    .local v25, "dead":Z
    const/high16 v5, -0x80000000

    #@100
    and-int v5, v5, v29

    #@102
    if-eqz v5, :cond_a

    #@104
    .line 169
    const/16 v25, 0x1

    #@106
    .line 170
    const v5, 0x7fffffff

    #@109
    and-int v29, v29, v5

    #@10b
    .line 173
    :cond_a
    move/from16 v0, v20

    #@10d
    move/from16 v1, v40

    #@10f
    if-ne v0, v1, :cond_c

    #@111
    move/from16 v0, v19

    #@113
    move/from16 v1, v39

    #@115
    if-ne v0, v1, :cond_c

    #@117
    .line 174
    const/16 v38, 0x0

    #@119
    .line 176
    .local v38, "replace":Z
    sub-int v5, v39, v40

    #@11b
    add-int/lit8 v5, v5, -0x1

    #@11d
    if-nez v5, :cond_b

    #@11f
    .line 177
    move-object/from16 v0, p2

    #@121
    move/from16 v1, v40

    #@123
    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    #@126
    move-result v18

    #@127
    .line 178
    .local v18, "accent":C
    move/from16 v0, v18

    #@129
    move/from16 v1, v29

    #@12b
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    #@12e
    move-result v23

    #@12f
    .line 180
    .local v23, "composed":I
    if-eqz v23, :cond_b

    #@131
    .line 181
    move/from16 v29, v23

    #@133
    .line 182
    const/16 v38, 0x1

    #@135
    .line 183
    const/16 v25, 0x0

    #@137
    .line 187
    .end local v18    # "accent":C
    .end local v23    # "composed":I
    :cond_b
    if-nez v38, :cond_c

    #@139
    .line 188
    move-object/from16 v0, p2

    #@13b
    move/from16 v1, v39

    #@13d
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@140
    .line 189
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@147
    .line 190
    move/from16 v40, v39

    #@149
    .line 194
    .end local v38    # "replace":Z
    :cond_c
    and-int/lit8 v5, v35, 0x1

    #@14b
    if-eqz v5, :cond_d

    #@14d
    .line 195
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    #@150
    move-result v5

    #@151
    .line 194
    if-eqz v5, :cond_d

    #@153
    .line 196
    move-object/from16 v0, p0

    #@155
    iget-object v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@157
    move-object/from16 v0, p2

    #@159
    move/from16 v1, v40

    #@15b
    invoke-static {v5, v0, v1}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    #@15e
    move-result v5

    #@15f
    .line 194
    if-eqz v5, :cond_d

    #@161
    .line 197
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@168
    move-result v43

    #@169
    .line 198
    .local v43, "where":I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@170
    move-result v27

    #@171
    .line 200
    .local v27, "flags":I
    move/from16 v0, v43

    #@173
    move/from16 v1, v40

    #@175
    if-ne v0, v1, :cond_13

    #@177
    shr-int/lit8 v5, v27, 0x10

    #@179
    const v6, 0xffff

    #@17c
    and-int/2addr v5, v6

    #@17d
    move/from16 v0, v29

    #@17f
    if-ne v5, v0, :cond_13

    #@181
    .line 201
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@183
    move-object/from16 v0, p2

    #@185
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@188
    .line 217
    .end local v27    # "flags":I
    .end local v43    # "where":I
    :cond_d
    :goto_3
    move/from16 v0, v40

    #@18a
    move/from16 v1, v39

    #@18c
    if-eq v0, v1, :cond_e

    #@18e
    .line 218
    move-object/from16 v0, p2

    #@190
    move/from16 v1, v39

    #@192
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@195
    .line 220
    :cond_e
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@197
    .line 221
    const/16 v6, 0x11

    #@199
    .line 220
    move-object/from16 v0, p2

    #@19b
    move/from16 v1, v40

    #@19d
    move/from16 v2, v40

    #@19f
    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@1a2
    .line 223
    move/from16 v0, v29

    #@1a4
    int-to-char v5, v0

    #@1a5
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1a8
    move-result-object v5

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    move/from16 v1, v40

    #@1ad
    move/from16 v2, v39

    #@1af
    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@1b2
    .line 225
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@1b9
    move-result v33

    #@1ba
    .line 226
    .local v33, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1bd
    move-result v39

    #@1be
    .line 228
    move/from16 v0, v33

    #@1c0
    move/from16 v1, v39

    #@1c2
    if-ge v0, v1, :cond_f

    #@1c4
    .line 229
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    #@1c6
    .line 231
    const/16 v6, 0x21

    #@1c8
    .line 229
    move-object/from16 v0, p2

    #@1ca
    move/from16 v1, v33

    #@1cc
    move/from16 v2, v39

    #@1ce
    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@1d1
    .line 233
    if-eqz v25, :cond_f

    #@1d3
    .line 234
    move-object/from16 v0, p2

    #@1d5
    move/from16 v1, v33

    #@1d7
    move/from16 v2, v39

    #@1d9
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@1dc
    .line 235
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@1de
    .line 236
    const/16 v6, 0x21

    #@1e0
    .line 235
    move-object/from16 v0, p2

    #@1e2
    move/from16 v1, v33

    #@1e4
    move/from16 v2, v39

    #@1e6
    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@1e9
    .line 240
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@1ec
    .line 245
    and-int/lit8 v5, v35, 0x2

    #@1ee
    if-eqz v5, :cond_16

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    #@1f4
    if-eqz v5, :cond_16

    #@1f6
    .line 246
    const/16 v5, 0x20

    #@1f8
    move/from16 v0, v29

    #@1fa
    if-eq v0, v5, :cond_10

    #@1fc
    const/16 v5, 0x9

    #@1fe
    move/from16 v0, v29

    #@200
    if-ne v0, v5, :cond_15

    #@202
    .line 249
    :cond_10
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@204
    move-object/from16 v0, p2

    #@206
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@209
    move-result v5

    #@20a
    move/from16 v0, v33

    #@20c
    if-eq v5, v0, :cond_16

    #@20e
    .line 253
    move/from16 v44, v33

    #@210
    .local v44, "x":I
    :goto_4
    if-lez v44, :cond_18

    #@212
    .line 254
    add-int/lit8 v5, v44, -0x1

    #@214
    move-object/from16 v0, p2

    #@216
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@219
    move-result v8

    #@21a
    .line 255
    .restart local v8    # "c":C
    const/16 v5, 0x27

    #@21c
    if-eq v8, v5, :cond_11

    #@21e
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    #@221
    move-result v5

    #@222
    if-eqz v5, :cond_18

    #@224
    .line 253
    :cond_11
    add-int/lit8 v44, v44, -0x1

    #@226
    goto :goto_4

    #@227
    .line 161
    .end local v8    # "c":C
    .end local v25    # "dead":Z
    .end local v33    # "oldStart":I
    .end local v44    # "x":I
    .restart local v22    # "ch":I
    .restart local v42    # "start":I
    :cond_12
    const/16 v29, 0x0

    #@229
    goto/16 :goto_2

    #@22b
    .line 203
    .end local v22    # "ch":I
    .end local v42    # "start":I
    .restart local v25    # "dead":Z
    .restart local v27    # "flags":I
    .restart local v43    # "where":I
    :cond_13
    shl-int/lit8 v27, v29, 0x10

    #@22d
    .line 204
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    #@230
    move-result v29

    #@231
    .line 206
    if-nez v40, :cond_14

    #@233
    .line 207
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@235
    .line 208
    or-int/lit8 v6, v27, 0x11

    #@237
    .line 207
    const/4 v7, 0x0

    #@238
    const/4 v9, 0x0

    #@239
    move-object/from16 v0, p2

    #@23b
    invoke-interface {v0, v5, v7, v9, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@23e
    goto/16 :goto_3

    #@240
    .line 210
    :cond_14
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@242
    .line 211
    add-int/lit8 v6, v40, -0x1

    #@244
    .line 212
    or-int/lit8 v7, v27, 0x21

    #@246
    .line 210
    move-object/from16 v0, p2

    #@248
    move/from16 v1, v40

    #@24a
    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@24d
    goto/16 :goto_3

    #@24f
    .line 246
    .end local v27    # "flags":I
    .end local v43    # "where":I
    .restart local v33    # "oldStart":I
    :cond_15
    const/16 v5, 0xa

    #@251
    move/from16 v0, v29

    #@253
    if-eq v0, v5, :cond_10

    #@255
    .line 247
    const/16 v5, 0x2c

    #@257
    move/from16 v0, v29

    #@259
    if-eq v0, v5, :cond_10

    #@25b
    const/16 v5, 0x2e

    #@25d
    move/from16 v0, v29

    #@25f
    if-eq v0, v5, :cond_10

    #@261
    const/16 v5, 0x21

    #@263
    move/from16 v0, v29

    #@265
    if-eq v0, v5, :cond_10

    #@267
    const/16 v5, 0x3f

    #@269
    move/from16 v0, v29

    #@26b
    if-eq v0, v5, :cond_10

    #@26d
    .line 248
    const/16 v5, 0x22

    #@26f
    move/from16 v0, v29

    #@271
    if-eq v0, v5, :cond_10

    #@273
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    #@276
    move-result v5

    #@277
    const/16 v6, 0x16

    #@279
    if-eq v5, v6, :cond_10

    #@27b
    .line 279
    :cond_16
    :goto_5
    and-int/lit8 v5, v35, 0x4

    #@27d
    if-eqz v5, :cond_1c

    #@27f
    move-object/from16 v0, p0

    #@281
    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    #@283
    if-eqz v5, :cond_1c

    #@285
    .line 280
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@288
    move-result v39

    #@289
    .line 281
    add-int/lit8 v5, v39, -0x3

    #@28b
    if-ltz v5, :cond_1c

    #@28d
    .line 282
    add-int/lit8 v5, v39, -0x1

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@294
    move-result v5

    #@295
    const/16 v6, 0x20

    #@297
    if-ne v5, v6, :cond_1c

    #@299
    .line 283
    add-int/lit8 v5, v39, -0x2

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@2a0
    move-result v5

    #@2a1
    const/16 v6, 0x20

    #@2a3
    if-ne v5, v6, :cond_1c

    #@2a5
    .line 284
    add-int/lit8 v5, v39, -0x3

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@2ac
    move-result v8

    #@2ad
    .line 286
    .restart local v8    # "c":C
    add-int/lit8 v30, v39, -0x3

    #@2af
    .local v30, "j":I
    :goto_6
    if-lez v30, :cond_1a

    #@2b1
    .line 287
    const/16 v5, 0x22

    #@2b3
    if-eq v8, v5, :cond_17

    #@2b5
    .line 288
    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    #@2b8
    move-result v5

    #@2b9
    const/16 v6, 0x16

    #@2bb
    if-ne v5, v6, :cond_1a

    #@2bd
    .line 289
    :cond_17
    add-int/lit8 v5, v30, -0x1

    #@2bf
    move-object/from16 v0, p2

    #@2c1
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@2c4
    move-result v8

    #@2c5
    .line 286
    add-int/lit8 v30, v30, -0x1

    #@2c7
    goto :goto_6

    #@2c8
    .line 260
    .end local v8    # "c":C
    .end local v30    # "j":I
    .restart local v44    # "x":I
    :cond_18
    move-object/from16 v0, p0

    #@2ca
    move-object/from16 v1, p2

    #@2cc
    move/from16 v2, v44

    #@2ce
    move/from16 v3, v33

    #@2d0
    move-object/from16 v4, p1

    #@2d2
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    #@2d5
    move-result-object v36

    #@2d6
    .line 262
    .local v36, "rep":Ljava/lang/String;
    if-eqz v36, :cond_16

    #@2d8
    .line 263
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    #@2db
    move-result v5

    #@2dc
    .line 264
    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    #@2de
    .line 263
    const/4 v7, 0x0

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-interface {v0, v7, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@2e4
    move-result-object v37

    #@2e5
    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    #@2e7
    .line 265
    .local v37, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    #@2e9
    :goto_7
    move-object/from16 v0, v37

    #@2eb
    array-length v5, v0

    #@2ec
    move/from16 v0, v17

    #@2ee
    if-ge v0, v5, :cond_19

    #@2f0
    .line 266
    aget-object v5, v37, v17

    #@2f2
    move-object/from16 v0, p2

    #@2f4
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@2f7
    .line 265
    add-int/lit8 v17, v17, 0x1

    #@2f9
    goto :goto_7

    #@2fa
    .line 268
    :cond_19
    sub-int v5, v33, v44

    #@2fc
    new-array v0, v5, [C

    #@2fe
    move-object/from16 v34, v0

    #@300
    .line 269
    .local v34, "orig":[C
    const/4 v5, 0x0

    #@301
    move-object/from16 v0, p2

    #@303
    move/from16 v1, v44

    #@305
    move/from16 v2, v33

    #@307
    move-object/from16 v3, v34

    #@309
    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@30c
    .line 271
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    #@30e
    move-object/from16 v0, v34

    #@310
    invoke-direct {v5, v0}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    #@313
    .line 272
    const/16 v6, 0x21

    #@315
    .line 271
    move-object/from16 v0, p2

    #@317
    move/from16 v1, v44

    #@319
    move/from16 v2, v33

    #@31b
    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@31e
    .line 273
    move-object/from16 v0, p2

    #@320
    move/from16 v1, v44

    #@322
    move/from16 v2, v33

    #@324
    move-object/from16 v3, v36

    #@326
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@329
    goto/16 :goto_5

    #@32b
    .line 295
    .end local v34    # "orig":[C
    .end local v36    # "rep":Ljava/lang/String;
    .end local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v44    # "x":I
    .restart local v8    # "c":C
    .restart local v30    # "j":I
    :cond_1a
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    #@32e
    move-result v5

    #@32f
    if-nez v5, :cond_1b

    #@331
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    #@334
    move-result v5

    #@335
    if-eqz v5, :cond_1c

    #@337
    .line 296
    :cond_1b
    add-int/lit8 v5, v39, -0x2

    #@339
    add-int/lit8 v6, v39, -0x1

    #@33b
    const-string/jumbo v7, "."

    #@33e
    move-object/from16 v0, p2

    #@340
    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@343
    .line 302
    .end local v8    # "c":C
    .end local v30    # "j":I
    :cond_1c
    const/4 v5, 0x1

    #@344
    return v5

    #@345
    .line 303
    .end local v25    # "dead":Z
    .end local v33    # "oldStart":I
    :cond_1d
    const/16 v5, 0x43

    #@347
    move/from16 v0, p3

    #@349
    if-ne v0, v5, :cond_22

    #@34b
    .line 304
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@34e
    move-result v5

    #@34f
    if-nez v5, :cond_1e

    #@351
    const/4 v5, 0x2

    #@352
    move-object/from16 v0, p4

    #@354
    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@357
    move-result v5

    #@358
    .line 303
    if-eqz v5, :cond_22

    #@35a
    .line 305
    :cond_1e
    move/from16 v0, v40

    #@35c
    move/from16 v1, v39

    #@35e
    if-ne v0, v1, :cond_22

    #@360
    .line 308
    const/16 v24, 0x1

    #@362
    .line 315
    .local v24, "consider":I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@369
    move-result v5

    #@36a
    move/from16 v0, v40

    #@36c
    if-ne v5, v0, :cond_1f

    #@36e
    .line 316
    add-int/lit8 v5, v40, -0x1

    #@370
    move-object/from16 v0, p2

    #@372
    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    #@375
    move-result v5

    #@376
    const/16 v6, 0xa

    #@378
    if-eq v5, v6, :cond_1f

    #@37a
    .line 317
    const/16 v24, 0x2

    #@37c
    .line 320
    :cond_1f
    sub-int v5, v40, v24

    #@37e
    .line 321
    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    #@380
    .line 320
    move-object/from16 v0, p2

    #@382
    move/from16 v1, v40

    #@384
    invoke-interface {v0, v5, v1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@387
    move-result-object v37

    #@388
    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    #@38a
    .line 323
    .restart local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v37

    #@38c
    array-length v5, v0

    #@38d
    if-lez v5, :cond_22

    #@38f
    .line 324
    const/4 v5, 0x0

    #@390
    aget-object v5, v37, v5

    #@392
    move-object/from16 v0, p2

    #@394
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@397
    move-result v41

    #@398
    .line 325
    .local v41, "st":I
    const/4 v5, 0x0

    #@399
    aget-object v5, v37, v5

    #@39b
    move-object/from16 v0, p2

    #@39d
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@3a0
    move-result v26

    #@3a1
    .line 326
    .local v26, "en":I
    new-instance v32, Ljava/lang/String;

    #@3a3
    const/4 v5, 0x0

    #@3a4
    aget-object v5, v37, v5

    #@3a6
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->-get0(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    #@3a9
    move-result-object v5

    #@3aa
    move-object/from16 v0, v32

    #@3ac
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    #@3af
    .line 328
    .local v32, "old":Ljava/lang/String;
    const/4 v5, 0x0

    #@3b0
    aget-object v5, v37, v5

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@3b7
    .line 334
    move/from16 v0, v40

    #@3b9
    move/from16 v1, v26

    #@3bb
    if-lt v0, v1, :cond_21

    #@3bd
    .line 335
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@3bf
    .line 336
    const/16 v6, 0x22

    #@3c1
    .line 335
    move-object/from16 v0, p2

    #@3c3
    move/from16 v1, v26

    #@3c5
    move/from16 v2, v26

    #@3c7
    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@3ca
    .line 337
    move-object/from16 v0, p2

    #@3cc
    move/from16 v1, v41

    #@3ce
    move/from16 v2, v26

    #@3d0
    move-object/from16 v3, v32

    #@3d2
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@3d5
    .line 339
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@3dc
    move-result v26

    #@3dd
    .line 340
    add-int/lit8 v5, v26, -0x1

    #@3df
    if-ltz v5, :cond_20

    #@3e1
    .line 341
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@3e3
    .line 342
    add-int/lit8 v6, v26, -0x1

    #@3e5
    .line 343
    const/16 v7, 0x21

    #@3e7
    .line 341
    move-object/from16 v0, p2

    #@3e9
    move/from16 v1, v26

    #@3eb
    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@3ee
    .line 347
    :goto_8
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@3f1
    .line 353
    const/4 v5, 0x1

    #@3f2
    return v5

    #@3f3
    .line 345
    :cond_20
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@3f5
    move-object/from16 v0, p2

    #@3f7
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@3fa
    goto :goto_8

    #@3fb
    .line 349
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@3fe
    .line 350
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@401
    move-result v5

    #@402
    return v5

    #@403
    .line 357
    .end local v24    # "consider":I
    .end local v26    # "en":I
    .end local v32    # "old":Ljava/lang/String;
    .end local v37    # "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v41    # "st":I
    :cond_22
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@406
    move-result v5

    #@407
    return v5

    #@408
    .line 154
    .restart local v22    # "ch":I
    .restart local v42    # "start":I
    :catch_0
    move-exception v31

    #@409
    .local v31, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method
