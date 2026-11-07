.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;
.super Ljava/lang/Object;
.source "IntegerExpressionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator$Op;
    }
.end annotation


# static fields
.field public static final blacklist I_ABS:I = 0x10010

.field public static final blacklist I_ADD:I = 0x10001

.field public static final blacklist I_AND:I = 0x1000a

.field public static final blacklist I_CLAMP:I = 0x10015

.field public static final blacklist I_COPY_SIGN:I = 0x1000c

.field public static final blacklist I_DECR:I = 0x10012

.field public static final blacklist I_DIV:I = 0x10004

.field public static final blacklist I_IFELSE:I = 0x10016

.field public static final blacklist I_INCR:I = 0x10011

.field public static final blacklist I_MAD:I = 0x10017

.field public static final blacklist I_MAX:I = 0x1000e

.field public static final blacklist I_MIN:I = 0x1000d

.field public static final blacklist I_MOD:I = 0x10005

.field public static final blacklist I_MUL:I = 0x10003

.field public static final blacklist I_NEG:I = 0x1000f

.field public static final blacklist I_NOT:I = 0x10013

.field public static final blacklist I_OR:I = 0x10009

.field public static final blacklist I_SHL:I = 0x10006

.field public static final blacklist I_SHR:I = 0x10007

.field public static final blacklist I_SIGN:I = 0x10014

.field public static final blacklist I_SUB:I = 0x10002

.field public static final blacklist I_USHR:I = 0x10008

.field public static final blacklist I_VAR1:I = 0x10018

.field public static final blacklist I_VAR2:I = 0x10019

.field public static final blacklist I_XOR:I = 0x1000b

.field public static final blacklist LAST_OP:F = 25.0f

