.class public Lcom/android/internal/widget/Smileys;
.super Ljava/lang/Object;
.source "Smileys.java"


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 25
    const/16 v0, 0x11

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    #@9
    .line 45
    const/4 v0, 0x0

    #@a
    sput v0, Lcom/android/internal/widget/Smileys;->HAPPY:I

    #@c
    .line 46
    const/4 v0, 0x1

    #@d
    sput v0, Lcom/android/internal/widget/Smileys;->SAD:I

    #@f
    .line 47
    const/4 v0, 0x2

    #@10
    sput v0, Lcom/android/internal/widget/Smileys;->WINKING:I

    #@12
    .line 48
    const/4 v0, 0x3

    #@13
    sput v0, Lcom/android/internal/widget/Smileys;->TONGUE_STICKING_OUT:I

    #@15
    .line 49
    const/4 v0, 0x4

    #@16
    sput v0, Lcom/android/internal/widget/Smileys;->SURPRISED:I

    #@18
    .line 50
    const/4 v0, 0x5

    #@19
    sput v0, Lcom/android/internal/widget/Smileys;->KISSING:I

    #@1b
    .line 51
    const/4 v0, 0x6

    #@1c
    sput v0, Lcom/android/internal/widget/Smileys;->YELLING:I

    #@1e
    .line 52
    const/4 v0, 0x7

    #@1f
    sput v0, Lcom/android/internal/widget/Smileys;->COOL:I

    #@21
    .line 53
    const/16 v0, 0x8

    #@23
    sput v0, Lcom/android/internal/widget/Smileys;->MONEY_MOUTH:I

    #@25
    .line 54
    const/16 v0, 0x9

    #@27
    sput v0, Lcom/android/internal/widget/Smileys;->FOOT_IN_MOUTH:I

    #@29
    .line 55
    const/16 v0, 0xa

    #@2b
    sput v0, Lcom/android/internal/widget/Smileys;->EMBARRASSED:I

    #@2d
    .line 56
    const/16 v0, 0xb

    #@2f
    sput v0, Lcom/android/internal/widget/Smileys;->ANGEL:I

    #@31
    .line 57
    const/16 v0, 0xc

    #@33
    sput v0, Lcom/android/internal/widget/Smileys;->UNDECIDED:I

    #@35
    .line 58
    const/16 v0, 0xd

    #@37
    sput v0, Lcom/android/internal/widget/Smileys;->CRYING:I

    #@39
    .line 59
    const/16 v0, 0xe

    #@3b
    sput v0, Lcom/android/internal/widget/Smileys;->LIPS_ARE_SEALED:I

    #@3d
    .line 60
    const/16 v0, 0xf

    #@3f
    sput v0, Lcom/android/internal/widget/Smileys;->LAUGHING:I

    #@41
    .line 61
    const/16 v0, 0x10

    #@43
    sput v0, Lcom/android/internal/widget/Smileys;->WTF:I

    #@45
    .line 24
    return-void

    #@46
    .line 25
    :array_0
    .array-data 4
        0x10802af
        0x10802b4
        0x10802b8
        0x10802b6
        0x10802b5
        0x10802b0
        0x10802ba
        0x10802ab
        0x10802b3
        0x10802ae
        0x10802ad
        0x10802aa
        0x10802b7
        0x10802ac
        0x10802b2
        0x10802b1
        0x10802b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .param p0, "which"    # I

    #@0
    .prologue
    .line 64
    sget-object v0, Lcom/android/internal/widget/Smileys;->sIconIds:[I

    #@2
    aget v0, v0, p0

    #@4
    return v0
.end method
