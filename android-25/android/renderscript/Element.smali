.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-Element$DataKindSwitchesValues:[I

.field private static final synthetic -android-renderscript-Element$DataTypeSwitchesValues:[I


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method private static synthetic -getandroid-renderscript-Element$DataKindSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x11

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    #@1a
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    #@23
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@26
    move-result v1

    #@27
    const/16 v2, 0x12

    #@29
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@2b
    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    #@2d
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x2

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@36
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/4 v2, 0x3

    #@3b
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3d
    :goto_4
    :try_start_5
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@3f
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@42
    move-result v1

    #@43
    const/4 v2, 0x4

    #@44
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@46
    :goto_5
    :try_start_6
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@48
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@4b
    move-result v1

    #@4c
    const/16 v2, 0x13

    #@4e
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@50
    :goto_6
    :try_start_7
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@52
    invoke-virtual {v1}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@55
    move-result v1

    #@56
    const/16 v2, 0x14

    #@58
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@5a
    :goto_7
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataKindSwitchesValues:[I

    #@5c
    return-object v0

    #@5d
    :catch_0
    move-exception v1

    #@5e
    goto :goto_7

    #@5f
    :catch_1
    move-exception v1

    #@60
    goto :goto_6

    #@61
    :catch_2
    move-exception v1

    #@62
    goto :goto_5

    #@63
    :catch_3
    move-exception v1

    #@64
    goto :goto_4

    #@65
    :catch_4
    move-exception v1

    #@66
    goto :goto_3

    #@67
    :catch_5
    move-exception v1

    #@68
    goto :goto_2

    #@69
    :catch_6
    move-exception v1

    #@6a
    goto :goto_1

    #@6b
    :catch_7
    move-exception v1

    #@6c
    goto :goto_0
.end method

.method private static synthetic -getandroid-renderscript-Element$DataTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@19
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@22
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@2b
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    #@34
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0x11

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    #@3c
    :goto_4
    :try_start_5
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    #@3e
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@41
    move-result v1

    #@42
    const/16 v2, 0x12

    #@44
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    #@46
    :goto_5
    :try_start_6
    sget-object v1, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    #@48
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@4b
    move-result v1

    #@4c
    const/16 v2, 0x13

    #@4e
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    #@50
    :goto_6
    :try_start_7
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    #@52
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@55
    move-result v1

    #@56
    const/16 v2, 0x14

    #@58
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    #@5a
    :goto_7
    :try_start_8
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    #@5c
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@5f
    move-result v1

    #@60
    const/16 v2, 0x15

    #@62
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    #@64
    :goto_8
    :try_start_9
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    #@66
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@69
    move-result v1

    #@6a
    const/16 v2, 0x16

    #@6c
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    #@6e
    :goto_9
    :try_start_a
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    #@70
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@73
    move-result v1

    #@74
    const/16 v2, 0x17

    #@76
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    #@78
    :goto_a
    :try_start_b
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    #@7a
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@7d
    move-result v1

    #@7e
    const/16 v2, 0x18

    #@80
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    #@82
    :goto_b
    :try_start_c
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    #@84
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@87
    move-result v1

    #@88
    const/16 v2, 0x19

    #@8a
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    #@8c
    :goto_c
    :try_start_d
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    #@8e
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@91
    move-result v1

    #@92
    const/16 v2, 0x1a

    #@94
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    #@96
    :goto_d
    :try_start_e
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    #@98
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@9b
    move-result v1

    #@9c
    const/16 v2, 0x1b

    #@9e
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    #@a0
    :goto_e
    :try_start_f
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    #@a2
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@a5
    move-result v1

    #@a6
    const/16 v2, 0x1c

    #@a8
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    #@aa
    :goto_f
    :try_start_10
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    #@ac
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@af
    move-result v1

    #@b0
    const/16 v2, 0x1d

    #@b2
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    #@b4
    :goto_10
    :try_start_11
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    #@b6
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@b9
    move-result v1

    #@ba
    const/16 v2, 0x1e

    #@bc
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    #@be
    :goto_11
    :try_start_12
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    #@c0
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@c3
    move-result v1

    #@c4
    const/16 v2, 0x1f

    #@c6
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    #@c8
    :goto_12
    :try_start_13
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@ca
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@cd
    move-result v1

    #@ce
    const/4 v2, 0x5

    #@cf
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    #@d1
    :goto_13
    :try_start_14
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@d3
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@d6
    move-result v1

    #@d7
    const/4 v2, 0x6

    #@d8
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    #@da
    :goto_14
    :try_start_15
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@dc
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@df
    move-result v1

    #@e0
    const/4 v2, 0x7

    #@e1
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    #@e3
    :goto_15
    :try_start_16
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@e5
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@e8
    move-result v1

    #@e9
    const/16 v2, 0x8

    #@eb
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    #@ed
    :goto_16
    :try_start_17
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@ef
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@f2
    move-result v1

    #@f3
    const/16 v2, 0x9

    #@f5
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    #@f7
    :goto_17
    :try_start_18
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@f9
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@fc
    move-result v1

    #@fd
    const/16 v2, 0xa

    #@ff
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    #@101
    :goto_18
    :try_start_19
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@103
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@106
    move-result v1

    #@107
    const/16 v2, 0x20

    #@109
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    #@10b
    :goto_19
    :try_start_1a
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@10d
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@110
    move-result v1

    #@111
    const/16 v2, 0x21

    #@113
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    #@115
    :goto_1a
    :try_start_1b
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@117
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@11a
    move-result v1

    #@11b
    const/16 v2, 0x22

    #@11d
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    #@11f
    :goto_1b
    :try_start_1c
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@121
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@124
    move-result v1

    #@125
    const/16 v2, 0xb

    #@127
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    #@129
    :goto_1c
    :try_start_1d
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@12b
    invoke-virtual {v1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@12e
    move-result v1

    #@12f
    const/16 v2, 0xc

    #@131
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    #@133
    :goto_1d
    sput-object v0, Landroid/renderscript/Element;->-android-renderscript-Element$DataTypeSwitchesValues:[I

    #@135
    return-object v0

    #@136
    :catch_0
    move-exception v1

    #@137
    goto :goto_1d

    #@138
    :catch_1
    move-exception v1

    #@139
    goto :goto_1c

    #@13a
    :catch_2
    move-exception v1

    #@13b
    goto :goto_1b

    #@13c
    :catch_3
    move-exception v1

    #@13d
    goto :goto_1a

    #@13e
    :catch_4
    move-exception v1

    #@13f
    goto :goto_19

    #@140
    :catch_5
    move-exception v1

    #@141
    goto :goto_18

    #@142
    :catch_6
    move-exception v1

    #@143
    goto :goto_17

    #@144
    :catch_7
    move-exception v1

    #@145
    goto :goto_16

    #@146
    :catch_8
    move-exception v1

    #@147
    goto :goto_15

    #@148
    :catch_9
    move-exception v1

    #@149
    goto :goto_14

    #@14a
    :catch_a
    move-exception v1

    #@14b
    goto :goto_13

    #@14c
    :catch_b
    move-exception v1

    #@14d
    goto/16 :goto_12

    #@14f
    :catch_c
    move-exception v1

    #@150
    goto/16 :goto_11

    #@152
    :catch_d
    move-exception v1

    #@153
    goto/16 :goto_10

    #@155
    :catch_e
    move-exception v1

    #@156
    goto/16 :goto_f

    #@158
    :catch_f
    move-exception v1

    #@159
    goto/16 :goto_e

    #@15b
    :catch_10
    move-exception v1

    #@15c
    goto/16 :goto_d

    #@15e
    :catch_11
    move-exception v1

    #@15f
    goto/16 :goto_c

    #@161
    :catch_12
    move-exception v1

    #@162
    goto/16 :goto_b

    #@164
    :catch_13
    move-exception v1

    #@165
    goto/16 :goto_a

    #@167
    :catch_14
    move-exception v1

    #@168
    goto/16 :goto_9

    #@16a
    :catch_15
    move-exception v1

    #@16b
    goto/16 :goto_8

    #@16d
    :catch_16
    move-exception v1

    #@16e
    goto/16 :goto_7

    #@170
    :catch_17
    move-exception v1

    #@171
    goto/16 :goto_6

    #@173
    :catch_18
    move-exception v1

    #@174
    goto/16 :goto_5

    #@176
    :catch_19
    move-exception v1

    #@177
    goto/16 :goto_4

    #@179
    :catch_1a
    move-exception v1

    #@17a
    goto/16 :goto_3

    #@17c
    :catch_1b
    move-exception v1

    #@17d
    goto/16 :goto_2

    #@17f
    :catch_1c
    move-exception v1

    #@180
    goto/16 :goto_1

    #@182
    :catch_1d
    move-exception v1

    #@183
    goto/16 :goto_0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1098
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 1097
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "dk"    # Landroid/renderscript/Element$DataKind;
    .param p6, "norm"    # Z
    .param p7, "size"    # I

    #@0
    .prologue
    .line 1078
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 1079
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@5
    if-eq p4, v0, :cond_1

    #@7
    .line 1080
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@9
    if-eq p4, v0, :cond_1

    #@b
    .line 1081
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@d
    if-eq p4, v0, :cond_1

    #@f
    .line 1082
    const/4 v0, 0x3

    #@10
    if-ne p7, v0, :cond_0

    #@12
    .line 1083
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    #@14
    mul-int/lit8 v0, v0, 0x4

    #@16
    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    #@18
    .line 1090
    :goto_0
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@1a
    .line 1091
    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@1c
    .line 1092
    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    #@1e
    .line 1093
    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@20
    .line 1094
    iget-object v0, p0, Landroid/renderscript/Element;->guard:Ldalvik/system/CloseGuard;

    #@22
    const-string/jumbo v1, "destroy"

    #@25
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@28
    .line 1077
    return-void

    #@29
    .line 1085
    :cond_0
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    #@2b
    mul-int/2addr v0, p7

    #@2c
    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    #@2e
    goto :goto_0

    #@2f
    .line 1088
    :cond_1
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    #@31
    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    #@33
    goto :goto_0
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # [Landroid/renderscript/Element;
    .param p5, "n"    # [Ljava/lang/String;
    .param p6, "as"    # [I

    #@0
    .prologue
    .line 1060
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 1061
    const/4 v1, 0x0

    #@4
    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    #@6
    .line 1062
    const/4 v1, 0x1

    #@7
    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@9
    .line 1063
    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@b
    .line 1064
    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@d
    .line 1065
    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@f
    .line 1066
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    #@11
    iput-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@13
    .line 1067
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@15
    iput-object v1, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@17
    .line 1068
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@19
    array-length v1, v1

    #@1a
    new-array v1, v1, [I

    #@1c
    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    #@1e
    .line 1069
    const/4 v0, 0x0

    #@1f
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@21
    array-length v1, v1

    #@22
    if-ge v0, v1, :cond_0

    #@24
    .line 1070
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    #@26
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    #@28
    aput v2, v1, v0

    #@2a
    .line 1071
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    #@2c
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@2e
    aget-object v2, v2, v0

    #@30
    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    #@32
    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@34
    aget v3, v3, v0

    #@36
    mul-int/2addr v2, v3

    #@37
    add-int/2addr v1, v2

    #@38
    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    #@3a
    .line 1069
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1073
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    #@40
    .line 1074
    iget-object v1, p0, Landroid/renderscript/Element;->guard:Ldalvik/system/CloseGuard;

    #@42
    const-string/jumbo v2, "destroy"

    #@45
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@48
    .line 1059
    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 483
    monitor-enter p0

    #@5
    .line 484
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 485
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 489
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 483
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 582
    monitor-enter p0

    #@5
    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 584
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 588
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 582
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 315
    monitor-enter p0

    #@5
    .line 316
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 317
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 321
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 315
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 461
    monitor-enter p0

    #@5
    .line 462
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 463
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 467
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 461
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static F16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 428
    monitor-enter p0

    #@5
    .line 429
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 430
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 434
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 428
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static F16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 648
    monitor-enter p0

    #@5
    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 650
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 654
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 648
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 659
    monitor-enter p0

    #@5
    .line 660
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 661
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 665
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 659
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 670
    monitor-enter p0

    #@5
    .line 671
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 672
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 676
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 670
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 439
    monitor-enter p0

    #@5
    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 441
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 445
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 439
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 681
    monitor-enter p0

    #@5
    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 683
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 687
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 681
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 692
    monitor-enter p0

    #@5
    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 694
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 698
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 692
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 703
    monitor-enter p0

    #@5
    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 705
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 709
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 703
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 450
    monitor-enter p0

    #@5
    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 452
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 456
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 450
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 714
    monitor-enter p0

    #@5
    .line 715
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 716
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 720
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 714
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 724
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 725
    monitor-enter p0

    #@5
    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 727
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 731
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 725
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 735
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 736
    monitor-enter p0

    #@5
    .line 737
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 738
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 742
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 736
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 571
    monitor-enter p0

    #@5
    .line 572
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 573
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 577
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 571
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 373
    monitor-enter p0

    #@5
    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 375
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 379
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 373
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 846
    monitor-enter p0

    #@5
    .line 847
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 848
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 852
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 846
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 857
    monitor-enter p0

    #@5
    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 859
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 863
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 857
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 867
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 868
    monitor-enter p0

    #@5
    .line 869
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 870
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 874
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 868
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 395
    monitor-enter p0

    #@5
    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 397
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 401
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 395
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 912
    monitor-enter p0

    #@5
    .line 913
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 914
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 918
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 912
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 923
    monitor-enter p0

    #@5
    .line 924
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 925
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 929
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 923
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 934
    monitor-enter p0

    #@5
    .line 935
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 936
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 940
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 934
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 417
    monitor-enter p0

    #@5
    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 419
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 423
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 417
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 978
    monitor-enter p0

    #@5
    .line 979
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 980
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 984
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 978
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 988
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 989
    monitor-enter p0

    #@5
    .line 990
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 991
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 995
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 989
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 999
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1000
    monitor-enter p0

    #@5
    .line 1001
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1002
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 1006
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 1000
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 351
    monitor-enter p0

    #@5
    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 353
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 357
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 351
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 780
    monitor-enter p0

    #@5
    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 782
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 786
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 780
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 790
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 791
    monitor-enter p0

    #@5
    .line 792
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 793
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 797
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 791
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 802
    monitor-enter p0

    #@5
    .line 803
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 804
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 808
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 802
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1034
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1050
    monitor-enter p0

    #@5
    .line 1051
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1052
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 1056
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 1050
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1038
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1039
    monitor-enter p0

    #@5
    .line 1040
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1041
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 1045
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 1039
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1021
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1022
    monitor-enter p0

    #@5
    .line 1023
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1024
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 1028
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 1022
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 516
    monitor-enter p0

    #@5
    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 518
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 522
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 516
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 527
    monitor-enter p0

    #@5
    .line 528
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 529
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 533
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 527
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 549
    monitor-enter p0

    #@5
    .line 550
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 551
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 555
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 549
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 560
    monitor-enter p0

    #@5
    .line 561
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 562
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 566
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 560
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 538
    monitor-enter p0

    #@5
    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 540
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 544
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 538
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 626
    monitor-enter p0

    #@5
    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 628
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 632
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 626
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 615
    monitor-enter p0

    #@5
    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 617
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 621
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 615
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 637
    monitor-enter p0

    #@5
    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 639
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 643
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 637
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 593
    monitor-enter p0

    #@5
    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 595
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 599
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 593
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 604
    monitor-enter p0

    #@5
    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 606
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 610
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 604
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 494
    monitor-enter p0

    #@5
    .line 495
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 496
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 500
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 494
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 505
    monitor-enter p0

    #@5
    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 507
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 511
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 505
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 472
    monitor-enter p0

    #@5
    .line 473
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 474
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 478
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 472
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 362
    monitor-enter p0

    #@5
    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 364
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 368
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 362
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 813
    monitor-enter p0

    #@5
    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 815
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 819
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 813
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 823
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 824
    monitor-enter p0

    #@5
    .line 825
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 826
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 830
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 824
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 835
    monitor-enter p0

    #@5
    .line 836
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 837
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 841
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 835
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 384
    monitor-enter p0

    #@5
    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 386
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 390
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 384
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 878
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 879
    monitor-enter p0

    #@5
    .line 880
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 881
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 885
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 879
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 890
    monitor-enter p0

    #@5
    .line 891
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 892
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 896
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 890
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 901
    monitor-enter p0

    #@5
    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 903
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 907
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 901
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 406
    monitor-enter p0

    #@5
    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 408
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 412
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 406
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 945
    monitor-enter p0

    #@5
    .line 946
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 947
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 951
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 945
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 956
    monitor-enter p0

    #@5
    .line 957
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 958
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 962
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 956
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 967
    monitor-enter p0

    #@5
    .line 968
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 969
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 973
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 967
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 333
    monitor-enter p0

    #@5
    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 335
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 339
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    #@14
    return-object v0

    #@15
    .line 333
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 747
    monitor-enter p0

    #@5
    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 749
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 753
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 747
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 758
    monitor-enter p0

    #@5
    .line 759
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 760
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 764
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 758
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 769
    monitor-enter p0

    #@5
    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 771
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 775
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    #@15
    return-object v0

    #@16
    .line 769
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public static YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1011
    monitor-enter p0

    #@5
    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1013
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@b
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@d
    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 1017
    :cond_1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    #@16
    return-object v0

    #@17
    .line 1011
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/renderscript/Element$DataKind;

    #@0
    .prologue
    .line 1217
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    #@2
    move-object/from16 v0, p2

    #@4
    if-eq v0, v2, :cond_0

    #@6
    .line 1218
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@8
    move-object/from16 v0, p2

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 1219
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    #@e
    move-object/from16 v0, p2

    #@10
    if-eq v0, v2, :cond_0

    #@12
    .line 1220
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@14
    move-object/from16 v0, p2

    #@16
    if-eq v0, v2, :cond_0

    #@18
    .line 1221
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@1a
    move-object/from16 v0, p2

    #@1c
    if-eq v0, v2, :cond_0

    #@1e
    .line 1222
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    #@20
    move-object/from16 v0, p2

    #@22
    if-eq v0, v2, :cond_0

    #@24
    .line 1223
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@26
    move-object/from16 v0, p2

    #@28
    if-eq v0, v2, :cond_0

    #@2a
    .line 1224
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@2c
    const-string/jumbo v3, "Unsupported DataKind"

    #@2f
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 1226
    :cond_0
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@35
    move-object/from16 v0, p1

    #@37
    if-eq v0, v2, :cond_1

    #@39
    .line 1227
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@3b
    move-object/from16 v0, p1

    #@3d
    if-eq v0, v2, :cond_1

    #@3f
    .line 1228
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@41
    move-object/from16 v0, p1

    #@43
    if-eq v0, v2, :cond_1

    #@45
    .line 1229
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@47
    move-object/from16 v0, p1

    #@49
    if-eq v0, v2, :cond_1

    #@4b
    .line 1230
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@4d
    move-object/from16 v0, p1

    #@4f
    if-eq v0, v2, :cond_1

    #@51
    .line 1231
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@53
    const-string/jumbo v3, "Unsupported DataType"

    #@56
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 1233
    :cond_1
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    #@5c
    move-object/from16 v0, p1

    #@5e
    if-ne v0, v2, :cond_2

    #@60
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@62
    move-object/from16 v0, p2

    #@64
    if-eq v0, v2, :cond_2

    #@66
    .line 1234
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@68
    const-string/jumbo v3, "Bad kind and type combo"

    #@6b
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v2

    #@6f
    .line 1236
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    #@71
    move-object/from16 v0, p1

    #@73
    if-ne v0, v2, :cond_3

    #@75
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@77
    move-object/from16 v0, p2

    #@79
    if-eq v0, v2, :cond_3

    #@7b
    .line 1237
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@7d
    const-string/jumbo v3, "Bad kind and type combo"

    #@80
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2

    #@84
    .line 1239
    :cond_3
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    #@86
    move-object/from16 v0, p1

    #@88
    if-ne v0, v2, :cond_4

    #@8a
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@8c
    move-object/from16 v0, p2

    #@8e
    if-eq v0, v2, :cond_4

    #@90
    .line 1240
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@92
    const-string/jumbo v3, "Bad kind and type combo"

    #@95
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@98
    throw v2

    #@99
    .line 1242
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@9b
    move-object/from16 v0, p1

    #@9d
    if-ne v0, v2, :cond_5

    #@9f
    .line 1243
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    #@a1
    move-object/from16 v0, p2

    #@a3
    if-eq v0, v2, :cond_5

    #@a5
    .line 1244
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@a7
    const-string/jumbo v3, "Bad kind and type combo"

    #@aa
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v2

    #@ae
    .line 1247
    :cond_5
    const/4 v8, 0x1

    #@af
    .line 1248
    .local v8, "size":I
    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataKindSwitchesValues()[I

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual/range {p2 .. p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    #@b6
    move-result v3

    #@b7
    aget v2, v2, v3

    #@b9
    packed-switch v2, :pswitch_data_0

    #@bc
    .line 1263
    :goto_0
    const/4 v7, 0x1

    #@bd
    .line 1264
    .local v7, "norm":Z
    move-object/from16 v0, p1

    #@bf
    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c1
    int-to-long v4, v2

    #@c2
    move-object/from16 v0, p2

    #@c4
    iget v6, v0, Landroid/renderscript/Element$DataKind;->mID:I

    #@c6
    move-object/from16 v3, p0

    #@c8
    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    #@cb
    move-result-wide v10

    #@cc
    .line 1265
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    #@ce
    move-object/from16 v12, p0

    #@d0
    move-object/from16 v13, p1

    #@d2
    move-object/from16 v14, p2

    #@d4
    move v15, v7

    #@d5
    move/from16 v16, v8

    #@d7
    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    #@da
    return-object v9

    #@db
    .line 1250
    .end local v7    # "norm":Z
    .end local v10    # "id":J
    :pswitch_0
    const/4 v8, 0x2

    #@dc
    .line 1251
    goto :goto_0

    #@dd
    .line 1253
    :pswitch_1
    const/4 v8, 0x3

    #@de
    .line 1254
    goto :goto_0

    #@df
    .line 1256
    :pswitch_2
    const/4 v8, 0x4

    #@e0
    .line 1257
    goto :goto_0

    #@e1
    .line 1259
    :pswitch_3
    const/4 v8, 0x2

    #@e2
    .line 1260
    goto :goto_0

    #@e3
    .line 1248
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;

    #@0
    .prologue
    .line 1152
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@2
    .line 1153
    .local v14, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v7, 0x0

    #@3
    .line 1154
    .local v7, "norm":Z
    const/4 v8, 0x1

    #@4
    .line 1155
    .local v8, "vecSize":I
    move-object/from16 v0, p1

    #@6
    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@8
    int-to-long v4, v2

    #@9
    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    #@b
    move-object/from16 v3, p0

    #@d
    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    #@10
    move-result-wide v10

    #@11
    .line 1156
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    #@13
    move-object/from16 v12, p0

    #@15
    move-object/from16 v13, p1

    #@17
    move v15, v7

    #@18
    move/from16 v16, v8

    #@1a
    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    #@1d
    return-object v9
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 1173
    const/4 v2, 0x2

    #@1
    move/from16 v0, p2

    #@3
    if-lt v0, v2, :cond_0

    #@5
    const/4 v2, 0x4

    #@6
    move/from16 v0, p2

    #@8
    if-le v0, v2, :cond_1

    #@a
    .line 1174
    :cond_0
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@c
    const-string/jumbo v3, "Vector size out of range 2-4."

    #@f
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 1177
    :cond_1
    invoke-static {}, Landroid/renderscript/Element;->-getandroid-renderscript-Element$DataTypeSwitchesValues()[I

    #@16
    move-result-object v2

    #@17
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    #@1a
    move-result v3

    #@1b
    aget v2, v2, v3

    #@1d
    packed-switch v2, :pswitch_data_0

    #@20
    .line 1198
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@22
    const-string/jumbo v3, "Cannot create vector of non-primitive type."

    #@25
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 1191
    :pswitch_0
    sget-object v14, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    #@2b
    .line 1192
    .local v14, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v7, 0x0

    #@2c
    .line 1193
    .local v7, "norm":Z
    move-object/from16 v0, p1

    #@2e
    iget v2, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@30
    int-to-long v4, v2

    #@31
    iget v6, v14, Landroid/renderscript/Element$DataKind;->mID:I

    #@33
    move-object/from16 v3, p0

    #@35
    move/from16 v8, p2

    #@37
    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    #@3a
    move-result-wide v10

    #@3b
    .line 1194
    .local v10, "id":J
    new-instance v9, Landroid/renderscript/Element;

    #@3d
    move-object/from16 v12, p0

    #@3f
    move-object/from16 v13, p1

    #@41
    move v15, v7

    #@42
    move/from16 v16, p2

    #@44
    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    #@47
    return-object v9

    #@48
    .line 1177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x23

    #@2
    const/4 v6, 0x0

    #@3
    .line 68
    iget-object v5, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 69
    return-void

    #@8
    .line 72
    :cond_0
    const/4 v4, 0x0

    #@9
    .line 73
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@b
    array-length v3, v5

    #@c
    .line 75
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    #@d
    .local v0, "ct":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@f
    .line 76
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@11
    aget-object v5, v5, v0

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v5

    #@17
    if-eq v5, v7, :cond_1

    #@19
    .line 77
    add-int/lit8 v4, v4, 0x1

    #@1b
    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 80
    :cond_2
    new-array v5, v4, [I

    #@20
    iput-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@22
    .line 83
    const/4 v0, 0x0

    #@23
    const/4 v1, 0x0

    #@24
    .local v1, "ctNoPadding":I
    move v2, v1

    #@25
    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_1
    if-ge v0, v3, :cond_3

    #@27
    .line 84
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@29
    aget-object v5, v5, v0

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v5

    #@2f
    if-eq v5, v7, :cond_4

    #@31
    .line 85
    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@33
    add-int/lit8 v1, v2, 0x1

    #@35
    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    #@37
    .line 83
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@39
    move v2, v1

    #@3a
    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_1

    #@3b
    .line 67
    :cond_3
    return-void

    #@3c
    :cond_4
    move v1, v2

    #@3d
    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    #@2
    return v0
.end method

.method public getDataKind()Landroid/renderscript/Element$DataKind;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@2
    return-object v0
.end method

.method public getDataType()Landroid/renderscript/Element$DataType;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@2
    return-object v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 235
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Element contains no sub-elements"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 237
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@11
    array-length v0, v0

    #@12
    if-lt p1, v0, :cond_2

    #@14
    .line 238
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@16
    const-string/jumbo v1, "Illegal sub-element index"

    #@19
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 240
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@1f
    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@21
    aget v1, v1, p1

    #@23
    aget-object v0, v0, v1

    #@25
    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 268
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Element contains no sub-elements"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 270
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@11
    array-length v0, v0

    #@12
    if-lt p1, v0, :cond_2

    #@14
    .line 271
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@16
    const-string/jumbo v1, "Illegal sub-element index"

    #@19
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 273
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@1f
    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@21
    aget v1, v1, p1

    #@23
    aget v0, v0, v1

    #@25
    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 222
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 224
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@8
    array-length v0, v0

    #@9
    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 251
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Element contains no sub-elements"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 253
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@11
    array-length v0, v0

    #@12
    if-lt p1, v0, :cond_2

    #@14
    .line 254
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@16
    const-string/jumbo v1, "Illegal sub-element index"

    #@19
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 256
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@1f
    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@21
    aget v1, v1, p1

    #@23
    aget-object v0, v0, v1

    #@25
    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 284
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Element contains no sub-elements"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 286
    :cond_0
    if-ltz p1, :cond_1

    #@f
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@11
    array-length v0, v0

    #@12
    if-lt p1, v0, :cond_2

    #@14
    .line 287
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@16
    const-string/jumbo v1, "Illegal sub-element index"

    #@19
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 289
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    #@1f
    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    #@21
    aget v1, v1, p1

    #@23
    aget v0, v0, v1

    #@25
    return v0
.end method

.method public getVectorSize()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@2
    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .locals 4
    .param p1, "e"    # Landroid/renderscript/Element;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1281
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1282
    return v0

    #@9
    .line 1289
    :cond_0
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    #@b
    iget v3, p1, Landroid/renderscript/Element;->mSize:I

    #@d
    if-ne v2, v3, :cond_2

    #@f
    .line 1290
    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@11
    sget-object v3, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    #@13
    if-eq v2, v3, :cond_2

    #@15
    .line 1291
    iget-object v2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@17
    iget-object v3, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    .line 1292
    iget v2, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@1d
    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    .line 1289
    :goto_0
    return v0

    #@22
    :cond_1
    move v0, v1

    #@23
    .line 1292
    goto :goto_0

    #@24
    :cond_2
    move v0, v1

    #@25
    .line 1289
    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 203
    return v2

    #@6
    .line 205
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 206
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@e
    aget-object v1, v1, v0

    #@10
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 207
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 210
    :cond_2
    return v2
.end method

.method updateFromNative()V
    .locals 14

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1103
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    #@5
    .line 1106
    const/4 v1, 0x5

    #@6
    new-array v0, v1, [I

    #@8
    .line 1107
    .local v0, "dataBuffer":[I
    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    #@a
    iget-object v5, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    #@c
    invoke-virtual {p0, v5}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@f
    move-result-wide v12

    #@10
    invoke-virtual {v1, v12, v13, v0}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    #@13
    .line 1109
    const/4 v1, 0x2

    #@14
    aget v1, v0, v1

    #@16
    if-ne v1, v2, :cond_1

    #@18
    move v1, v2

    #@19
    :goto_0
    iput-boolean v1, p0, Landroid/renderscript/Element;->mNormalized:Z

    #@1b
    .line 1110
    const/4 v1, 0x3

    #@1c
    aget v1, v0, v1

    #@1e
    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@20
    .line 1111
    iput v3, p0, Landroid/renderscript/Element;->mSize:I

    #@22
    .line 1112
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    #@25
    move-result-object v5

    #@26
    array-length v6, v5

    #@27
    move v1, v3

    #@28
    :goto_1
    if-ge v1, v6, :cond_2

    #@2a
    aget-object v8, v5, v1

    #@2c
    .line 1113
    .local v8, "dt":Landroid/renderscript/Element$DataType;
    iget v11, v8, Landroid/renderscript/Element$DataType;->mID:I

    #@2e
    aget v12, v0, v3

    #@30
    if-ne v11, v12, :cond_0

    #@32
    .line 1114
    iput-object v8, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@34
    .line 1115
    iget-object v11, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@36
    iget v11, v11, Landroid/renderscript/Element$DataType;->mSize:I

    #@38
    iget v12, p0, Landroid/renderscript/Element;->mVectorSize:I

    #@3a
    mul-int/2addr v11, v12

    #@3b
    iput v11, p0, Landroid/renderscript/Element;->mSize:I

    #@3d
    .line 1112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .end local v8    # "dt":Landroid/renderscript/Element$DataType;
    :cond_1
    move v1, v3

    #@41
    .line 1109
    goto :goto_0

    #@42
    .line 1118
    :cond_2
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    #@45
    move-result-object v1

    #@46
    array-length v5, v1

    #@47
    :goto_2
    if-ge v3, v5, :cond_4

    #@49
    aget-object v7, v1, v3

    #@4b
    .line 1119
    .local v7, "dk":Landroid/renderscript/Element$DataKind;
    iget v6, v7, Landroid/renderscript/Element$DataKind;->mID:I

    #@4d
    aget v11, v0, v2

    #@4f
    if-ne v6, v11, :cond_3

    #@51
    .line 1120
    iput-object v7, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@53
    .line 1118
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_2

    #@56
    .line 1124
    .end local v7    # "dk":Landroid/renderscript/Element$DataKind;
    :cond_4
    const/4 v1, 0x4

    #@57
    aget v10, v0, v1

    #@59
    .line 1125
    .local v10, "numSubElements":I
    if-lez v10, :cond_5

    #@5b
    .line 1126
    new-array v1, v10, [Landroid/renderscript/Element;

    #@5d
    iput-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@5f
    .line 1127
    new-array v1, v10, [Ljava/lang/String;

    #@61
    iput-object v1, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@63
    .line 1128
    new-array v1, v10, [I

    #@65
    iput-object v1, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@67
    .line 1129
    new-array v1, v10, [I

    #@69
    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    #@6b
    .line 1131
    new-array v4, v10, [J

    #@6d
    .line 1132
    .local v4, "subElementIds":[J
    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    #@6f
    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    #@71
    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@74
    move-result-wide v2

    #@75
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    #@77
    iget-object v6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@79
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    #@7c
    .line 1133
    const/4 v9, 0x0

    #@7d
    .local v9, "i":I
    :goto_3
    if-ge v9, v10, :cond_5

    #@7f
    .line 1134
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@81
    new-instance v2, Landroid/renderscript/Element;

    #@83
    aget-wide v12, v4, v9

    #@85
    iget-object v3, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    #@87
    invoke-direct {v2, v12, v13, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    #@8a
    aput-object v2, v1, v9

    #@8c
    .line 1135
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@8e
    aget-object v1, v1, v9

    #@90
    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    #@93
    .line 1136
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    #@95
    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    #@97
    aput v2, v1, v9

    #@99
    .line 1137
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    #@9b
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@9d
    aget-object v2, v2, v9

    #@9f
    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    #@a1
    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    #@a3
    aget v3, v3, v9

    #@a5
    mul-int/2addr v2, v3

    #@a6
    add-int/2addr v1, v2

    #@a7
    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    #@a9
    .line 1133
    add-int/lit8 v9, v9, 0x1

    #@ab
    goto :goto_3

    #@ac
    .line 1140
    .end local v4    # "subElementIds":[J
    .end local v9    # "i":I
    :cond_5
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    #@af
    .line 1102
    return-void
.end method
