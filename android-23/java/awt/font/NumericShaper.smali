.class public final Ljava/awt/font/NumericShaper;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_RANGES:I = 0x7ffff

.field public static final ARABIC:I = 0x2

.field public static final BENGALI:I = 0x10

.field public static final DEVANAGARI:I = 0x8

.field public static final EASTERN_ARABIC:I = 0x4

.field public static final ETHIOPIC:I = 0x10000

.field public static final EUROPEAN:I = 0x1

.field public static final GUJARATI:I = 0x40

.field public static final GURMUKHI:I = 0x20

.field private static final INDEX_ARABIC:I = 0x1

.field private static final INDEX_BENGALI:I = 0x4

.field private static final INDEX_DEVANAGARI:I = 0x3

.field private static final INDEX_EASTERN_ARABIC:I = 0x2

.field private static final INDEX_ETHIOPIC:I = 0x10

.field private static final INDEX_EUROPEAN:I = 0x0

.field private static final INDEX_GUJARATI:I = 0x6

.field private static final INDEX_GURMUKHI:I = 0x5

.field private static final INDEX_KANNADA:I = 0xa

.field private static final INDEX_KHMER:I = 0x11

.field private static final INDEX_LAO:I = 0xd

.field private static final INDEX_MALAYALAM:I = 0xb

.field private static final INDEX_MONGOLIAN:I = 0x12

.field private static final INDEX_MYANMAR:I = 0xf

.field private static final INDEX_ORIYA:I = 0x7

.field private static final INDEX_TAMIL:I = 0x8

.field private static final INDEX_TELUGU:I = 0x9

.field private static final INDEX_THAI:I = 0xc

.field private static final INDEX_TIBETAN:I = 0xe

.field public static final KANNADA:I = 0x400

.field public static final KHMER:I = 0x20000

.field public static final LAO:I = 0x2000

.field public static final MALAYALAM:I = 0x800

.field private static final MAX_INDEX:I = 0x13

.field public static final MONGOLIAN:I = 0x40000

.field public static final MYANMAR:I = 0x8000

.field public static final ORIYA:I = 0x80