.field static final blacklist NO_OF_OPS:[I

.field public static final blacklist OFFSET:I = 0x10000

.field private static final blacklist OP_ABS:I = 0x10010

.field private static final blacklist OP_ADD:I = 0x10001

.field private static final blacklist OP_AND:I = 0x1000a

.field private static final blacklist OP_CLAMP:I = 0x10015

.field private static final blacklist OP_COPY_SIGN:I = 0x1000c

.field private static final blacklist OP_DECR:I = 0x10012

.field private static final blacklist OP_DIV:I = 0x10004

.field private static final blacklist OP_FIRST_VAR:I = 0x10018

.field private static final blacklist OP_INCR:I = 0x10011

.field private static final blacklist OP_MAD:I = 0x10017

.field private static final blacklist OP_MAX:I = 0x1000e

.field private static final blacklist OP_MIN:I = 0x1000d

.field private static final blacklist OP_MOD:I = 0x10005

.field private static final blacklist OP_MUL:I = 0x10003

.field private static final blacklist OP_NEG:I = 0x1000f

.field private static final blacklist OP_NOT:I = 0x10013

.field private static final blacklist OP_OR:I = 0x10009

.field private static final blacklist OP_SECOND_VAR:I = 0x10019

.field private static final blacklist OP_SHL:I = 0x10006

.field private static final blacklist OP_SHR:I = 0x10007

.field private static final blacklist OP_SIGN:I = 0x10014

.field private static final blacklist OP_SUB:I = 0x10002

.field private static final blacklist OP_TERNARY_CONDITIONAL:I = 0x10016

.field private static final blacklist OP_THIRD_VAR:I = 0x1001a

.field private static final blacklist OP_USHR:I = 0x10008

.field private static final blacklist OP_XOR:I = 0x1000b

.field static blacklist sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mLocalStack:[I

.field blacklist mStack:[I

.field blacklist mVar:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 28
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "k":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "k":I
    .local v2, "k":I
    const-string v3, "NOP"

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .local v1, "k":I
    const-string v3, "+"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "-"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "*"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "%"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "<<"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, ">>"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, ">>>"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "&"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "^"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "copySign"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "min"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "max"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "neg"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "abs"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "incr"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "decr"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "not"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string/jumbo v3, "sign"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "clamp"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "ifElse"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "mad"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "ceil"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "a[0]"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    const-string v3, "a[1]"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    const-string v3, "a[2]"

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v1    # "k":I
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_110

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    return-void

    :array_110
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
        0x3
        0x3
        0x3
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 63
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    return-void
.end method

.method static blacklist infix(I)Z
    .registers 2
    .param p0, "n"    # I

    .line 486
    const/16 v0, 0xc

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isOperation(II)Z
    .registers 4
    .param p0, "opMask"    # I
    .param p1, "i"    # I

    .line 497
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist toMathName(I)Ljava/lang/String;
    .registers 3
    .param p0, "f"    # I

    .line 317
    const/high16 v0, 0x10000

    sub-int v0, p0, v0

    .line 318
    .local v0, "id":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist toString(I[I)Ljava/lang/String;
    .registers 7
    .param p0, "opMask"    # I
    .param p1, "exp"    # [I

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_54

    .line 367
    aget v2, p1, v1

    .line 369
    .local v2, "v":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    const-string v4, " "

    if-eqz v3, :cond_3d

    .line 370
    const/high16 v3, 0x10000

    if-le v2, v3, :cond_30

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 376
    :cond_30
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3d
    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 383
    .end local v1    # "i":I
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist toString(I[II)Ljava/lang/String;
    .registers 9
    .param p0, "mask"    # I
    .param p1, "exp"    # [I
    .param p2, "sp"    # I

    .line 400
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    and-int/2addr v0, p0

    if-eqz v0, :cond_146

    .line 401
    aget v0, p1, p2

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 402
    .local v0, "id":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->NO_OF_OPS:[I

    aget v1, v1, v0

    const-string v2, ") "

    const-string v3, ")"

    const-string v4, ", "

    const-string v5, "("

    packed-switch v1, :pswitch_data_14e

    :pswitch_19
    goto/16 :goto_146

    .line 425
    :pswitch_1b
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x3

    .line 427
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 429
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    .line 431
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    return-object v1

    .line 434
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    .line 436
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 438
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    .line 440
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    return-object v1

    .line 408
    :pswitch_a3
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->infix(I)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p2, -0x2

    .line 410
    invoke-static {p0, p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 412
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p2, -0x1

    .line 414
    invoke-static {p0, p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    return-object v1

    .line 417
    :cond_e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x2

    .line 419
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    .line 421
    invoke-static {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    return-object v1

    .line 406
    :pswitch_11b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->sNames:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :pswitch_143
    const-string v1, "nop"

    return-object v1

    .line 445
    .end local v0    # "id":I
    :cond_146
    :goto_146
    aget v0, p1, p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_14e
    .packed-switch -0x1
        :pswitch_143
        :pswitch_19
        :pswitch_11b
        :pswitch_a3
        :pswitch_1b
    .end packed-switch
.end method

.method public static blacklist toString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "opMask"    # I
    .param p1, "exp"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    .line 333
    aget v2, p1, v1

    .line 335
    .local v2, "v":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_2a

    .line 336
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1c

    .line 337
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 339
    :cond_1c
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 344
    :cond_2a
    aget-object v3, p2, v1

    if-eqz v3, :cond_33

    .line 345
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :goto_36
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 351
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toStringInfix(I[I)Ljava/lang/String;
    .registers 3
    .param p0, "opMask"    # I
    .param p1, "exp"    # [I

    .line 395
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs blacklist eval(I[II[I)I
    .registers 9
    .param p1, "mask"    # I
    .param p2, "exp"    # [I
    .param p3, "len"    # I
    .param p4, "var"    # [I

    .line 103
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    invoke-static {p2, v0, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mLocalStack:[I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 105
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 106
    const/4 v0, -0x1

    .line 107
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p3, :cond_27

    .line 108
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, v1

    .line 109
    .local v2, "v":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_1e

    .line 110
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result v0

    goto :goto_24

    .line 112
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 107
    .end local v2    # "v":I
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 115
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist eval(I[I[I)I
    .registers 8
    .param p1, "mask"    # I
    .param p2, "exp"    # [I
    .param p3, "var"    # [I

    .line 79
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 80
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 83
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, v1

    .line 84
    .local v2, "v":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_19

    .line 85
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result v0

    goto :goto_1f

    .line 87
    :cond_19
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 82
    .end local v2    # "v":I
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    return v1
.end method

.method public varargs blacklist evalDB(I[I[I)I
    .registers 8
    .param p1, "opMask"    # I
    .param p2, "exp"    # [I
    .param p3, "var"    # [I

    .line 127
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    .line 128
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    .line 129
    const/4 v0, -0x1

    .line 130
    .local v0, "sp":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_20

    .line 131
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, v1

    .line 132
    .local v2, "v":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_17

    .line 133
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->opEval(II)I

    move-result v0

    goto :goto_1d

    .line 135
    :cond_17
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v3, v0

    .line 130
    .end local v2    # "v":I
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 138
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, v0

    return v1
.end method

.method blacklist opEval(II)I
    .registers 9
    .param p1, "sp"    # I
    .param p2, "id"    # I

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_1ea

    .line 274
    return v0

    .line 271
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, p1

    .line 272
    return p1

    .line 267
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget v1, v2, v1

    aput v1, v0, p1

    .line 268
    return p1

    .line 263
    :pswitch_19
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mVar:[I

    aget v0, v2, v0

    aput v0, v1, p1

    .line 264
    return p1

    .line 259
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v5, p1, -0x2

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 260
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 255
    :pswitch_3d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    if-lez v2, :cond_4e

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    goto :goto_54

    :cond_4e
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x2

    aget v2, v2, v3

    :goto_54
    aput v2, v0, v1

    .line 256
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 251
    :pswitch_59
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 252
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 247
    :pswitch_7a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    neg-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 248
    return p1

    .line 243
    :pswitch_8d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, p1

    not-int v1, v1

    aput v1, v0, p1

    .line 244
    return p1

    .line 239
    :pswitch_97
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    sub-int/2addr v2, v1

    aput v2, v0, p1

    .line 240
    return p1

    .line 235
    :pswitch_a1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v2, v2, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 236
    return p1

    .line 231
    :pswitch_ab
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, p1

    .line 232
    return p1

    .line 227
    :pswitch_b8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v1, v1, p1

    neg-int v1, v1

    aput v1, v0, p1

    .line 228
    return p1

    .line 223
    :pswitch_c2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    .line 224
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 219
    :pswitch_d9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 220
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 215
    :pswitch_f0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    shr-int/lit8 v3, v3, 0x1f

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 216
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 211
    :pswitch_10d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 212
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 207
    :pswitch_121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 208
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 203
    :pswitch_135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 204
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 199
    :pswitch_149
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    ushr-int/2addr v2, v3

    aput v2, v0, v1

    .line 200
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 195
    :pswitch_15d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    shr-int/2addr v2, v3

    aput v2, v0, v1

    .line 196
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 191
    :pswitch_171
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    shl-int/2addr v2, v3

    aput v2, v0, v1

    .line 192
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 187
    :pswitch_185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    rem-int/2addr v2, v3

    aput v2, v0, v1

    .line 188
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 183
    :pswitch_199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    div-int/2addr v2, v3

    aput v2, v0, v1

    .line 184
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 179
    :pswitch_1ad
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 180
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 175
    :pswitch_1c1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 176
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 171
    :pswitch_1d5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->mStack:[I

    aget v3, v3, p1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 172
    add-int/lit8 v0, p1, -0x1

    return v0

    nop

    :pswitch_data_1ea
    .packed-switch 0x10001
        :pswitch_1d5
        :pswitch_1c1
        :pswitch_1ad
        :pswitch_199
        :pswitch_185
        :pswitch_171
        :pswitch_15d
        :pswitch_149
        :pswitch_135
        :pswitch_121
        :pswitch_10d
        :pswitch_f0
        :pswitch_d9
        :pswitch_c2
        :pswitch_b8
        :pswitch_ab
        :pswitch_a1
        :pswitch_97
        :pswitch_8d
        :pswitch_7a
        :pswitch_59
        :pswitch_3d
        :pswitch_22
        :pswitch_19
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
