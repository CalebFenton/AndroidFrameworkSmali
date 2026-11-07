.class public final Llibcore/util/FP16;
.super Ljava/lang/Object;
.source "FP16.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist test-api EPSILON:S = 0x1400s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api EXPONENT_BIAS:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api EXPONENT_SHIFT:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api EXPONENT_SIGNIFICAND_MASK:I = 0x7fff
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final blacklist FP32_DENORMAL_FLOAT:F

.field private static final blacklist FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final blacklist FP32_EXPONENT_BIAS:I = 0x7f

.field private static final blacklist FP32_EXPONENT_SHIFT:I = 0x17

.field private static final blacklist FP32_QNAN_MASK:I = 0x400000

.field private static final blacklist FP32_SHIFTED_EXPONENT_MASK:I = 0xff

.field private static final blacklist FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final blacklist FP32_SIGN_SHIFT:I = 0x1f

.field public static final blacklist test-api LOWEST_VALUE:S = -0x401s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api MAX_EXPONENT:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api MAX_VALUE:S = 0x7bffs
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api MIN_EXPONENT:I = -0xe
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api MIN_NORMAL:S = 0x400s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api MIN_VALUE:S = 0x1s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api NEGATIVE_INFINITY:S = -0x400s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api NEGATIVE_ZERO:S = -0x8000s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api NaN:S = 0x7e00s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api POSITIVE_INFINITY:S = 0x7c00s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api POSITIVE_ZERO:S = 0x0s
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api SHIFTED_EXPONENT_MASK:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api SIGNIFICAND_MASK:I = 0x3ff
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api SIGN_MASK:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api SIGN_SHIFT:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api SIZE:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 254
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Llibcore/util/FP16;->FP32_DENORMAL_FLOAT:F

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api ceil(S)S
    .registers 7
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 359
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 360
    .local v0, "bits":I
    and-int/lit16 v1, v0, 0x7fff

    .line 361
    .local v1, "abs":I
    move v2, v0

    .line 363
    .local v2, "result":I
    const/4 v3, 0x1

    const/16 v4, 0x3c00

    if-ge v1, v4, :cond_1c

    .line 364
    const v5, 0x8000

    and-int/2addr v2, v5

    .line 365
    shr-int/lit8 v5, v0, 0xf

    not-int v5, v5

    if-eqz v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    and-int/2addr v3, v5

    neg-int v3, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_2f

    .line 366
    :cond_1c
    const/16 v4, 0x6400

    if-ge v1, v4, :cond_2f

    .line 367
    shr-int/lit8 v4, v1, 0xa

    rsub-int/lit8 v1, v4, 0x19

    .line 368
    shl-int v4, v3, v1

    sub-int/2addr v4, v3

    .line 369
    .local v4, "mask":I
    shr-int/lit8 v5, v0, 0xf

    sub-int/2addr v5, v3

    and-int v3, v4, v5

    add-int/2addr v2, v3

    .line 370
    not-int v3, v4

    and-int/2addr v2, v3

    .line 372
    .end local v4    # "mask":I
    :cond_2f
    :goto_2f
    int-to-short v3, v2

    invoke-static {v3}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 376
    or-int/lit16 v2, v2, 0x7e00

    .line 379
    :cond_38
    int-to-short v3, v2

    return v3
.end method

