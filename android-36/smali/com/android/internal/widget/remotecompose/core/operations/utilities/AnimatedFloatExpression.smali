.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;
.super Ljava/lang/Object;
.source "AnimatedFloatExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression$Op;
    }
.end annotation


# static fields
.field public static final blacklist ABS:F

.field public static final blacklist ACOS:F

.field public static final blacklist ADD:F

.field public static final blacklist ASIN:F

.field public static final blacklist ATAN:F

.field public static final blacklist ATAN2:F

.field public static final blacklist A_AVG:F

.field public static final blacklist A_DEREF:F

.field public static final blacklist A_LEN:F

.field public static final blacklist A_MAX:F

.field public static final blacklist A_MIN:F

.field public static final blacklist A_SPLINE:F

.field public static final blacklist A_SUM:F

.field public static final blacklist CBRT:F

.field public static final blacklist CEIL:F

.field public static final blacklist CLAMP:F

.field public static final blacklist COPY_SIGN:F

.field public static final blacklist COS:F

.field public static final blacklist DEG:F

.field public static final blacklist DIV:F

.field public static final blacklist DUP:F

.field public static final blacklist EXP:F

.field public static final blacklist FLOOR:F

.field private static final blacklist FP_TO_DEG:F = 0.017453292f

.field private static final blacklist FP_TO_RAD:F = 57.29578f

.field public static final blacklist HYPOT:F

.field public static final blacklist IFELSE:F

.field public static final blacklist LAST_OP:I = 0x310032

.field public static final blacklist LERP:F

.field public static final blacklist LN:F

.field public static final blacklist LOG:F

.field public static final blacklist MAD:F

.field public static final blacklist MAX:F

.field public static final blacklist MIN:F

.field public static final blacklist MOD:F

.field public static final blacklist MUL:F

.field public static final blacklist NOISE_FROM:F

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x310000

.field private static final blacklist OP_ABS:I = 0x31000a

.field private static final blacklist OP_ACOS:I = 0x310016

.field private static final blacklist OP_ADD:I = 0x310001

.field private static final blacklist OP_ASIN:I = 0x310015

.field private static final blacklist OP_ATAN:I = 0x310017

.field private static final blacklist OP_ATAN2:I = 0x310018

.field private static final blacklist OP_A_AVG:I = 0x310024

.field private static final blacklist OP_A_DEREF:I = 0x310020

.field private static final blacklist OP_A_LEN:I = 0x310025

.field private static final blacklist OP_A_MAX:I = 0x310021

.field private static final blacklist OP_A_MIN:I = 0x310022

.field private static final blacklist OP_A_SPLINE:I = 0x310026

.field private static final blacklist OP_A_SUM:I = 0x310023

.field private static final blacklist OP_CBRT:I = 0x31001c

.field private static final blacklist OP_CEIL:I = 0x31001f

.field private static final blacklist OP_CLAMP:I = 0x31001b

.field private static final blacklist OP_COPY_SIGN:I = 0x31000c

.field private static final blacklist OP_COS:I = 0x310013

.field private static final blacklist OP_DEG:I = 0x31001d

.field private static final blacklist OP_DIV:I = 0x310004

.field private static final blacklist OP_DUP:I = 0x31002e

.field private static final blacklist OP_EXP:I = 0x31000d

.field private static final blacklist OP_FIRST_VAR:I = 0x310033

.field private static final blacklist OP_FLOOR:I = 0x31000e

.field private static final blacklist OP_HYPOT:I = 0x31002f

.field private static final blacklist OP_LERP:I = 0x310031

.field private static final blacklist OP_LN:I = 0x310010

.field private static final blacklist OP_LOG:I = 0x31000f

.field private static final blacklist OP_MAD:I = 0x310019

.field private static final blacklist OP_MAX:I = 0x310007

.field private static final blacklist OP_MIN:I = 0x310006

.field private static final blacklist OP_MOD:I = 0x310005

.field private static final blacklist OP_MUL:I = 0x310003

.field private static final blacklist OP_NOISE_FROM:I = 0x310029

.field private static final blacklist OP_POW:I = 0x310008

.field private static final blacklist OP_RAD:I = 0x31001e

