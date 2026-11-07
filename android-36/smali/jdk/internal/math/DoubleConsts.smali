.class public Ljdk/internal/math/DoubleConsts;
.super Ljava/lang/Object;
.source "DoubleConsts.java"


# static fields
.field public static final blacklist EXP_BIAS:I = 0x3ff

.field public static final blacklist EXP_BIT_MASK:J = 0x7ff0000000000000L

.field public static final blacklist MAG_BIT_MASK:J = 0x7fffffffffffffffL

.field public static final blacklist MAX_EXPONENT:I = 0x3ff

.field public static final blacklist MAX_VALUE:D = 1.7976931348623157E308

.field public static final blacklist MIN_EXPONENT:I = -0x3fe

.field public static final blacklist MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final blacklist MIN_SUB_EXPONENT:I = -0x432

.field public static final blacklist MIN_VALUE:D = 4.9E-324

.field public static final blacklist NEGATIVE_INFINITY:D = -Infinity

.field public static final blacklist NaN:D = NaN

.field public static final blacklist POSITIVE_INFINITY:D = Infinity

.field public static final blacklist SIGNIFICAND_WIDTH:I = 0x35

.field public static final blacklist SIGNIF_BIT_MASK:J = 0xfffffffffffffL

.field public static final blacklist SIGN_BIT_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 125
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
