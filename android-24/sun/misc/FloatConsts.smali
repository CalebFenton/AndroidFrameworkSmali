.class public Lsun/misc/FloatConsts;
.super Ljava/lang/Object;
.source "FloatConsts.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final EXP_BIAS:I = 0x7f

.field public static final EXP_BIT_MASK:I = 0x7f800000

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_SUB_EXPONENT:I = -0x95

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIGNIFICAND_WIDTH:I = 0x18

.field public static final SIGNIF_BIT_MASK:I = 0x7fffff

.field public static final SIGN_BIT_MASK:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/misc/FloatConsts;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/misc/FloatConsts;->-assertionsDisabled:Z

    #@b
    .line 107
    sget-boolean v0, Lsun/misc/FloatConsts;->-assertionsDisabled:Z

    #@d
    if-nez v0, :cond_0

    #@f
    .line 35
    :cond_0
    return-void

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