.field private static final blacklist OP_RAND:I = 0x310027

.field private static final blacklist OP_RAND_IN_RANGE:I = 0x31002a

.field private static final blacklist OP_RAND_SEED:I = 0x310028

.field private static final blacklist OP_ROUND:I = 0x310011

.field private static final blacklist OP_SECOND_VAR:I = 0x310034

.field private static final blacklist OP_SIGN:I = 0x31000b

.field private static final blacklist OP_SIN:I = 0x310012

.field private static final blacklist OP_SMOOTH_STEP:I = 0x310032

.field private static final blacklist OP_SQRT:I = 0x310009

.field private static final blacklist OP_SQUARE:I = 0x31002d

.field private static final blacklist OP_SQUARE_SUM:I = 0x31002b

.field private static final blacklist OP_STEP:I = 0x31002c

.field private static final blacklist OP_SUB:I = 0x310002

.field private static final blacklist OP_SWAP:I = 0x310030

.field private static final blacklist OP_TAN:I = 0x310014

.field private static final blacklist OP_TERNARY_CONDITIONAL:I = 0x31001a

.field private static final blacklist OP_THIRD_VAR:I = 0x310035

.field public static final blacklist POW:F

.field public static final blacklist RAD:F

.field public static final blacklist RAND:F

.field public static final blacklist RAND_IN_RANGE:F

.field public static final blacklist RAND_SEED:F

.field public static final blacklist ROUND:F

.field public static final blacklist SIGN:F

.field public static final blacklist SIN:F

.field public static final blacklist SMOOTH_STEP:F

.field public static final blacklist SQRT:F

.field public static final blacklist SQUARE:F

.field public static final blacklist SQUARE_SUM:F

.field public static final blacklist STEP:F

.field public static final blacklist SUB:F

.field public static final blacklist SWAP:F

.field public static final blacklist TAN:F

.field public static final blacklist VAR1:F

.field public static final blacklist VAR2:F

.field public static final blacklist VAR3:F

.field static blacklist sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRandom:Ljava/util/Random;


# instance fields
.field blacklist mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