.field private static final STRONG_TEXT_FLAGS:[I

.field public static final TAMIL:I = 0x100

.field public static final TELUGU:I = 0x200

.field public static final THAI:I = 0x1000

.field public static final TIBETAN:I = 0x4000

.field private static final serialVersionUID:J = -0x6f5695fe5d200b84L


# instance fields
.field private final contexts:[Ljava/lang/String;

.field private final digitsLowRanges:[I

.field private fContextual:Z

.field private fDefaultContextIndex:I

.field private fRanges:I

.field private fSingleRangeIndex:I

.field private key:I

.field private mask:I

.field private final scriptsRanges:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 295
    const/16 v0, 0x800

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/awt/font/NumericShaper;->STRONG_TEXT_FLAGS:[I

    #@9
    .line 32
    return-void

    #@a
    .line 295
    :array_0
    .array-data 4
        0x0
        0x0
        0x7fffffe
        0x7fffffe
        0x0
        0x4200400
        -0x800001
        -0x800001
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0xfffd
        -0x1
        -0x1
        -0x6000001
        0x30003
        0x401f
        0x0
        0x0
        0x0
        0x4000000
        -0x28c0
        -0x5
        -0x8001
        -0x400001
        -0x1
        -0x1
        -0x1
        -0x1
        -0x3f9
        -0x1
        -0x8001
        0x3ffffff
        0xffff
        -0x20000
        -0x1800001
        -0x2
        0x2ff
        0x40000000    # 2.0f
        -0xffb7
        0x1f07ff
        -0x37ffd7f1
        0x7fffffe
        0x7ff
        -0x12000
        -0x1
        -0x1
        0x203fffff
        -0x3ff3fa0
        -0x2c001
        0xffff
        -0x2000
        0x3fff
        -0x1
        0x2003f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x8
        -0x1c000001
        -0xfee1ff
        0x2001fff3
        -0x66014
        -0x1c3a0201
        -0x4f7fa67f
        0x7f3ffc3
        -0x67818
        -0x3c920201
        0x5e000001
        0x1cffc0
        -0x44018
        -0x1c120201
        0x11a01
        0xffc3
        -0x66014
        0x63edfdff
        -0x4f7fe67f
        0x3ffc3
        -0x29c23818
        -0x3c0038e8
        0x801dc6
        0x7ffc0
        -0x22012
        0x3effdff
        0x1e
        0xffc3
        -0x22014
        -0x1c100201
        0x40600ddf
        0xffc3
        -0x22014
        -0x3c000201
        0x801dc1
        0xffc3
        -0x3800014
        0x2ffbffff
        -0xfc7f81
        0x1c0000
        -0x2
        0xdffff
        0xfff807f
        0x0
        -0x10fda6a
        0x200decae
        0x33ff005f
        0x0
        -0x3000001
        -0x3ea00001    # -13.999999f
        -0x101
        -0x7ffff801
        0xf20
        -0x40000000    # -2.0f
        0x39fbf
        0x0
        -0x1
        0x10216fb
        0xffffff
        0x0
        0x0
        -0x1
        -0xffc1
        0x1fffffff
        -0x1
        -0x1
        -0x7c000001
        -0x1
        -0x1
        -0xf9
        -0x1
        0x3ffffff
        -0x1
        -0x1
        0x3d7f3dff
        -0x1
        -0xc201
        0x7f3dffff
        -0x8000c3
        -0x1
        -0xc20001
        -0x1
        0x7ffffff
        0x1fffffff
        0xffff
        -0x1
        -0x1
        0x1fffff
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffff
        0x7fffffe
        -0x1
        -0x1
        0x1ffff
        0x3dfff
        0x63ffff
        0x3ffff
        0x1dfff
        -0x1
        -0x3f800001    # -3.9999998f
        0x17f001bf
        0x3ff
        0x3ff0000
        -0x1
        -0x1
        0xffffff
        -0x1
        0x1ff
        0x0
        0x0
        0x1fffffff
        0x1fb0078
        -0x40
        0x1f3fff
        -0x1
        -0xfc01
        0x3ff03ff
        0x0
        -0x31800001
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
        -0x1
        -0x1
        0x3ffffff
        0x3f3fffff    # 0.74999994f
        -0x1
        -0x5500c0c1
        0x3fffffff    # 1.9999999f
        -0x1
        0x5fdfffff    # 3.22818E19f
        0xfcf1fdc
        0x1fdc1fff
        0xc000
        0x6c00
        0x0
        -0x7ffe0000
        0x1f0000
        0x0
        0x0
        0x0
        0x3e2ffc84
        -0xc0442b0
        0x3e0
        -0x1
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x400000
        -0x1
        0x7ffffff
        0x200000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x10000000
        -0x1
        -0x1
        0x3ff
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x8001
        0x7fffffff
        0x0
        -0x1
        -0x1
        -0x1
        0x1f
        -0x1
        -0xffc1
        -0x1
        0x803f
        0x7fffff
        0x7f7f7f7f
        0x7f7f7f7f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe0
        0x1f3e03fe
        -0x2
        -0x1
        -0x1f800001
        -0x2
        -0x1
        -0x8000001
        -0x20
        -0x1e001
        -0x1
        -0x1
        -0x8001
        0xffffff
        0x0
        -0x10000
        0x1fffffff
        -0x1
        0xf
        -0x70000001
        -0x1
        0x1ffff
        -0xf001
        0x7fffffff
        -0x1
        -0x1
        -0x1
        -0x7800001
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
        0x7fffffff
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x200000
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000000
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1fff
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x845
        0x9f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x80000000
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0xc001
        -0x1
        -0xf801
        -0x1
        -0x1
        0x3ffffff
        0x0
        -0x5f07ff81
        0x5f7ffdff
        -0x25
        -0x1
        -0x1
        0x3ffff
        -0x80000
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
        -0x10000
        -0x1
        -0x30001
        -0x1
        0xff
        0x1fff0000
        0x0
        0x0
        0x0
        -0x210000
        -0x1
        -0x1
        -0x1
        0x1fffffff
        0x0
        0x7fffffe
        0x7fffffe
        -0x40
        -0x1
        0x7fffffff
        0x1cfcfcfc
        0x0
    .end array-data
.end method

.method private constructor <init>(IIZ)V
    .locals 3
    .param p1, "ranges"    # I
    .param p2, "defaultContext"    # I
    .param p3, "isContextual"    # Z

    #@0
    .prologue
    const/16 v1, 0x13

    #@2
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 206
    const/16 v0, 0x26

    #@7
    new-array v0, v0, [I

    #@9
    fill-array-data v0, :array_0

    #@c
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    #@e
    .line 239
    new-array v0, v1, [I

    #@10
    fill-array-data v0, :array_1

    #@13
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    #@15
    .line 263
    new-array v0, v1, [Ljava/lang/String;

    #@17
    .line 264
    const-string/jumbo v1, "EUROPEAN"

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 265
    const-string/jumbo v1, "ARABIC"

    #@20
    const/4 v2, 0x1

    #@21
    aput-object v1, v0, v2

    #@23
    .line 266
    const-string/jumbo v1, "EASTERN_ARABIC"

    #@26
    const/4 v2, 0x2

    #@27
    aput-object v1, v0, v2

    #@29
    .line 267
    const-string/jumbo v1, "DEVANAGARI"

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 268
    const-string/jumbo v1, "BENGALI"

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    .line 269
    const-string/jumbo v1, "GURMUKHI"

    #@38
    const/4 v2, 0x5

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 270
    const-string/jumbo v1, "GUJARATI"

    #@3e
    const/4 v2, 0x6

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 271
    const-string/jumbo v1, "ORIYA"

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 272
    const-string/jumbo v1, "TAMIL"

    #@4a
    const/16 v2, 0x8

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 273
    const-string/jumbo v1, "TELUGU"

    #@51
    const/16 v2, 0x9

    #@53
    aput-object v1, v0, v2

    #@55
    .line 274
    const-string/jumbo v1, "KANNADA"

    #@58
    const/16 v2, 0xa

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 275
    const-string/jumbo v1, "MALAYALAM"

    #@5f
    const/16 v2, 0xb

    #@61
    aput-object v1, v0, v2

    #@63
    .line 276
    const-string/jumbo v1, "THAI"

    #@66
    const/16 v2, 0xc

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 277
    const-string/jumbo v1, "LAO"

    #@6d
    const/16 v2, 0xd

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 278
    const-string/jumbo v1, "TIBETAN"

    #@74
    const/16 v2, 0xe

    #@76
    aput-object v1, v0, v2

    #@78
    .line 279
    const-string/jumbo v1, "MYANMAR"

    #@7b
    const/16 v2, 0xf

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 280
    const-string/jumbo v1, "ETHIOPIC"

    #@82
    const/16 v2, 0x10

    #@84
    aput-object v1, v0, v2

    #@86
    .line 281
    const-string/jumbo v1, "KHMER"

    #@89
    const/16 v2, 0x11

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 282
    const-string/jumbo v1, "MONGOLIAN"

    #@90
    const/16 v2, 0x12

    #@92
    aput-object v1, v0, v2

    #@94
    .line 263
    iput-object v0, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    #@96
    .line 447
    iput p1, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@98
    .line 448
    invoke-direct {p0, p2}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    #@9b
    move-result v0

    #@9c
    iput v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@9e
    .line 449
    iput-boolean p3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@a0
    .line 451
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@a2
    if-nez v0, :cond_0

    #@a4
    .line 452
    invoke-direct {p0, p1}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    #@a7
    move-result v0

    #@a8
    iput v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    #@aa
    .line 446
    :cond_0
    return-void

    #@ab
    .line 206
    nop

    #@ac
    :array_0
    .array-data 4
        0x0
        0x24f
        0x600
        0x6ff
        0x600
        0x6ff
        0x900
        0x97f
        0x980
        0x9ff
        0xa00
        0xa7f
        0xa80
        0xaff
        0xb00
        0xb7f
        0xb80
        0xbff
        0xc00
        0xc7f
        0xc80
        0xcff
        0xd00
        0xd7f
        0xe00
        0xe7f
        0xe80
        0xeff
        0xf00
        0xfff
        0x1000
        0x109f
        0x1200
        0x137f
        0x1780
        0x17ff
        0x1800
        0x18af
    .end array-data

    #@fc
    .line 239
    :array_1
    .array-data 4
        0x0
        0x630
        0x630
        0x936
        0x9b6
        0xa36
        0xab6
        0xb36
        0xbb6
        0xc36
        0xcb6
        0xd36
        0xe20
        0xea0
        0xef0
        0x1010
        0x1338
        0x17b0
        0x17e0
    .end array-data
.end method

.method private contextualShape([CIII)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I

    #@0
    .prologue
    const/16 v6, 0x30

    #@2
    const/4 v5, 0x1

    #@3
    .line 706
    shl-int v3, v5, p4

    #@5
    iget v4, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@7
    and-int/2addr v3, v4

    #@8
    if-nez v3, :cond_2

    #@a
    .line 707
    const/4 v0, 0x0

    #@b
    .line 712
    .local v0, "currIndex":I
    :goto_0
    move v1, p2

    #@c
    .local v1, "ind":I
    :goto_1
    add-int v3, p2, p3

    #@e
    if-ge v1, v3, :cond_5

    #@10
    .line 713
    aget-char v3, p1, v1

    #@12
    if-gt v6, v3, :cond_3

    #@14
    aget-char v3, p1, v1

    #@16
    const/16 v4, 0x39

    #@18
    if-gt v3, v4, :cond_3

    #@1a
    .line 714
    const/16 v3, 0x10

    #@1c
    if-ne v0, v3, :cond_0

    #@1e
    aget-char v3, p1, v1

    #@20
    if-eq v3, v6, :cond_1

    #@22
    .line 715
    :cond_0
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    #@24
    aget v3, v3, v0

    #@26
    aget-char v4, p1, v1

    #@28
    add-int/2addr v3, v4

    #@29
    int-to-char v3, v3

    #@2a
    aput-char v3, p1, v1

    #@2c
    .line 712
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 709
    .end local v0    # "currIndex":I
    .end local v1    # "ind":I
    :cond_2
    move v0, p4

    #@30
    .restart local v0    # "currIndex":I
    goto :goto_0

    #@31
    .line 718
    .restart local v1    # "ind":I
    :cond_3
    aget-char v3, p1, v1

    #@33
    invoke-direct {p0, v3}, Ljava/awt/font/NumericShaper;->isCharStrong(I)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 719
    aget-char v3, p1, v1

    #@3b
    invoke-direct {p0, v3}, Ljava/awt/font/NumericShaper;->getCharIndex(C)I

    #@3e
    move-result v2

    #@3f
    .line 720
    .local v2, "index":I
    if-eq v0, v2, :cond_1

    #@41
    .line 721
    shl-int v3, v5, v2

    #@43
    iget v4, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@45
    and-int/2addr v3, v4

    #@46
    if-eqz v3, :cond_4

    #@48
    .line 722
    move v0, v2

    #@49
    goto :goto_2

    #@4a
    .line 724
    :cond_4
    const/4 v0, 0x0

    #@4b
    goto :goto_2

    #@4c
    .line 701
    .end local v2    # "index":I
    :cond_5
    return-void
.end method

.method private getCharIndex(C)I
    .locals 5
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 760
    const/4 v1, 0x0

    #@1
    .line 761
    .local v1, "index":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v3, 0x13

    #@4
    if-ge v0, v3, :cond_1

    #@6
    .line 762
    mul-int/lit8 v2, v0, 0x2

    #@8
    .line 763
    .local v2, "j":I
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    #@a
    aget v3, v3, v2

    #@c
    if-gt v3, p1, :cond_0

    #@e
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->scriptsRanges:[I

    #@10
    add-int/lit8 v4, v2, 0x1

    #@12
    aget v3, v3, v4

    #@14
    if-gt p1, v3, :cond_0

    #@16
    .line 764
    return v0

    #@17
    .line 761
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 768
    .end local v2    # "j":I
    :cond_1
    return v1
.end method

.method public static getContextualShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 615
    const v0, 0x7ffff

    #@4
    and-int/2addr p0, v0

    #@5
    .line 616
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@7
    invoke-direct {v0, p0, v1, v1}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    #@a
    return-object v0
.end method

.method public static getContextualShaper(II)Ljava/awt/font/NumericShaper;
    .locals 2
    .param p0, "ranges"    # I
    .param p1, "defaultContext"    # I

    #@0
    .prologue
    const v0, 0x7ffff

    #@3
    .line 597
    and-int/2addr p0, v0

    #@4
    .line 598
    and-int/2addr p1, v0

    #@5
    .line 599
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, p0, p1, v1}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    #@b
    return-object v0
.end method

.method private getIndexFromRange(I)I
    .locals 2
    .param p1, "range"    # I

    #@0
    .prologue
    .line 464
    if-nez p1, :cond_0

    #@2
    .line 465
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    #@5
    move-result-object v1

    #@6
    throw v1

    #@7
    .line 468
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 469
    .local v0, "index":I
    :goto_0
    const/16 v1, 0x13

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 470
    const/4 v1, 0x1

    #@d
    shl-int/2addr v1, v0

    #@e
    if-ne p1, v1, :cond_1

    #@10
    .line 471
    return v0

    #@11
    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 476
    :cond_2
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    #@17
    move-result-object v1

    #@18
    throw v1
.end method

.method private getRangeFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 487
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x13

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 488
    :cond_0
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->rangeException(I)Ljava/lang/IllegalArgumentException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 491
    :cond_1
    const/4 v0, 0x1

    #@c
    shl-int/2addr v0, p1

    #@d
    return v0
.end method

.method public static getShaper(I)Ljava/awt/font/NumericShaper;
    .locals 3
    .param p0, "singleRange"    # I

    #@0
    .prologue
    .line 641
    const v0, 0x7ffff

    #@3
    and-int/2addr p0, v0

    #@4
    .line 642
    new-instance v0, Ljava/awt/font/NumericShaper;

    #@6
    const/4 v1, 0x1

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v0, p0, v1, v2}, Ljava/awt/font/NumericShaper;-><init>(IIZ)V

    #@b
    return-object v0
.end method

.method private isCharStrong(I)Z
    .locals 4
    .param p1, "chr"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 780
    sget-object v2, Ljava/awt/font/NumericShaper;->STRONG_TEXT_FLAGS:[I

    #@4
    shr-int/lit8 v3, p1, 0x5

    #@6
    aget v2, v2, v3

    #@8
    rem-int/lit8 v3, p1, 0x20

    #@a
    shl-int v3, v0, v3

    #@c
    and-int/2addr v2, v3

    #@d
    if-eqz v2, :cond_0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    move v0, v1

    #@11
    goto :goto_0
.end method

.method private nonContextualShape([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 743
    iget v2, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@2
    const/high16 v3, 0x10000

    #@4
    if-ne v2, v3, :cond_1

    #@6
    const/16 v2, 0x31

    #@8
    :goto_0
    int-to-char v1, v2

    #@9
    .line 744
    .local v1, "minDigit":C
    move v0, p2

    #@a
    .local v0, "ind":I
    :goto_1
    add-int v2, p2, p3

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 745
    aget-char v2, p1, v0

    #@10
    if-gt v1, v2, :cond_0

    #@12
    aget-char v2, p1, v0

    #@14
    const/16 v3, 0x39

    #@16
    if-gt v2, v3, :cond_0

    #@18
    .line 746
    iget-object v2, p0, Ljava/awt/font/NumericShaper;->digitsLowRanges:[I

    #@1a
    iget v3, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    #@1c
    aget v2, v2, v3

    #@1e
    aget-char v3, p1, v0

    #@20
    add-int/2addr v2, v3

    #@21
    int-to-char v2, v2

    #@22
    aput-char v2, p1, v0

    #@24
    .line 744
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 743
    .end local v0    # "ind":I
    .end local v1    # "minDigit":C
    :cond_1
    const/16 v2, 0x30

    #@29
    goto :goto_0

    #@2a
    .line 741
    .restart local v0    # "ind":I
    .restart local v1    # "minDigit":C
    :cond_2
    return-void
.end method

.method private static rangeException(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "value"    # I

    #@0
    .prologue
    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Illegal range argument value: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 838
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 839
    invoke-direct {p0}, Ljava/awt/font/NumericShaper;->updateRangesFields()V

    #@6
    .line 837
    return-void
.end method

.method private updateKeyMaskFields()V
    .locals 2

    #@0
    .prologue
    .line 806
    iget v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@2
    iput v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@4
    .line 807
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 808
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@a
    const/high16 v1, -0x80000000

    #@c
    or-int/2addr v0, v1

    #@d
    iput v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@f
    .line 809
    iget v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@11
    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@13
    .line 805
    :goto_0
    return-void

    #@14
    .line 811
    :cond_0
    iget v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    #@16
    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@18
    goto :goto_0
.end method

.method private updateRangesFields()V
    .locals 4

    #@0
    .prologue
    const v3, 0x7fffffff

    #@3
    const/4 v0, 0x0

    #@4
    .line 789
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@6
    and-int/2addr v1, v3

    #@7
    iput v1, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@9
    .line 790
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@b
    const/high16 v2, -0x80000000

    #@d
    and-int/2addr v1, v2

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@13
    .line 791
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 792
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@19
    and-int/2addr v0, v3

    #@1a
    iput v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@1c
    .line 793
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@1e
    iput v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@20
    .line 788
    :goto_0
    return-void

    #@21
    .line 795
    :cond_1
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    #@23
    iput v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@25
    .line 796
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    #@27
    iput v0, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    #@29
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 824
    invoke-direct {p0}, Ljava/awt/font/NumericShaper;->updateKeyMaskFields()V

    #@3
    .line 825
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 823
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 509
    if-nez p1, :cond_0

    #@4
    .line 510
    return v4

    #@5
    .line 513
    :cond_0
    if-ne p1, p0, :cond_1

    #@7
    .line 514
    return v3

    #@8
    .line 518
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Ljava/awt/font/NumericShaper;

    #@b
    move-object v2, v0

    #@c
    .line 519
    .local v2, "ns":Ljava/awt/font/NumericShaper;
    iget v5, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@e
    iget v6, v2, Ljava/awt/font/NumericShaper;->fRanges:I

    #@10
    if-ne v5, v6, :cond_3

    #@12
    .line 520
    iget v5, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@14
    iget v6, v2, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@16
    if-ne v5, v6, :cond_3

    #@18
    .line 521
    iget-boolean v5, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@1a
    iget-boolean v6, v2, Ljava/awt/font/NumericShaper;->fContextual:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    if-ne v5, v6, :cond_2

    #@1e
    .line 519
    :goto_0
    return v3

    #@1f
    :cond_2
    move v3, v4

    #@20
    .line 521
    goto :goto_0

    #@21
    :cond_3
    move v3, v4

    #@22
    .line 519
    goto :goto_0

    #@23
    .line 522
    .end local v2    # "ns":Ljava/awt/font/NumericShaper;
    :catch_0
    move-exception v1

    #@24
    .line 525
    .local v1, "e":Ljava/lang/ClassCastException;
    return v4
.end method

.method public getRanges()I
    .locals 1

    #@0
    .prologue
    .line 628
    iget v0, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 501
    iget v1, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 502
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 503
    mul-int/lit8 v2, v0, 0x1f

    #@c
    iget-boolean v1, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    add-int v0, v2, v1

    #@13
    .line 504
    return v0

    #@14
    .line 503
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method public isContextual()Z
    .locals 1

    #@0
    .prologue
    .line 652
    iget-boolean v0, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@2
    return v0
.end method

.method public shape([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 683
    iget v0, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@8
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->contextualShape([CIII)V

    #@b
    .line 681
    :goto_0
    return-void

    #@c
    .line 685
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->nonContextualShape([CII)V

    #@f
    goto :goto_0
.end method

.method public shape([CIII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # I

    #@0
    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 667
    invoke-direct {p0, p4}, Ljava/awt/font/NumericShaper;->getIndexFromRange(I)I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->contextualShape([CIII)V

    #@d
    .line 665
    :goto_0
    return-void

    #@e
    .line 669
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->nonContextualShape([CII)V

    #@11
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 548
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[contextual:"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 549
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    .line 551
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 552
    const-string/jumbo v3, ", context:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 553
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    #@20
    iget v4, p0, Ljava/awt/font/NumericShaper;->fDefaultContextIndex:I

    #@22
    aget-object v3, v3, v4

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 556
    :cond_0
    const-string/jumbo v3, ", range(s): "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 557
    iget-boolean v3, p0, Ljava/awt/font/NumericShaper;->fContextual:Z

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 558
    const/4 v0, 0x0

    #@32
    .line 559
    .local v0, "index":I
    const/4 v1, 0x1

    #@33
    .line 560
    .local v1, "isFirst":Z
    :goto_0
    const/16 v3, 0x13

    #@35
    if-ge v0, v3, :cond_4

    #@37
    .line 561
    iget v3, p0, Ljava/awt/font/NumericShaper;->fRanges:I

    #@39
    const/4 v4, 0x1

    #@3a
    shl-int/2addr v4, v0

    #@3b
    and-int/2addr v3, v4

    #@3c
    if-eqz v3, :cond_1

    #@3e
    .line 562
    if-eqz v1, :cond_2

    #@40
    .line 563
    const/4 v1, 0x0

    #@41
    .line 567
    :goto_1
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    #@43
    aget-object v3, v3, v0

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 569
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 565
    :cond_2
    const-string/jumbo v3, ", "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_1

    #@52
    .line 572
    .end local v0    # "index":I
    .end local v1    # "isFirst":Z
    :cond_3
    iget-object v3, p0, Ljava/awt/font/NumericShaper;->contexts:[Ljava/lang/String;

    #@54
    iget v4, p0, Ljava/awt/font/NumericShaper;->fSingleRangeIndex:I

    #@56
    aget-object v3, v3, v4

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 574
    :cond_4
    const-string/jumbo v3, "]"

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    return-object v3
.end method