.method public static blacklist test-api compare(SS)I
    .registers 7
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 282
    invoke-static {p0, p1}, Llibcore/util/FP16;->less(SS)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 283
    :cond_8
    invoke-static {p0, p1}, Llibcore/util/FP16;->greater(SS)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    .line 288
    :cond_10
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/16 v3, 0x7e00

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, p0

    .line 289
    .local v0, "xBits":S
    :goto_1b
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v3, p1

    .line 291
    .local v3, "yBits":S
    :goto_23
    if-ne v0, v3, :cond_27

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    if-ge v0, v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method public static blacklist test-api equals(SS)Z
    .registers 4
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 611
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 612
    :cond_8
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 614
    :cond_f
    if-eq p0, p1, :cond_17

    or-int v0, p0, p1

    and-int/lit16 v0, v0, 0x7fff

    if-nez v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static blacklist test-api floor(S)S
    .registers 7
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 402
    const v0, 0xffff

    and-int v1, p0, v0

    .line 403
    .local v1, "bits":I
    and-int/lit16 v2, v1, 0x7fff

    .line 404
    .local v2, "abs":I
    move v3, v1

    .line 406
    .local v3, "result":I
    const/16 v4, 0x3c00

    if-ge v2, v4, :cond_17

    .line 407
    const v5, 0x8000

    and-int/2addr v3, v5

    .line 408
    if-le v1, v5, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    and-int/2addr v0, v4

    or-int/2addr v3, v0

    goto :goto_2a

    .line 409
    :cond_17
    const/16 v0, 0x6400

    if-ge v2, v0, :cond_2a

    .line 410
    shr-int/lit8 v0, v2, 0xa

    rsub-int/lit8 v2, v0, 0x19

    .line 411
    const/4 v0, 0x1

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    .line 412
    .local v4, "mask":I
    shr-int/lit8 v0, v1, 0xf

    neg-int v0, v0

    and-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 413
    not-int v0, v4

    and-int/2addr v3, v0

    .line 415
    .end local v4    # "mask":I
    :cond_2a
    :goto_2a
    int-to-short v0, v3

    invoke-static {v0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 418
    or-int/lit16 v3, v3, 0x7e00

    .line 421
    :cond_33
    int-to-short v0, v3

    return v0
.end method

.method public static blacklist test-api greater(SS)Z
    .registers 7
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 569
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 570
    :cond_8
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 572
    :cond_f
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    if-eqz v2, :cond_1e

    and-int v2, p0, v3

    sub-int v2, v0, v2

    goto :goto_20

    :cond_1e
    and-int v2, p0, v3

    .line 573
    :goto_20
    and-int v4, p1, v0

    if-eqz v4, :cond_27

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_29

    :cond_27
    and-int v0, p1, v3

    :goto_29
    if-le v2, v0, :cond_2c

    const/4 v1, 0x1

    .line 572
    :cond_2c
    return v1
.end method

.method public static blacklist test-api greaterEquals(SS)Z
    .registers 7
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 590
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 591
    :cond_8
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 593
    :cond_f
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    if-eqz v2, :cond_1e

    and-int v2, p0, v3

    sub-int v2, v0, v2

    goto :goto_20

    :cond_1e
    and-int v2, p0, v3

    .line 594
    :goto_20
    and-int v4, p1, v0

    if-eqz v4, :cond_27

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_29

    :cond_27
    and-int v0, p1, v3

    :goto_29
    if-lt v2, v0, :cond_2c

    const/4 v1, 0x1

    .line 593
    :cond_2c
    return v1
.end method

.method public static blacklist test-api isInfinite(S)Z
    .registers 3
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 629
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist test-api isNaN(S)Z
    .registers 3
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 643
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist test-api isNormalized(S)Z
    .registers 3
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 660
    and-int/lit16 v0, p0, 0x7c00

    if-eqz v0, :cond_c

    and-int/lit16 v0, p0, 0x7c00

    const/16 v1, 0x7c00

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist test-api less(SS)Z
    .registers 7
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 527
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 528
    :cond_8
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 530
    :cond_f
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    if-eqz v2, :cond_1e

    and-int v2, p0, v3

    sub-int v2, v0, v2

    goto :goto_20

    :cond_1e
    and-int v2, p0, v3

    .line 531
    :goto_20
    and-int v4, p1, v0

    if-eqz v4, :cond_27

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_29

    :cond_27
    and-int v0, p1, v3

    :goto_29
    if-ge v2, v0, :cond_2c

    const/4 v1, 0x1

    .line 530
    :cond_2c
    return v1
.end method

.method public static blacklist test-api lessEquals(SS)Z
    .registers 7
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 548
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 549
    :cond_8
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 551
    :cond_f
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    if-eqz v2, :cond_1e

    and-int v2, p0, v3

    sub-int v2, v0, v2

    goto :goto_20

    :cond_1e
    and-int v2, p0, v3

    .line 552
    :goto_20
    and-int v4, p1, v0

    if-eqz v4, :cond_27

    and-int/2addr v3, p1

    sub-int/2addr v0, v3

    goto :goto_29

    :cond_27
    and-int v0, p1, v3

    :goto_29
    if-gt v2, v0, :cond_2c

    const/4 v1, 0x1

    .line 551
    :cond_2c
    return v1
.end method

.method public static blacklist test-api max(SS)S
    .registers 6
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 502
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/16 v1, 0x7e00

    if-eqz v0, :cond_9

    return v1

    .line 503
    :cond_9
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 505
    :cond_10
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_23

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_23

    .line 506
    and-int v0, p0, v1

    if-eqz v0, :cond_21

    move v0, p1

    goto :goto_22

    :cond_21
    move v0, p0

    :goto_22
    return v0

    .line 509
    :cond_23
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_2f

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_31

    :cond_2f
    and-int v0, p0, v2

    .line 510
    :goto_31
    and-int v3, p1, v1

    if-eqz v3, :cond_38

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_3a

    :cond_38
    and-int v1, p1, v2

    :goto_3a
    if-le v0, v1, :cond_3e

    move v0, p0

    goto :goto_3f

    :cond_3e
    move v0, p1

    .line 509
    :goto_3f
    return v0
.end method

.method public static blacklist test-api min(SS)S
    .registers 6
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 474
    invoke-static {p0}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    const/16 v1, 0x7e00

    if-eqz v0, :cond_9

    return v1

    .line 475
    :cond_9
    invoke-static {p1}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 477
    :cond_10
    and-int/lit16 v0, p0, 0x7fff

    const v1, 0x8000

    if-nez v0, :cond_23

    and-int/lit16 v0, p1, 0x7fff

    if-nez v0, :cond_23

    .line 478
    and-int v0, p0, v1

    if-eqz v0, :cond_21

    move v0, p0

    goto :goto_22

    :cond_21
    move v0, p1

    :goto_22
    return v0

    .line 481
    :cond_23
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_2f

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_31

    :cond_2f
    and-int v0, p0, v2

    .line 482
    :goto_31
    and-int v3, p1, v1

    if-eqz v3, :cond_38

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_3a

    :cond_38
    and-int v1, p1, v2

    :goto_3a
    if-ge v0, v1, :cond_3e

    move v0, p0

    goto :goto_3f

    :cond_3e
    move v0, p1

    .line 481
    :goto_3f
    return v0
.end method

.method public static blacklist test-api rint(S)S
    .registers 9
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 314
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 315
    .local v0, "bits":I
    and-int/lit16 v1, v0, 0x7fff

    .line 316
    .local v1, "abs":I
    move v2, v0

    .line 318
    .local v2, "result":I
    const/16 v3, 0x3c00

    if-ge v1, v3, :cond_16

    .line 319
    const v3, 0x8000

    and-int/2addr v2, v3

    .line 320
    const/16 v3, 0x3800

    if-le v1, v3, :cond_2e

    .line 321
    or-int/lit16 v2, v2, 0x3c00

    goto :goto_2e

    .line 323
    :cond_16
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_2e

    .line 324
    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v3, v3, 0x19

    .line 325
    .local v3, "exp":I
    const/4 v4, 0x1

    shl-int v5, v4, v3

    sub-int/2addr v5, v4

    .line 326
    .local v5, "mask":I
    add-int/lit8 v6, v3, -0x1

    shl-int v6, v4, v6

    shr-int v7, v1, v3

    not-int v7, v7

    and-int/2addr v4, v7

    sub-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 327
    not-int v4, v5

    and-int/2addr v2, v4

    .line 329
    .end local v3    # "exp":I
    .end local v5    # "mask":I
    :cond_2e
    :goto_2e
    int-to-short v3, v2

    invoke-static {v3}, Llibcore/util/FP16;->isNaN(S)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 333
    or-int/lit16 v2, v2, 0x7e00

    .line 336
    :cond_37
    int-to-short v3, v2

    return v3
.end method

.method public static blacklist test-api toFloat(S)F
    .registers 9
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 682
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 683
    .local v0, "bits":I
    const v1, 0x8000

    and-int/2addr v1, v0

    .line 684
    .local v1, "s":I
    ushr-int/lit8 v2, v0, 0xa

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    .line 685
    .local v2, "e":I
    and-int/lit16 v4, v0, 0x3ff

    .line 687
    .local v4, "m":I
    const/4 v5, 0x0

    .line 688
    .local v5, "outE":I
    const/4 v6, 0x0

    .line 690
    .local v6, "outM":I
    if-nez v2, :cond_25

    .line 691
    if-eqz v4, :cond_35

    .line 693
    const/high16 v3, 0x3f000000    # 0.5f

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 694
    .local v3, "o":F
    sget v7, Llibcore/util/FP16;->FP32_DENORMAL_FLOAT:F

    sub-float/2addr v3, v7

    .line 695
    if-nez v1, :cond_23

    move v7, v3

    goto :goto_24

    :cond_23
    neg-float v7, v3

    :goto_24
    return v7

    .line 698
    .end local v3    # "o":F
    :cond_25
    shl-int/lit8 v6, v4, 0xd

    .line 699
    if-ne v2, v3, :cond_31

    .line 700
    const/16 v5, 0xff

    .line 701
    if-eqz v6, :cond_35

    .line 702
    const/high16 v3, 0x400000

    or-int/2addr v6, v3

    goto :goto_35

    .line 705
    :cond_31
    add-int/lit8 v3, v2, -0xf

    add-int/lit8 v5, v3, 0x7f

    .line 709
    :cond_35
    :goto_35
    shl-int/lit8 v3, v1, 0x10

    shl-int/lit8 v7, v5, 0x17

    or-int/2addr v3, v7

    or-int/2addr v3, v6

    .line 710
    .local v3, "out":I
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    return v7
.end method

.method public static blacklist test-api toHalf(F)S
    .registers 11
    .param p0, "f"    # F
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 739
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 740
    .local v0, "bits":I
    ushr-int/lit8 v1, v0, 0x1f

    .line 741
    .local v1, "s":I
    ushr-int/lit8 v2, v0, 0x17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 742
    .local v2, "e":I
    const v4, 0x7fffff

    and-int/2addr v4, v0

    .line 744
    .local v4, "m":I
    const/4 v5, 0x0

    .line 745
    .local v5, "outE":I
    const/4 v6, 0x0

    .line 747
    .local v6, "outM":I
    if-ne v2, v3, :cond_1d

    .line 748
    const/16 v5, 0x1f

    .line 749
    if-eqz v4, :cond_1a

    const/16 v3, 0x200

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    move v6, v3

    goto :goto_54

    .line 751
    :cond_1d
    add-int/lit8 v3, v2, -0x7f

    add-int/lit8 v2, v3, 0xf

    .line 752
    const/16 v3, 0x1f

    if-lt v2, v3, :cond_28

    .line 753
    const/16 v5, 0x1f

    goto :goto_54

    .line 754
    :cond_28
    if-gtz v2, :cond_46

    .line 755
    const/16 v3, -0xa

    if-ge v2, v3, :cond_2f

    goto :goto_54

    .line 760
    :cond_2f
    const/high16 v3, 0x800000

    or-int/2addr v4, v3

    .line 761
    rsub-int/lit8 v3, v2, 0xe

    .line 762
    .local v3, "shift":I
    shr-int v6, v4, v3

    .line 764
    const/4 v7, 0x1

    shl-int v8, v7, v3

    sub-int/2addr v8, v7

    and-int/2addr v8, v4

    .line 765
    .local v8, "lowm":I
    add-int/lit8 v9, v3, -0x1

    shl-int/2addr v7, v9

    .line 767
    .local v7, "hway":I
    and-int/lit8 v9, v6, 0x1

    add-int/2addr v9, v8

    if-le v9, v7, :cond_45

    .line 771
    add-int/lit8 v6, v6, 0x1

    .line 773
    .end local v3    # "shift":I
    .end local v7    # "hway":I
    .end local v8    # "lowm":I
    :cond_45
    goto :goto_54

    .line 775
    :cond_46
    move v5, v2

    .line 776
    shr-int/lit8 v6, v4, 0xd

    .line 778
    and-int/lit16 v3, v4, 0x1fff

    and-int/lit8 v7, v6, 0x1

    add-int/2addr v3, v7

    const/16 v7, 0x1000

    if-le v3, v7, :cond_54

    .line 782
    add-int/lit8 v6, v6, 0x1

    .line 788
    :cond_54
    :goto_54
    shl-int/lit8 v3, v1, 0xf

    shl-int/lit8 v7, v5, 0xa

    add-int/2addr v7, v6

    or-int/2addr v3, v7

    int-to-short v3, v3

    return v3
.end method

.method public static blacklist test-api toHexString(S)Ljava/lang/String;
    .registers 9
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v0, "o":Ljava/lang/StringBuilder;
    const v1, 0xffff

    and-int/2addr v1, p0

    .line 824
    .local v1, "bits":I
    ushr-int/lit8 v2, v1, 0xf

    .line 825
    .local v2, "s":I
    ushr-int/lit8 v3, v1, 0xa

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    .line 826
    .local v3, "e":I
    and-int/lit16 v5, v1, 0x3ff

    .line 828
    .local v5, "m":I
    const/16 v6, 0x2d

    if-ne v3, v4, :cond_29

    .line 829
    if-nez v5, :cond_23

    .line 830
    if-eqz v2, :cond_1d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    :cond_1d
    const-string v4, "Infinity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 833
    :cond_23
    const-string v4, "NaN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 836
    :cond_29
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    :cond_2f
    const-string v4, ""

    const-string v6, "0{2,}$"

    if-nez v3, :cond_53

    .line 838
    if-nez v5, :cond_3d

    .line 839
    const-string v4, "0x0.0p0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 841
    :cond_3d
    const-string v7, "0x0."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 843
    .local v7, "significand":Ljava/lang/String;
    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v4, "p-14"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .end local v7    # "significand":Ljava/lang/String;
    goto :goto_71

    .line 847
    :cond_53
    const-string v7, "0x1."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 849
    .restart local v7    # "significand":Ljava/lang/String;
    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/16 v4, 0x70

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v4, v3, -0xf

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .end local v7    # "significand":Ljava/lang/String;
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist test-api trunc(S)S
    .registers 6
    .param p0, "h"    # S
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 443
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 444
    .local v0, "bits":I
    and-int/lit16 v1, v0, 0x7fff

    .line 445
    .local v1, "abs":I
    move v2, v0

    .line 447
    .local v2, "result":I
    const/16 v3, 0x3c00

    if-ge v1, v3, :cond_10

    .line 448
    const v3, 0x8000

    and-int/2addr v2, v3

    goto :goto_1e

    .line 449
    :cond_10
    const/16 v3, 0x6400

    if-ge v1, v3, :cond_1e

    .line 450
    shr-int/lit8 v3, v1, 0xa

    rsub-int/lit8 v1, v3, 0x19

    .line 451
    const/4 v3, 0x1

    shl-int v4, v3, v1

    sub-int/2addr v4, v3

    .line 452
    .local v4, "mask":I
    not-int v3, v4

    and-int/2addr v2, v3

    .line 455
    .end local v4    # "mask":I
    :cond_1e
    :goto_1e
    int-to-short v3, v2

    return v3
.end method