.field blacklist mLocalStack:[F

.field blacklist mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStack:[F

.field blacklist mVar:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 27
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 33
    const v0, 0x310001    # 4.499941E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ADD:F

    .line 36
    const v0, 0x310002    # 4.499942E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SUB:F

    .line 39
    const v0, 0x310003    # 4.499944E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    .line 42
    const v0, 0x310004    # 4.499945E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DIV:F

    .line 45
    const v0, 0x310005    # 4.499946E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MOD:F

    .line 48
    const v0, 0x310006    # 4.499948E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MIN:F

    .line 51
    const v0, 0x310007    # 4.499949E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MAX:F

    .line 54
    const v0, 0x310008    # 4.49995E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->POW:F

    .line 57
    const v0, 0x310009    # 4.499952E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQRT:F

    .line 60
    const v0, 0x31000a    # 4.499953E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ABS:F

    .line 63
    const v0, 0x31000b    # 4.499955E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SIGN:F

    .line 66
    const v0, 0x31000c    # 4.499956E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->COPY_SIGN:F

    .line 69
    const v0, 0x31000d    # 4.499958E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->EXP:F

    .line 72
    const v0, 0x31000e    # 4.499959E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->FLOOR:F

    .line 75
    const v0, 0x31000f    # 4.49996E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LOG:F

    .line 78
    const v0, 0x310010    # 4.499962E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LN:F

    .line 81
    const v0, 0x310011    # 4.499963E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ROUND:F

    .line 84
    const v0, 0x310012    # 4.499965E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SIN:F

    .line 87
    const v0, 0x310013    # 4.499966E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->COS:F

    .line 90
    const v0, 0x310014    # 4.499967E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->TAN:F

    .line 93
    const v0, 0x310015    # 4.499969E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ASIN:F

    .line 96
    const v0, 0x310016    # 4.49997E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ACOS:F

    .line 99
    const v0, 0x310017    # 4.499972E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ATAN:F

    .line 102
    const v0, 0x310018    # 4.499973E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->ATAN2:F

    .line 105
    const v0, 0x310019    # 4.499974E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MAD:F

    .line 108
    const v0, 0x31001a    # 4.499976E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->IFELSE:F

    .line 111
    const v0, 0x31001b    # 4.499977E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CLAMP:F

    .line 114
    const v0, 0x31001c    # 4.499979E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CBRT:F

    .line 117
    const v0, 0x31001d    # 4.49998E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DEG:F

    .line 120
    const v0, 0x31001e    # 4.499981E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAD:F

    .line 123
    const v0, 0x31001f    # 4.499983E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->CEIL:F

    .line 127
    const v0, 0x310020    # 4.499984E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_DEREF:F

    .line 130
    const v0, 0x310021    # 4.499986E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_MAX:F

    .line 133
    const v0, 0x310022    # 4.499987E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_MIN:F

    .line 136
    const v0, 0x310023    # 4.499988E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_SUM:F

    .line 139
    const v0, 0x310024    # 4.49999E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_AVG:F

    .line 142
    const v0, 0x310025    # 4.499991E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_LEN:F

    .line 145
    const v0, 0x310026    # 4.499993E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->A_SPLINE:F

    .line 148
    const v0, 0x310027    # 4.499994E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND:F

    .line 151
    const v0, 0x310028    # 4.499995E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND_SEED:F

    .line 154
    const v0, 0x310029    # 4.499997E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NOISE_FROM:F

    .line 157
    const v0, 0x31002a    # 4.499998E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->RAND_IN_RANGE:F

    .line 160
    const v0, 0x31002b    # 4.5E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQUARE_SUM:F

    .line 163
    const v0, 0x31002c    # 4.500001E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->STEP:F

    .line 166
    const v0, 0x31002d    # 4.500002E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SQUARE:F

    .line 169
    const v0, 0x31002e    # 4.500004E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->DUP:F

    .line 172
    const v0, 0x31002f    # 4.500005E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->HYPOT:F

    .line 175
    const v0, 0x310030    # 4.500007E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SWAP:F

    .line 178
    const v0, 0x310031    # 4.500008E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->LERP:F

    .line 181
    const v0, 0x310032    # 4.50001E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->SMOOTH_STEP:F

    .line 187
    const v0, 0x310033    # 4.500011E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    .line 190
    const v0, 0x310034    # 4.500012E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR2:F

    .line 193
    const v0, 0x310035    # 4.500014E-39f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR3:F

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "k":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .local v2, "k":I
    const-string v3, "NOP"

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .local v1, "k":I
    const-string v3, "+"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "-"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "*"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "%"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "min"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "max"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "pow"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "sqrt"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "abs"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "sign"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "copySign"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "exp"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "floor"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "log"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "ln"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "round"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "sin"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "cos"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "tan"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "asin"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "acos"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "atan"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "atan2"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "mad"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "ifElse"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "clamp"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "cbrt"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "deg"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "rad"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "ceil"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "A_DEREF"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "A_MAX"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "A_MIN"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "A_SUM"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "A_AVG"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "A_LEN"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "A_SPLINE"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "RAND"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "RAND_SEED"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "noise_from"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "rand_in_range"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "square_sum"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "step"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "square"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "dup"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "hypot"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "swap"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "lerp"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "smooth_step"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "a[0]"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "a[1]"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "a[2]"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v1    # "k":I
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_3e2

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NO_OF_OPS:[I

    return-void

    :array_3e2
    .array-data 4
        -0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 201
    const/16 v1, 0x80

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    .line 202
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 204
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2
    .param p0, "v"    # I

    .line 603
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private blacklist dereference(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;II)I
    .registers 6
    .param p1, "ca"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .param p2, "id"    # I
    .param p3, "sp"    # I

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p3

    float-to-int v1, v1

    invoke-interface {p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result v1

    aput v1, v0, p3

    .line 336
    return p3
.end method

.method public static blacklist fromNaN(F)I
    .registers 3
    .param p0, "v"    # F

    .line 613
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 614
    .local v0, "b":I
    const v1, 0x7fffff

    and-int/2addr v1, v0

    return v1
.end method

.method private blacklist getSplineValue(IF)F
    .registers 7
    .param p1, "arrayId"    # I
    .param p2, "pos"    # F

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;

    .line 209
    .local v0, "fit":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v1

    .line 210
    .local v1, "f":[F
    if-eqz v0, :cond_1b

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getArray()[F

    move-result-object v2

    if-ne v2, v1, :cond_1b

    .line 212
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getPos(F)F

    move-result v2

    return v2

    .line 216
    :cond_1b
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;-><init>([F[F)V

    .line 217
    .end local v0    # "fit":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
    .local v2, "fit":Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mSplineMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getPos(F)F

    move-result v0

    return v0
.end method

.method static blacklist infix(I)Z
    .registers 2
    .param p0, "n"    # I

    .line 593
    const/4 v0, 0x6

    if-lt p0, v0, :cond_e

    const/16 v0, 0x19

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public static blacklist isMathOperator(F)Z
    .registers 4
    .param p0, "v"    # F

    .line 228
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 229
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    .line 232
    .local v0, "pos":I
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 233
    return v1

    .line 235
    :cond_12
    const/high16 v2, 0x310000    # 4.49994E-39f

    if-le v0, v2, :cond_1c

    const v2, 0x310032    # 4.50001E-39f

    if-gt v0, v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 237
    .end local v0    # "pos":I
    :cond_1d
    return v1
.end method

.method public static blacklist toMathName(F)Ljava/lang/String;
    .registers 3
    .param p0, "f"    # F

    .line 456
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    const/high16 v1, 0x310000    # 4.49994E-39f

    sub-int/2addr v0, v1

    .line 457
    .local v0, "id":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method static blacklist toString([FI)Ljava/lang/String;
    .registers 8
    .param p0, "exp"    # [F
    .param p1, "sp"    # I

    .line 500
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 501
    aget v0, p0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v0

    const/high16 v1, 0x310000    # 4.49994E-39f

    sub-int/2addr v0, v1

    .line 502
    .local v0, "id":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->NO_OF_OPS:[I

    aget v1, v1, v0

    const-string v2, ") "

    const-string v3, ")"

    const-string v4, ", "

    const-string v5, "("

    packed-switch v1, :pswitch_data_150

    :pswitch_20
    goto/16 :goto_149

    .line 524
    :pswitch_22
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 526
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    .line 528
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x3

    .line 530
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    return-object v1

    .line 533
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 535
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    .line 537
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x3

    .line 539
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    return-object v1

    .line 508
    :pswitch_aa
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    .line 510
    invoke-static {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 511
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x2

    .line 513
    invoke-static {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    return-object v1

    .line 516
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    .line 518
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    .line 520
    invoke-static {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    return-object v1

    .line 506
    :pswitch_11e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 504
    :pswitch_146
    const-string v1, "nop"

    return-object v1

    .line 544
    .end local v0    # "id":I
    :cond_149
    :goto_149
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_150
    .packed-switch -0x1
        :pswitch_146
        :pswitch_20
        :pswitch_11e
        :pswitch_aa
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist toString([F[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "exp"    # [F
    .param p1, "labels"    # [Ljava/lang/String;

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_80

    .line 471
    aget v2, p0, v1

    .line 472
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 473
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 474
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toMathName(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 476
    :cond_1f
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v3

    .line 478
    .local v3, "id":I
    const/high16 v4, 0x200000

    if-le v3, v4, :cond_3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_4a

    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "idString":Ljava/lang/String;
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .end local v3    # "id":I
    .end local v4    # "idString":Ljava/lang/String;
    goto :goto_78

    .line 484
    :cond_5c
    if-eqz p1, :cond_75

    aget-object v3, p1, v1

    if-eqz v3, :cond_75

    .line 485
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    aget-object v3, p1, v1

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 490
    :cond_75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 493
    :cond_78
    :goto_78
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .end local v2    # "v":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 495
    .end local v1    # "i":I
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F
    .registers 10
    .param p1, "ca"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .param p2, "exp"    # [F
    .param p3, "len"    # I

    .line 313
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    invoke-static {p2, v0, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 315
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    .line 316
    const/4 v0, -0x1

    .line 318
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p3, :cond_3a

    .line 319
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v1

    .line 320
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 321
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v3

    .line 322
    .local v3, "id":I
    const/high16 v4, 0x700000

    and-int/2addr v4, v3

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2a

    .line 323
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_30

    .line 325
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v4, v0

    .line 327
    .end local v3    # "id":I
    :goto_30
    goto :goto_37

    .line 328
    :cond_31
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 318
    .end local v2    # "v":F
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 331
    .end local v1    # "i":I
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI[F)F
    .registers 11
    .param p1, "ca"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .param p2, "exp"    # [F
    .param p3, "len"    # I
    .param p4, "var"    # [F

    .line 282
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    invoke-static {p2, v0, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 284
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 285
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    .line 286
    const/4 v0, -0x1

    .line 288
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 289
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v1

    .line 290
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 291
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v3

    .line 292
    .local v3, "id":I
    const/high16 v4, 0x700000

    and-int/2addr v4, v3

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2f

    .line 293
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_35

    .line 295
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v4, v0

    .line 297
    .end local v3    # "id":I
    :goto_35
    goto :goto_3c

    .line 298
    :cond_36
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 288
    .end local v2    # "v":F
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 301
    .end local v1    # "i":I
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist eval([FI[F)F
    .registers 8
    .param p1, "exp"    # [F
    .param p2, "len"    # I
    .param p3, "var"    # [F

    .line 348
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mLocalStack:[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 350
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 351
    const/4 v0, -0x1

    .line 353
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_2c

    .line 354
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v1

    .line 355
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 356
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_29

    .line 358
    :cond_23
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 353
    .end local v2    # "v":F
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 361
    .end local v1    # "i":I
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist eval([F[F)F
    .registers 7
    .param p1, "exp"    # [F
    .param p2, "var"    # [F

    .line 257
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 258
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 259
    const/4 v0, -0x1

    .line 260
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 261
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, v1

    .line 262
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 263
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_24

    .line 265
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 260
    .end local v2    # "v":F
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 268
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist evalDB([F[F)F
    .registers 10
    .param p1, "exp"    # [F
    .param p2, "var"    # [F

    .line 372
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    .line 373
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    .line 374
    const/4 v0, -0x1

    .line 376
    .local v0, "sp":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_3b

    aget v3, p1, v2

    .line 377
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 378
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->opEval(II)I

    move-result v0

    goto :goto_38

    .line 380
    :cond_1a
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v4, v0

    .line 376
    .end local v3    # "v":F
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 384
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, v0

    return v1
.end method

.method blacklist opEval(II)I
    .registers 12
    .param p1, "sp"    # I
    .param p2, "id"    # I

    .line 677
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_52a

    .line 952
    return p1

    .line 949
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, p1

    .line 950
    return p1

    .line 945
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, p1

    .line 946
    return p1

    .line 941
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mVar:[F

    aget v1, v2, v1

    aput v1, v0, p1

    .line 942
    return p1

    .line 922
    :pswitch_25
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x2

    aget v1, v1, v3

    .line 923
    .local v1, "val3":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    .line 924
    .local v3, "max2":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    .line 925
    .local v4, "min1":F
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "val3 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 926
    cmpg-float v5, v1, v4

    if-gez v5, :cond_74

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x2

    aput v2, v0, v5

    .line 928
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "below min "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b3

    .line 929
    :cond_74
    cmpl-float v2, v1, v3

    if-lez v2, :cond_86

    .line 930
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x2

    aput v0, v2, v5

    .line 931
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "above max "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b3

    .line 934
    :cond_86
    sub-float v0, v1, v4

    sub-float v2, v3, v4

    div-float/2addr v0, v2

    .line 935
    .local v0, "v":F
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "v = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 936
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x2

    mul-float v6, v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v0

    const/high16 v8, 0x40400000    # 3.0f

    sub-float/2addr v8, v7

    mul-float/2addr v6, v8

    aput v6, v2, v5

    .line 938
    .end local v0    # "v":F
    :goto_b3
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 916
    .end local v1    # "val3":F
    .end local v3    # "max2":F
    .end local v4    # "min1":F
    :pswitch_b6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    .line 917
    .local v0, "tmp1":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 918
    .local v1, "tmp2":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    .line 919
    .local v2, "tmp3":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x2

    sub-float v5, v1, v0

    mul-float/2addr v5, v2

    add-float/2addr v5, v0

    aput v5, v3, v4

    .line 920
    add-int/lit8 v3, p1, -0x2

    return v3

    .line 911
    .end local v0    # "tmp1":F
    .end local v1    # "tmp2":F
    .end local v2    # "tmp3":F
    :pswitch_d3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 912
    .local v0, "swap":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    aput v3, v1, v2

    .line 913
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v0, v1, p1

    .line 914
    return p1

    .line 908
    .end local v0    # "swap":F
    :pswitch_e8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 909
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 905
    :pswitch_102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    aput v2, v0, v1

    .line 906
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 902
    :pswitch_10f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 903
    return p1

    .line 898
    :pswitch_11d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v5, v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_156

    goto :goto_157

    :cond_156
    move v0, v2

    :goto_157
    aput v0, v1, v3

    .line 900
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 895
    :pswitch_15c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 896
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 889
    :pswitch_17c
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez v0, :cond_187

    .line 890
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    .line 892
    :cond_187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, p1

    .line 893
    return p1

    .line 880
    :pswitch_1a5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 881
    .local v1, "x":I
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 882
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    mul-int v3, v1, v1

    mul-int/lit16 v3, v3, 0x3d73

    const v4, 0xc0ae5

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    const v4, 0x5208dd0d

    add-int/2addr v3, v4

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4e800000

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    aput v0, v2, p1

    .line 886
    return p1

    .line 868
    .end local v1    # "x":I
    :pswitch_1cb
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    .line 869
    .local v0, "seed":F
    cmpl-float v1, v0, v2

    if-nez v1, :cond_1db

    .line 870
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    goto :goto_1f6

    .line 872
    :cond_1db
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez v1, :cond_1ec

    .line 873
    new-instance v1, Ljava/util/Random;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    goto :goto_1f6

    .line 875
    :cond_1ec
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 878
    :goto_1f6
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 861
    .end local v0    # "seed":F
    :pswitch_1f9
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    if-nez v0, :cond_204

    .line 862
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    .line 864
    :cond_204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    .line 865
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 856
    :pswitch_213
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    invoke-direct {p0, p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->getSplineValue(IF)F

    move-result v2

    aput v2, v0, v1

    .line 858
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 851
    :pswitch_22e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getListLength(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, p1

    .line 853
    return p1

    .line 841
    :pswitch_242
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 842
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v0

    .line 843
    .local v0, "array":[F
    const/4 v1, 0x0

    .line 844
    .local v1, "sum":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_252
    array-length v3, v0

    if-ge v2, v3, :cond_25b

    .line 845
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_252

    .line 847
    .end local v2    # "i":I
    :cond_25b
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    array-length v3, v0

    int-to-float v3, v3

    div-float v3, v1, v3

    aput v3, v2, p1

    .line 848
    return p1

    .line 831
    .end local v0    # "array":[F
    .end local v1    # "sum":F
    :pswitch_264
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v0

    .line 833
    .restart local v0    # "array":[F
    const/4 v1, 0x0

    .line 834
    .restart local v1    # "sum":F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_274
    array-length v3, v0

    if-ge v2, v3, :cond_27d

    .line 835
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_274

    .line 837
    .end local v2    # "i":I
    :cond_27d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v1, v2, p1

    .line 838
    return p1

    .line 818
    .end local v0    # "array":[F
    .end local v1    # "sum":F
    :pswitch_282
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v0

    .line 820
    .restart local v0    # "array":[F
    array-length v2, v0

    if-nez v2, :cond_294

    .line 821
    return p1

    .line 823
    :cond_294
    aget v1, v0, v1

    .line 824
    .local v1, "min":F
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_297
    array-length v3, v0

    if-ge v2, v3, :cond_2a3

    .line 825
    aget v3, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_297

    .line 827
    .end local v2    # "i":I
    :cond_2a3
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v1, v2, p1

    .line 828
    return p1

    .line 808
    .end local v0    # "array":[F
    .end local v1    # "min":F
    :pswitch_2a8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloats(I)[F

    move-result-object v0

    .line 810
    .restart local v0    # "array":[F
    aget v1, v0, v1

    .line 811
    .local v1, "max":F
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2b9
    array-length v3, v0

    if-ge v2, v3, :cond_2c5

    .line 812
    aget v3, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 811
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b9

    .line 814
    .end local v2    # "i":I
    :cond_2c5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aput v1, v2, p1

    .line 815
    return p1

    .line 803
    .end local v0    # "array":[F
    .end local v1    # "max":F
    :pswitch_2ca
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->fromNaN(F)I

    move-result p2

    .line 804
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mCollectionsAccess:Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    float-to-int v3, v3

    invoke-interface {v2, p2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result v2

    aput v2, v0, v1

    .line 805
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 799
    :pswitch_2e8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 800
    return p1

    .line 795
    :pswitch_2f7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 796
    return p1

    .line 791
    :pswitch_304
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    aput v1, v0, p1

    .line 792
    return p1

    .line 787
    :pswitch_311
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    const-wide v3, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 788
    return p1

    .line 783
    :pswitch_325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 784
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 779
    :pswitch_346
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    cmpl-float v2, v3, v2

    if-lez v2, :cond_359

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    goto :goto_35f

    :cond_359
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x2

    aget v2, v2, v3

    :goto_35f
    aput v2, v0, v1

    .line 780
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 775
    :pswitch_364
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v5, p1, -0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 776
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 771
    :pswitch_37f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 772
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 767
    :pswitch_399
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 768
    return p1

    .line 763
    :pswitch_3a8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 764
    return p1

    .line 759
    :pswitch_3b7
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 760
    return p1

    .line 755
    :pswitch_3c6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 756
    return p1

    .line 751
    :pswitch_3d5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 752
    return p1

    .line 747
    :pswitch_3e4
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 748
    return p1

    .line 743
    :pswitch_3f3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, p1

    .line 744
    return p1

    .line 739
    :pswitch_401
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 740
    return p1

    .line 735
    :pswitch_410
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 736
    return p1

    .line 731
    :pswitch_41f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 732
    return p1

    .line 727
    :pswitch_42e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 728
    return p1

    .line 723
    :pswitch_43d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->copySign(FF)F

    move-result v2

    aput v2, v0, v1

    .line 724
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 719
    :pswitch_454
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    aput v1, v0, p1

    .line 720
    return p1

    .line 715
    :pswitch_461
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, p1

    .line 716
    return p1

    .line 711
    :pswitch_46e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    .line 712
    return p1

    .line 707
    :pswitch_47d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v4, v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 708
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 703
    :pswitch_497
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 704
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 699
    :pswitch_4ae
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 700
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 695
    :pswitch_4c5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    rem-float/2addr v2, v3

    aput v2, v0, v1

    .line 696
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 691
    :pswitch_4d9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 692
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 687
    :pswitch_4ed
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 688
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 683
    :pswitch_501
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 684
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 679
    :pswitch_515
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->mStack:[F

    aget v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 680
    add-int/lit8 v0, p1, -0x1

    return v0

    nop

    :pswitch_data_52a
    .packed-switch 0x310001
        :pswitch_515
        :pswitch_501
        :pswitch_4ed
        :pswitch_4d9
        :pswitch_4c5
        :pswitch_4ae
        :pswitch_497
        :pswitch_47d
        :pswitch_46e
        :pswitch_461
        :pswitch_454
        :pswitch_43d
        :pswitch_42e
        :pswitch_41f
        :pswitch_410
        :pswitch_401
        :pswitch_3f3
        :pswitch_3e4
        :pswitch_3d5
        :pswitch_3c6
        :pswitch_3b7
        :pswitch_3a8
        :pswitch_399
        :pswitch_37f
        :pswitch_364
        :pswitch_346
        :pswitch_325
        :pswitch_311
        :pswitch_304
        :pswitch_2f7
        :pswitch_2e8
        :pswitch_2ca
        :pswitch_2a8
        :pswitch_282
        :pswitch_264
        :pswitch_242
        :pswitch_22e
        :pswitch_213
        :pswitch_1f9
        :pswitch_1cb
        :pswitch_1a5
        :pswitch_17c
        :pswitch_15c
        :pswitch_11d
        :pswitch_10f
        :pswitch_102
        :pswitch_e8
        :pswitch_d3
        :pswitch_b6
        :pswitch_25
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method
