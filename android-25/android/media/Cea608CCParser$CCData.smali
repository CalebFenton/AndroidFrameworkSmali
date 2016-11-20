.class Landroid/media/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static synthetic -wrap0(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 931
    const/16 v0, 0x10

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    .line 932
    const-string/jumbo v1, "RCL"

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "BS"

    #@11
    aput-object v1, v0, v4

    #@13
    const-string/jumbo v1, "AOF"

    #@16
    aput-object v1, v0, v5

    #@18
    const-string/jumbo v1, "AON"

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 933
    const-string/jumbo v1, "DER"

    #@20
    aput-object v1, v0, v7

    #@22
    const-string/jumbo v1, "RU2"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "RU3"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "RU4"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 934
    const-string/jumbo v1, "FON"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, "RDC"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "TR"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    const-string/jumbo v1, "RTD"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 935
    const-string/jumbo v1, "EDM"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "CR"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    const-string/jumbo v1, "ENM"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    const-string/jumbo v1, "EOC"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 931
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    #@6e
    .line 938
    const/16 v0, 0x10

    #@70
    new-array v0, v0, [Ljava/lang/String;

    #@72
    .line 939
    const-string/jumbo v1, "\u00ae"

    #@75
    aput-object v1, v0, v3

    #@77
    .line 940
    const-string/jumbo v1, "\u00b0"

    #@7a
    aput-object v1, v0, v4

    #@7c
    .line 941
    const-string/jumbo v1, "\u00bd"

    #@7f
    aput-object v1, v0, v5

    #@81
    .line 942
    const-string/jumbo v1, "\u00bf"

    #@84
    aput-object v1, v0, v6

    #@86
    .line 943
    const-string/jumbo v1, "\u2122"

    #@89
    aput-object v1, v0, v7

    #@8b
    .line 944
    const-string/jumbo v1, "\u00a2"

    #@8e
    const/4 v2, 0x5

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 945
    const-string/jumbo v1, "\u00a3"

    #@94
    const/4 v2, 0x6

    #@95
    aput-object v1, v0, v2

    #@97
    .line 946
    const-string/jumbo v1, "\u266a"

    #@9a
    const/4 v2, 0x7

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 947
    const-string/jumbo v1, "\u00e0"

    #@a0
    const/16 v2, 0x8

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 948
    const-string/jumbo v1, "\u00a0"

    #@a7
    const/16 v2, 0x9

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 949
    const-string/jumbo v1, "\u00e8"

    #@ae
    const/16 v2, 0xa

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 950
    const-string/jumbo v1, "\u00e2"

    #@b5
    const/16 v2, 0xb

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 951
    const-string/jumbo v1, "\u00ea"

    #@bc
    const/16 v2, 0xc

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 952
    const-string/jumbo v1, "\u00ee"

    #@c3
    const/16 v2, 0xd

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 953
    const-string/jumbo v1, "\u00f4"

    #@ca
    const/16 v2, 0xe

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 954
    const-string/jumbo v1, "\u00fb"

    #@d1
    const/16 v2, 0xf

    #@d3
    aput-object v1, v0, v2

    #@d5
    .line 938
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    #@d7
    .line 957
    const/16 v0, 0x20

    #@d9
    new-array v0, v0, [Ljava/lang/String;

    #@db
    .line 959
    const-string/jumbo v1, "\u00c1"

    #@de
    aput-object v1, v0, v3

    #@e0
    .line 960
    const-string/jumbo v1, "\u00c9"

    #@e3
    aput-object v1, v0, v4

    #@e5
    .line 961
    const-string/jumbo v1, "\u00d3"

    #@e8
    aput-object v1, v0, v5

    #@ea
    .line 962
    const-string/jumbo v1, "\u00da"

    #@ed
    aput-object v1, v0, v6

    #@ef
    .line 963
    const-string/jumbo v1, "\u00dc"

    #@f2
    aput-object v1, v0, v7

    #@f4
    .line 964
    const-string/jumbo v1, "\u00fc"

    #@f7
    const/4 v2, 0x5

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 965
    const-string/jumbo v1, "\u2018"

    #@fd
    const/4 v2, 0x6

    #@fe
    aput-object v1, v0, v2

    #@100
    .line 966
    const-string/jumbo v1, "\u00a1"

    #@103
    const/4 v2, 0x7

    #@104
    aput-object v1, v0, v2

    #@106
    .line 967
    const-string/jumbo v1, "*"

    #@109
    const/16 v2, 0x8

    #@10b
    aput-object v1, v0, v2

    #@10d
    .line 968
    const-string/jumbo v1, "\'"

    #@110
    const/16 v2, 0x9

    #@112
    aput-object v1, v0, v2

    #@114
    .line 969
    const-string/jumbo v1, "\u2014"

    #@117
    const/16 v2, 0xa

    #@119
    aput-object v1, v0, v2

    #@11b
    .line 970
    const-string/jumbo v1, "\u00a9"

    #@11e
    const/16 v2, 0xb

    #@120
    aput-object v1, v0, v2

    #@122
    .line 971
    const-string/jumbo v1, "\u2120"

    #@125
    const/16 v2, 0xc

    #@127
    aput-object v1, v0, v2

    #@129
    .line 972
    const-string/jumbo v1, "\u2022"

    #@12c
    const/16 v2, 0xd

    #@12e
    aput-object v1, v0, v2

    #@130
    .line 973
    const-string/jumbo v1, "\u201c"

    #@133
    const/16 v2, 0xe

    #@135
    aput-object v1, v0, v2

    #@137
    .line 974
    const-string/jumbo v1, "\u201d"

    #@13a
    const/16 v2, 0xf

    #@13c
    aput-object v1, v0, v2

    #@13e
    .line 976
    const-string/jumbo v1, "\u00c0"

    #@141
    const/16 v2, 0x10

    #@143
    aput-object v1, v0, v2

    #@145
    .line 977
    const-string/jumbo v1, "\u00c2"

    #@148
    const/16 v2, 0x11

    #@14a
    aput-object v1, v0, v2

    #@14c
    .line 978
    const-string/jumbo v1, "\u00c7"

    #@14f
    const/16 v2, 0x12

    #@151
    aput-object v1, v0, v2

    #@153
    .line 979
    const-string/jumbo v1, "\u00c8"

    #@156
    const/16 v2, 0x13

    #@158
    aput-object v1, v0, v2

    #@15a
    .line 980
    const-string/jumbo v1, "\u00ca"

    #@15d
    const/16 v2, 0x14

    #@15f
    aput-object v1, v0, v2

    #@161
    .line 981
    const-string/jumbo v1, "\u00cb"

    #@164
    const/16 v2, 0x15

    #@166
    aput-object v1, v0, v2

    #@168
    .line 982
    const-string/jumbo v1, "\u00eb"

    #@16b
    const/16 v2, 0x16

    #@16d
    aput-object v1, v0, v2

    #@16f
    .line 983
    const-string/jumbo v1, "\u00ce"

    #@172
    const/16 v2, 0x17

    #@174
    aput-object v1, v0, v2

    #@176
    .line 984
    const-string/jumbo v1, "\u00cf"

    #@179
    const/16 v2, 0x18

    #@17b
    aput-object v1, v0, v2

    #@17d
    .line 985
    const-string/jumbo v1, "\u00ef"

    #@180
    const/16 v2, 0x19

    #@182
    aput-object v1, v0, v2

    #@184
    .line 986
    const-string/jumbo v1, "\u00d4"

    #@187
    const/16 v2, 0x1a

    #@189
    aput-object v1, v0, v2

    #@18b
    .line 987
    const-string/jumbo v1, "\u00d9"

    #@18e
    const/16 v2, 0x1b

    #@190
    aput-object v1, v0, v2

    #@192
    .line 988
    const-string/jumbo v1, "\u00f9"

    #@195
    const/16 v2, 0x1c

    #@197
    aput-object v1, v0, v2

    #@199
    .line 989
    const-string/jumbo v1, "\u00db"

    #@19c
    const/16 v2, 0x1d

    #@19e
    aput-object v1, v0, v2

    #@1a0
    .line 990
    const-string/jumbo v1, "\u00ab"

    #@1a3
    const/16 v2, 0x1e

    #@1a5
    aput-object v1, v0, v2

    #@1a7
    .line 991
    const-string/jumbo v1, "\u00bb"

    #@1aa
    const/16 v2, 0x1f

    #@1ac
    aput-object v1, v0, v2

    #@1ae
    .line 957
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    #@1b0
    .line 994
    const/16 v0, 0x20

    #@1b2
    new-array v0, v0, [Ljava/lang/String;

    #@1b4
    .line 996
    const-string/jumbo v1, "\u00c3"

    #@1b7
    aput-object v1, v0, v3

    #@1b9
    .line 997
    const-string/jumbo v1, "\u00e3"

    #@1bc
    aput-object v1, v0, v4

    #@1be
    .line 998
    const-string/jumbo v1, "\u00cd"

    #@1c1
    aput-object v1, v0, v5

    #@1c3
    .line 999
    const-string/jumbo v1, "\u00cc"

    #@1c6
    aput-object v1, v0, v6

    #@1c8
    .line 1000
    const-string/jumbo v1, "\u00ec"

    #@1cb
    aput-object v1, v0, v7

    #@1cd
    .line 1001
    const-string/jumbo v1, "\u00d2"

    #@1d0
    const/4 v2, 0x5

    #@1d1
    aput-object v1, v0, v2

    #@1d3
    .line 1002
    const-string/jumbo v1, "\u00f2"

    #@1d6
    const/4 v2, 0x6

    #@1d7
    aput-object v1, v0, v2

    #@1d9
    .line 1003
    const-string/jumbo v1, "\u00d5"

    #@1dc
    const/4 v2, 0x7

    #@1dd
    aput-object v1, v0, v2

    #@1df
    .line 1004
    const-string/jumbo v1, "\u00f5"

    #@1e2
    const/16 v2, 0x8

    #@1e4
    aput-object v1, v0, v2

    #@1e6
    .line 1005
    const-string/jumbo v1, "{"

    #@1e9
    const/16 v2, 0x9

    #@1eb
    aput-object v1, v0, v2

    #@1ed
    .line 1006
    const-string/jumbo v1, "}"

    #@1f0
    const/16 v2, 0xa

    #@1f2
    aput-object v1, v0, v2

    #@1f4
    .line 1007
    const-string/jumbo v1, "\\"

    #@1f7
    const/16 v2, 0xb

    #@1f9
    aput-object v1, v0, v2

    #@1fb
    .line 1008
    const-string/jumbo v1, "^"

    #@1fe
    const/16 v2, 0xc

    #@200
    aput-object v1, v0, v2

    #@202
    .line 1009
    const-string/jumbo v1, "_"

    #@205
    const/16 v2, 0xd

    #@207
    aput-object v1, v0, v2

    #@209
    .line 1010
    const-string/jumbo v1, "|"

    #@20c
    const/16 v2, 0xe

    #@20e
    aput-object v1, v0, v2

    #@210
    .line 1011
    const-string/jumbo v1, "~"

    #@213
    const/16 v2, 0xf

    #@215
    aput-object v1, v0, v2

    #@217
    .line 1013
    const-string/jumbo v1, "\u00c4"

    #@21a
    const/16 v2, 0x10

    #@21c
    aput-object v1, v0, v2

    #@21e
    .line 1014
    const-string/jumbo v1, "\u00e4"

    #@221
    const/16 v2, 0x11

    #@223
    aput-object v1, v0, v2

    #@225
    .line 1015
    const-string/jumbo v1, "\u00d6"

    #@228
    const/16 v2, 0x12

    #@22a
    aput-object v1, v0, v2

    #@22c
    .line 1016
    const-string/jumbo v1, "\u00f6"

    #@22f
    const/16 v2, 0x13

    #@231
    aput-object v1, v0, v2

    #@233
    .line 1017
    const-string/jumbo v1, "\u00df"

    #@236
    const/16 v2, 0x14

    #@238
    aput-object v1, v0, v2

    #@23a
    .line 1018
    const-string/jumbo v1, "\u00a5"

    #@23d
    const/16 v2, 0x15

    #@23f
    aput-object v1, v0, v2

    #@241
    .line 1019
    const-string/jumbo v1, "\u00a4"

    #@244
    const/16 v2, 0x16

    #@246
    aput-object v1, v0, v2

    #@248
    .line 1020
    const-string/jumbo v1, "\u2502"

    #@24b
    const/16 v2, 0x17

    #@24d
    aput-object v1, v0, v2

    #@24f
    .line 1021
    const-string/jumbo v1, "\u00c5"

    #@252
    const/16 v2, 0x18

    #@254
    aput-object v1, v0, v2

    #@256
    .line 1022
    const-string/jumbo v1, "\u00e5"

    #@259
    const/16 v2, 0x19

    #@25b
    aput-object v1, v0, v2

    #@25d
    .line 1023
    const-string/jumbo v1, "\u00d8"

    #@260
    const/16 v2, 0x1a

    #@262
    aput-object v1, v0, v2

    #@264
    .line 1024
    const-string/jumbo v1, "\u00f8"

    #@267
    const/16 v2, 0x1b

    #@269
    aput-object v1, v0, v2

    #@26b
    .line 1025
    const-string/jumbo v1, "\u250c"

    #@26e
    const/16 v2, 0x1c

    #@270
    aput-object v1, v0, v2

    #@272
    .line 1026
    const-string/jumbo v1, "\u2510"

    #@275
    const/16 v2, 0x1d

    #@277
    aput-object v1, v0, v2

    #@279
    .line 1027
    const-string/jumbo v1, "\u2514"

    #@27c
    const/16 v2, 0x1e

    #@27e
    aput-object v1, v0, v2

    #@280
    .line 1028
    const-string/jumbo v1, "\u2518"

    #@283
    const/16 v2, 0x1f

    #@285
    aput-object v1, v0, v2

    #@287
    .line 994
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    #@289
    .line 926
    return-void
.end method

.method constructor <init>(BBB)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "data1"    # B
    .param p3, "data2"    # B

    #@0
    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1045
    iput-byte p1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@5
    .line 1046
    iput-byte p2, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@7
    .line 1047
    iput-byte p3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@9
    .line 1044
    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "ctrlCode"    # I

    #@0
    .prologue
    .line 1104
    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    #@2
    add-int/lit8 v1, p1, -0x20

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method static fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;
    .locals 6
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 1032
    array-length v2, p0

    #@1
    div-int/lit8 v2, v2, 0x3

    #@3
    new-array v0, v2, [Landroid/media/Cea608CCParser$CCData;

    #@5
    .line 1034
    .local v0, "ccData":[Landroid/media/Cea608CCParser$CCData;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 1035
    new-instance v2, Landroid/media/Cea608CCParser$CCData;

    #@b
    .line 1036
    mul-int/lit8 v3, v1, 0x3

    #@d
    aget-byte v3, p0, v3

    #@f
    .line 1037
    mul-int/lit8 v4, v1, 0x3

    #@11
    add-int/lit8 v4, v4, 0x1

    #@13
    aget-byte v4, p0, v4

    #@15
    .line 1038
    mul-int/lit8 v5, v1, 0x3

    #@17
    add-int/lit8 v5, v5, 0x2

    #@19
    aget-byte v5, p0, v5

    #@1b
    .line 1035
    invoke-direct {v2, v3, v4, v5}, Landroid/media/Cea608CCParser$CCData;-><init>(BBB)V

    #@1e
    aput-object v2, v0, v1

    #@20
    .line 1034
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1041
    :cond_0
    return-object v0
.end method

.method private getBasicChar(B)C
    .locals 1
    .param p1, "data"    # B

    #@0
    .prologue
    .line 1125
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1136
    int-to-char v0, p1

    #@4
    .line 1138
    :goto_0
    return v0

    #@5
    .line 1126
    :sswitch_0
    const/16 v0, 0xe1

    #@7
    .local v0, "c":C
    goto :goto_0

    #@8
    .line 1127
    .end local v0    # "c":C
    :sswitch_1
    const/16 v0, 0xe9

    #@a
    .restart local v0    # "c":C
    goto :goto_0

    #@b
    .line 1128
    .end local v0    # "c":C
    :sswitch_2
    const/16 v0, 0xed

    #@d
    .restart local v0    # "c":C
    goto :goto_0

    #@e
    .line 1129
    .end local v0    # "c":C
    :sswitch_3
    const/16 v0, 0xf3

    #@10
    .restart local v0    # "c":C
    goto :goto_0

    #@11
    .line 1130
    .end local v0    # "c":C
    :sswitch_4
    const/16 v0, 0xfa

    #@13
    .restart local v0    # "c":C
    goto :goto_0

    #@14
    .line 1131
    .end local v0    # "c":C
    :sswitch_5
    const/16 v0, 0xe7

    #@16
    .restart local v0    # "c":C
    goto :goto_0

    #@17
    .line 1132
    .end local v0    # "c":C
    :sswitch_6
    const/16 v0, 0xf7

    #@19
    .restart local v0    # "c":C
    goto :goto_0

    #@1a
    .line 1133
    .end local v0    # "c":C
    :sswitch_7
    const/16 v0, 0xd1

    #@1c
    .restart local v0    # "c":C
    goto :goto_0

    #@1d
    .line 1134
    .end local v0    # "c":C
    :sswitch_8
    const/16 v0, 0xf1

    #@1f
    .restart local v0    # "c":C
    goto :goto_0

    #@20
    .line 1135
    .end local v0    # "c":C
    :sswitch_9
    const/16 v0, 0x2588

    #@22
    .restart local v0    # "c":C
    goto :goto_0

    #@23
    .line 1125
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5c -> :sswitch_1
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_4
        0x7b -> :sswitch_5
        0x7c -> :sswitch_6
        0x7d -> :sswitch_7
        0x7e -> :sswitch_8
        0x7f -> :sswitch_9
    .end sparse-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x7f

    #@2
    const/16 v2, 0x20

    #@4
    .line 1142
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@6
    if-lt v1, v2, :cond_1

    #@8
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@a
    if-gt v1, v3, :cond_1

    #@c
    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const/4 v1, 0x2

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 1144
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@14
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 1145
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1d
    if-lt v1, v2, :cond_0

    #@1f
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@21
    if-gt v1, v3, :cond_0

    #@23
    .line 1146
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@25
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 1148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 1151
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    #@32
    return-object v1
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3f

    #@2
    const/16 v2, 0x20

    #@4
    .line 1164
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@6
    const/16 v1, 0x12

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@c
    const/16 v1, 0x1a

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 1165
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@12
    if-lt v0, v2, :cond_1

    #@14
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@16
    if-gt v0, v3, :cond_1

    #@18
    .line 1167
    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    #@1a
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1c
    add-int/lit8 v1, v1, -0x20

    #@1e
    aget-object v0, v0, v1

    #@20
    return-object v0

    #@21
    .line 1168
    :cond_1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@23
    const/16 v1, 0x13

    #@25
    if-eq v0, v1, :cond_2

    #@27
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@29
    const/16 v1, 0x1b

    #@2b
    if-ne v0, v1, :cond_3

    #@2d
    .line 1169
    :cond_2
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@2f
    if-lt v0, v2, :cond_3

    #@31
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@33
    if-gt v0, v3, :cond_3

    #@35
    .line 1171
    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    #@37
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@39
    add-int/lit8 v1, v1, -0x20

    #@3b
    aget-object v0, v0, v1

    #@3d
    return-object v0

    #@3e
    .line 1174
    :cond_3
    const/4 v0, 0x0

    #@3f
    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1155
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@2
    const/16 v1, 0x11

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@8
    const/16 v1, 0x19

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1156
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@e
    const/16 v1, 0x30

    #@10
    if-lt v0, v1, :cond_1

    #@12
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@14
    const/16 v1, 0x3f

    #@16
    if-gt v0, v1, :cond_1

    #@18
    .line 1157
    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    #@1a
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1c
    add-int/lit8 v1, v1, -0x30

    #@1e
    aget-object v0, v0, v1

    #@20
    return-object v0

    #@21
    .line 1160
    :cond_1
    const/4 v0, 0x0

    #@22
    return-object v0
.end method

.method private isBasicChar()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1108
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@3
    const/16 v2, 0x20

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@9
    const/16 v2, 0x7f

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private isExtendedChar()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1117
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@3
    const/16 v2, 0x12

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@9
    const/16 v2, 0x1a

    #@b
    if-ne v1, v2, :cond_2

    #@d
    .line 1119
    :cond_0
    :goto_0
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@f
    const/16 v2, 0x20

    #@11
    if-lt v1, v2, :cond_1

    #@13
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@15
    const/16 v2, 0x3f

    #@17
    if-gt v1, v2, :cond_1

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1117
    :cond_1
    return v0

    #@1b
    .line 1118
    :cond_2
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@1d
    const/16 v2, 0x13

    #@1f
    if-eq v1, v2, :cond_0

    #@21
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@23
    const/16 v2, 0x1b

    #@25
    if-ne v1, v2, :cond_1

    #@27
    goto :goto_0
.end method

.method private isSpecialChar()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1112
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@3
    const/16 v2, 0x11

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@9
    const/16 v2, 0x19

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1113
    :cond_0
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@f
    const/16 v2, 0x30

    #@11
    if-lt v1, v2, :cond_1

    #@13
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@15
    const/16 v2, 0x3f

    #@17
    if-gt v1, v2, :cond_1

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1112
    :cond_1
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .locals 2

    #@0
    .prologue
    .line 1051
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@2
    const/16 v1, 0x14

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@8
    const/16 v1, 0x1c

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1052
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@e
    const/16 v1, 0x20

    #@10
    if-lt v0, v1, :cond_1

    #@12
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@14
    const/16 v1, 0x2f

    #@16
    if-gt v0, v1, :cond_1

    #@18
    .line 1053
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1a
    return v0

    #@1b
    .line 1055
    :cond_1
    const/4 v0, -0x1

    #@1c
    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1090
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1092
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 1093
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1095
    if-nez v0, :cond_0

    #@c
    .line 1096
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1100
    :cond_0
    return-object v0
.end method

.method getMidRow()Landroid/media/Cea608CCParser$StyleCode;
    .locals 2

    #@0
    .prologue
    .line 1061
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@2
    const/16 v1, 0x11

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@8
    const/16 v1, 0x19

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1062
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@e
    const/16 v1, 0x20

    #@10
    if-lt v0, v1, :cond_1

    #@12
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@14
    const/16 v1, 0x2f

    #@16
    if-gt v0, v1, :cond_1

    #@18
    .line 1063
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1a
    invoke-static {v0}, Landroid/media/Cea608CCParser$StyleCode;->fromByte(B)Landroid/media/Cea608CCParser$StyleCode;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 1065
    :cond_1
    const/4 v0, 0x0

    #@20
    return-object v0
.end method

.method getPAC()Landroid/media/Cea608CCParser$PAC;
    .locals 2

    #@0
    .prologue
    .line 1069
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@2
    and-int/lit8 v0, v0, 0x70

    #@4
    const/16 v1, 0x10

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 1070
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@a
    and-int/lit8 v0, v0, 0x40

    #@c
    const/16 v1, 0x40

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 1071
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@12
    and-int/lit8 v0, v0, 0x7

    #@14
    if-nez v0, :cond_0

    #@16
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@18
    and-int/lit8 v0, v0, 0x20

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1072
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@1e
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@20
    invoke-static {v0, v1}, Landroid/media/Cea608CCParser$PAC;->fromBytes(BB)Landroid/media/Cea608CCParser$PAC;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 1074
    :cond_1
    const/4 v0, 0x0

    #@26
    return-object v0
.end method

.method getTabOffset()I
    .locals 2

    #@0
    .prologue
    .line 1078
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@2
    const/16 v1, 0x17

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@8
    const/16 v1, 0x1f

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1079
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@e
    const/16 v1, 0x21

    #@10
    if-lt v0, v1, :cond_1

    #@12
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@14
    const/16 v1, 0x23

    #@16
    if-gt v0, v1, :cond_1

    #@18
    .line 1080
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@1a
    and-int/lit8 v0, v0, 0x3

    #@1c
    return v0

    #@1d
    .line 1082
    :cond_1
    const/4 v0, 0x0

    #@1e
    return v0
.end method

.method isDisplayableChar()Z
    .locals 1

    #@0
    .prologue
    .line 1086
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isBasicChar()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isSpecialChar()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    const/4 v10, 0x3

    #@3
    const/4 v9, 0x2

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 1181
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@8
    if-ge v4, v5, :cond_0

    #@a
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@c
    if-ge v4, v5, :cond_0

    #@e
    .line 1183
    const-string/jumbo v4, "[%d]Null: %02x %02x"

    #@11
    new-array v5, v10, [Ljava/lang/Object;

    #@13
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@15
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@18
    move-result-object v6

    #@19
    aput-object v6, v5, v7

    #@1b
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@1d
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@20
    move-result-object v6

    #@21
    aput-object v6, v5, v8

    #@23
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@25
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@28
    move-result-object v6

    #@29
    aput-object v6, v5, v9

    #@2b
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4

    #@30
    .line 1186
    :cond_0
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    #@33
    move-result v0

    #@34
    .line 1187
    .local v0, "ctrlCode":I
    const/4 v4, -0x1

    #@35
    if-eq v0, v4, :cond_1

    #@37
    .line 1188
    const-string/jumbo v4, "[%d]%s"

    #@3a
    new-array v5, v9, [Ljava/lang/Object;

    #@3c
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@3e
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@41
    move-result-object v6

    #@42
    aput-object v6, v5, v7

    #@44
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    aput-object v6, v5, v8

    #@4a
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    return-object v4

    #@4f
    .line 1191
    :cond_1
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    #@52
    move-result v3

    #@53
    .line 1192
    .local v3, "tabOffset":I
    if-lez v3, :cond_2

    #@55
    .line 1193
    const-string/jumbo v4, "[%d]Tab%d"

    #@58
    new-array v5, v9, [Ljava/lang/Object;

    #@5a
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@5c
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@5f
    move-result-object v6

    #@60
    aput-object v6, v5, v7

    #@62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v6

    #@66
    aput-object v6, v5, v8

    #@68
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    return-object v4

    #@6d
    .line 1196
    :cond_2
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    #@70
    move-result-object v2

    #@71
    .line 1197
    .local v2, "pac":Landroid/media/Cea608CCParser$PAC;
    if-eqz v2, :cond_3

    #@73
    .line 1198
    const-string/jumbo v4, "[%d]PAC: %s"

    #@76
    new-array v5, v9, [Ljava/lang/Object;

    #@78
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@7a
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@7d
    move-result-object v6

    #@7e
    aput-object v6, v5, v7

    #@80
    invoke-virtual {v2}, Landroid/media/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    aput-object v6, v5, v8

    #@86
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    return-object v4

    #@8b
    .line 1201
    :cond_3
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    #@8e
    move-result-object v1

    #@8f
    .line 1202
    .local v1, "m":Landroid/media/Cea608CCParser$StyleCode;
    if-eqz v1, :cond_4

    #@91
    .line 1203
    const-string/jumbo v4, "[%d]Mid-row: %s"

    #@94
    new-array v5, v9, [Ljava/lang/Object;

    #@96
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@98
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@9b
    move-result-object v6

    #@9c
    aput-object v6, v5, v7

    #@9e
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    aput-object v6, v5, v8

    #@a4
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    return-object v4

    #@a9
    .line 1206
    :cond_4
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_5

    #@af
    .line 1207
    const-string/jumbo v4, "[%d]Displayable: %s (%02x %02x)"

    #@b2
    const/4 v5, 0x4

    #@b3
    new-array v5, v5, [Ljava/lang/Object;

    #@b5
    .line 1208
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@b7
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@ba
    move-result-object v6

    #@bb
    aput-object v6, v5, v7

    #@bd
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    aput-object v6, v5, v8

    #@c3
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@c5
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@c8
    move-result-object v6

    #@c9
    aput-object v6, v5, v9

    #@cb
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@cd
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@d0
    move-result-object v6

    #@d1
    aput-object v6, v5, v10

    #@d3
    .line 1207
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    return-object v4

    #@d8
    .line 1211
    :cond_5
    const-string/jumbo v4, "[%d]Invalid: %02x %02x"

    #@db
    new-array v5, v10, [Ljava/lang/Object;

    #@dd
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    #@df
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@e2
    move-result-object v6

    #@e3
    aput-object v6, v5, v7

    #@e5
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    #@e7
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@ea
    move-result-object v6

    #@eb
    aput-object v6, v5, v8

    #@ed
    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    #@ef
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@f2
    move-result-object v6

    #@f3
    aput-object v6, v5, v9

    #@f5
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f8
    move-result-object v4

    #@f9
    return-object v4
.end method
