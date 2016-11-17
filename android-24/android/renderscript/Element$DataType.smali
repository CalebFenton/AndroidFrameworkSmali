.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_16:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/renderscript/Element$DataType;

.field public static final enum NONE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_FONT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/16 v8, 0x8

    #@3
    const/4 v7, 0x4

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x2

    #@6
    .line 121
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@8
    const-string/jumbo v1, "NONE"

    #@b
    invoke-direct {v0, v1, v9, v9, v9}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@e
    sput-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    #@10
    .line 122
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@12
    const-string/jumbo v1, "FLOAT_16"

    #@15
    invoke-direct {v0, v1, v6, v6, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@18
    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@1a
    .line 123
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@1c
    const-string/jumbo v1, "FLOAT_32"

    #@1f
    invoke-direct {v0, v1, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@22
    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@24
    .line 124
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@26
    const-string/jumbo v1, "FLOAT_64"

    #@29
    const/4 v2, 0x3

    #@2a
    const/4 v3, 0x3

    #@2b
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@2e
    sput-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@30
    .line 125
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@32
    const-string/jumbo v1, "SIGNED_8"

    #@35
    invoke-direct {v0, v1, v7, v7, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@38
    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@3a
    .line 126
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@3c
    const-string/jumbo v1, "SIGNED_16"

    #@3f
    const/4 v2, 0x5

    #@40
    const/4 v3, 0x5

    #@41
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@44
    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@46
    .line 127
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@48
    const-string/jumbo v1, "SIGNED_32"

    #@4b
    const/4 v2, 0x6

    #@4c
    const/4 v3, 0x6

    #@4d
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@50
    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@52
    .line 128
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@54
    const-string/jumbo v1, "SIGNED_64"

    #@57
    const/4 v2, 0x7

    #@58
    const/4 v3, 0x7

    #@59
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@5c
    sput-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@5e
    .line 129
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@60
    const-string/jumbo v1, "UNSIGNED_8"

    #@63
    invoke-direct {v0, v1, v8, v8, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@66
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@68
    .line 130
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@6a
    const-string/jumbo v1, "UNSIGNED_16"

    #@6d
    const/16 v2, 0x9

    #@6f
    const/16 v3, 0x9

    #@71
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@74
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@76
    .line 131
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@78
    const-string/jumbo v1, "UNSIGNED_32"

    #@7b
    const/16 v2, 0xa

    #@7d
    const/16 v3, 0xa

    #@7f
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@82
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@84
    .line 132
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@86
    const-string/jumbo v1, "UNSIGNED_64"

    #@89
    const/16 v2, 0xb

    #@8b
    const/16 v3, 0xb

    #@8d
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@90
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@92
    .line 134
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@94
    const-string/jumbo v1, "BOOLEAN"

    #@97
    const/16 v2, 0xc

    #@99
    const/16 v3, 0xc

    #@9b
    invoke-direct {v0, v1, v2, v3, v6}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@9e
    sput-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    #@a0
    .line 136
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@a2
    const-string/jumbo v1, "UNSIGNED_5_6_5"

    #@a5
    const/16 v2, 0xd

    #@a7
    const/16 v3, 0xd

    #@a9
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@ac
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@ae
    .line 137
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@b0
    const-string/jumbo v1, "UNSIGNED_5_5_5_1"

    #@b3
    const/16 v2, 0xe

    #@b5
    const/16 v3, 0xe

    #@b7
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@ba
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@bc
    .line 138
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@be
    const-string/jumbo v1, "UNSIGNED_4_4_4_4"

    #@c1
    const/16 v2, 0xf

    #@c3
    const/16 v3, 0xf

    #@c5
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@c8
    sput-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@ca
    .line 140
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@cc
    const-string/jumbo v1, "MATRIX_4X4"

    #@cf
    const/16 v2, 0x10

    #@d1
    const/16 v3, 0x10

    #@d3
    const/16 v4, 0x40

    #@d5
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@d8
    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    #@da
    .line 141
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@dc
    const-string/jumbo v1, "MATRIX_3X3"

    #@df
    const/16 v2, 0x11

    #@e1
    const/16 v3, 0x11

    #@e3
    const/16 v4, 0x24

    #@e5
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@e8
    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    #@ea
    .line 142
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@ec
    const-string/jumbo v1, "MATRIX_2X2"

    #@ef
    const/16 v2, 0x12

    #@f1
    const/16 v3, 0x12

    #@f3
    const/16 v4, 0x10

    #@f5
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    #@f8
    sput-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    #@fa
    .line 144
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@fc
    const-string/jumbo v1, "RS_ELEMENT"

    #@ff
    const/16 v2, 0x13

    #@101
    const/16 v3, 0x3e8

    #@103
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@106
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    #@108
    .line 145
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@10a
    const-string/jumbo v1, "RS_TYPE"

    #@10d
    const/16 v2, 0x14

    #@10f
    const/16 v3, 0x3e9

    #@111
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@114
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    #@116
    .line 146
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@118
    const-string/jumbo v1, "RS_ALLOCATION"

    #@11b
    const/16 v2, 0x15

    #@11d
    const/16 v3, 0x3ea

    #@11f
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@122
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    #@124
    .line 147
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@126
    const-string/jumbo v1, "RS_SAMPLER"

    #@129
    const/16 v2, 0x16

    #@12b
    const/16 v3, 0x3eb

    #@12d
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@130
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    #@132
    .line 148
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@134
    const-string/jumbo v1, "RS_SCRIPT"

    #@137
    const/16 v2, 0x17

    #@139
    const/16 v3, 0x3ec

    #@13b
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@13e
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    #@140
    .line 149
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@142
    const-string/jumbo v1, "RS_MESH"

    #@145
    const/16 v2, 0x18

    #@147
    const/16 v3, 0x3ed

    #@149
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@14c
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    #@14e
    .line 150
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@150
    const-string/jumbo v1, "RS_PROGRAM_FRAGMENT"

    #@153
    const/16 v2, 0x19

    #@155
    const/16 v3, 0x3ee

    #@157
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@15a
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    #@15c
    .line 151
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@15e
    const-string/jumbo v1, "RS_PROGRAM_VERTEX"

    #@161
    const/16 v2, 0x1a

    #@163
    const/16 v3, 0x3ef

    #@165
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@168
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    #@16a
    .line 152
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@16c
    const-string/jumbo v1, "RS_PROGRAM_RASTER"

    #@16f
    const/16 v2, 0x1b

    #@171
    const/16 v3, 0x3f0

    #@173
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@176
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    #@178
    .line 153
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@17a
    const-string/jumbo v1, "RS_PROGRAM_STORE"

    #@17d
    const/16 v2, 0x1c

    #@17f
    const/16 v3, 0x3f1

    #@181
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@184
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    #@186
    .line 154
    new-instance v0, Landroid/renderscript/Element$DataType;

    #@188
    const-string/jumbo v1, "RS_FONT"

    #@18b
    const/16 v2, 0x1d

    #@18d
    const/16 v3, 0x3f2

    #@18f
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    #@192
    sput-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    #@194
    .line 120
    const/16 v0, 0x1e

    #@196
    new-array v0, v0, [Landroid/renderscript/Element$DataType;

    #@198
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    #@19a
    aput-object v1, v0, v9

    #@19c
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@19e
    aput-object v1, v0, v6

    #@1a0
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@1a2
    aput-object v1, v0, v5

    #@1a4
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@1a6
    const/4 v2, 0x3

    #@1a7
    aput-object v1, v0, v2

    #@1a9
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@1ab
    aput-object v1, v0, v7

    #@1ad
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@1af
    const/4 v2, 0x5

    #@1b0
    aput-object v1, v0, v2

    #@1b2
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@1b4
    const/4 v2, 0x6

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@1b9
    const/4 v2, 0x7

    #@1ba
    aput-object v1, v0, v2

    #@1bc
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@1be
    aput-object v1, v0, v8

    #@1c0
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@1c2
    const/16 v2, 0x9

    #@1c4
    aput-object v1, v0, v2

    #@1c6
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@1c8
    const/16 v2, 0xa

    #@1ca
    aput-object v1, v0, v2

    #@1cc
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@1ce
    const/16 v2, 0xb

    #@1d0
    aput-object v1, v0, v2

    #@1d2
    sget-object v1, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    #@1d4
    const/16 v2, 0xc

    #@1d6
    aput-object v1, v0, v2

    #@1d8
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@1da
    const/16 v2, 0xd

    #@1dc
    aput-object v1, v0, v2

    #@1de
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@1e0
    const/16 v2, 0xe

    #@1e2
    aput-object v1, v0, v2

    #@1e4
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@1e6
    const/16 v2, 0xf

    #@1e8
    aput-object v1, v0, v2

    #@1ea
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    #@1ec
    const/16 v2, 0x10

    #@1ee
    aput-object v1, v0, v2

    #@1f0
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    #@1f2
    const/16 v2, 0x11

    #@1f4
    aput-object v1, v0, v2

    #@1f6
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    #@1f8
    const/16 v2, 0x12

    #@1fa
    aput-object v1, v0, v2

    #@1fc
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    #@1fe
    const/16 v2, 0x13

    #@200
    aput-object v1, v0, v2

    #@202
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    #@204
    const/16 v2, 0x14

    #@206
    aput-object v1, v0, v2

    #@208
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    #@20a
    const/16 v2, 0x15

    #@20c
    aput-object v1, v0, v2

    #@20e
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    #@210
    const/16 v2, 0x16

    #@212
    aput-object v1, v0, v2

    #@214
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    #@216
    const/16 v2, 0x17

    #@218
    aput-object v1, v0, v2

    #@21a
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    #@21c
    const/16 v2, 0x18

    #@21e
    aput-object v1, v0, v2

    #@220
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    #@222
    const/16 v2, 0x19

    #@224
    aput-object v1, v0, v2

    #@226
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    #@228
    const/16 v2, 0x1a

    #@22a
    aput-object v1, v0, v2

    #@22c
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    #@22e
    const/16 v2, 0x1b

    #@230
    aput-object v1, v0, v2

    #@232
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    #@234
    const/16 v2, 0x1c

    #@236
    aput-object v1, v0, v2

    #@238
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    #@23a
    const/16 v2, 0x1d

    #@23c
    aput-object v1, v0, v2

    #@23e
    sput-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    #@240
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "id"    # I

    #@0
    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 164
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    #@5
    .line 165
    const/4 v0, 0x4

    #@6
    iput v0, p0, Landroid/renderscript/Element$DataType;->mSize:I

    #@8
    .line 166
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@a
    const/16 v1, 0x8

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 167
    const/16 v0, 0x20

    #@10
    iput v0, p0, Landroid/renderscript/Element$DataType;->mSize:I

    #@12
    .line 163
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "size"    # I

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 159
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    #@5
    .line 160
    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    #@7
    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    const-class v0, Landroid/renderscript/Element$DataType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Element$DataType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Element$DataType;
    .locals 1

    #@0
    .prologue
    .line 120
    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    #@2
    return-object v0
.end method
