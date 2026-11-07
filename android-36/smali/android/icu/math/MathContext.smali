.class public final Landroid/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api DEFAULT:Landroid/icu/math/MathContext;

.field private static final greylist-max-o DEFAULT_DIGITS:I = 0x9

.field private static final greylist-max-o DEFAULT_FORM:I = 0x1

.field private static final greylist-max-o DEFAULT_LOSTDIGITS:Z = false

.field private static final greylist-max-o DEFAULT_ROUNDINGMODE:I = 0x4

.field public static final whitelist test-api ENGINEERING:I = 0x2

.field private static final greylist-max-o MAX_DIGITS:I = 0x3b9ac9ff

.field private static final greylist-max-o MIN_DIGITS:I = 0x0

.field public static final whitelist test-api PLAIN:I = 0x0

.field private static final greylist-max-o ROUNDS:[I

.field private static final greylist-max-o ROUNDWORDS:[Ljava/lang/String;

.field public static final whitelist test-api ROUND_CEILING:I = 0x2

.field public static final whitelist test-api ROUND_DOWN:I = 0x1

.field public static final whitelist test-api ROUND_FLOOR:I = 0x3

.field public static final whitelist test-api ROUND_HALF_DOWN:I = 0x5

.field public static final whitelist test-api ROUND_HALF_EVEN:I = 0x6

.field public static final whitelist test-api ROUND_HALF_UP:I = 0x4

.field public static final whitelist test-api ROUND_UNNECESSARY:I = 0x7

.field public static final whitelist test-api ROUND_UP:I = 0x0

.field public static final whitelist test-api SCIENTIFIC:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x63696d6d63313030L


# instance fields
.field greylist-max-o digits:I

.field greylist-max-o form:I

.field greylist-max-o lostDigits:Z

.field greylist-max-o roundingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 302
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDS:[I

    .line 305
    const-string v7, "ROUND_HALF_EVEN"

    const-string v8, "ROUND_UP"

    const-string v1, "ROUND_HALF_UP"

    const-string v2, "ROUND_UNNECESSARY"

    const-string v3, "ROUND_CEILING"

    const-string v4, "ROUND_DOWN"

    const-string v5, "ROUND_FLOOR"

    const-string v6, "ROUND_HALF_DOWN"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/icu/math/MathContext;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    sput-object v0, Landroid/icu/math/MathContext;->DEFAULT:Landroid/icu/math/MathContext;

    return-void

    :array_2c
    .array-data 4
        0x4
        0x7
        0x2
        0x1
        0x3
        0x5
        0x6
        0x0
    .end array-data
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "setdigits"    # I

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 349
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 5
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I

    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 373
    return-void
.end method

.method public constructor whitelist test-api <init>(IIZ)V
    .registers 5
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I
    .param p3, "setlostdigits"    # Z

    .line 397
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 398
    return-void
.end method

.method public constructor whitelist test-api <init>(IIZI)V
    .registers 8
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I
    .param p3, "setlostdigits"    # Z
    .param p4, "setroundingmode"    # I

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/16 v0, 0x9

    if-eq p1, v0, :cond_41

    .line 427
    if-ltz p1, :cond_28

    .line 429
    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_f

    goto :goto_41

    .line 430
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digits too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digits too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_41
    :goto_41
    const/4 v0, 0x1

    if-ne p2, v0, :cond_45

    goto :goto_4b

    .line 435
    :cond_45
    const/4 v0, 0x2

    if-ne p2, v0, :cond_49

    goto :goto_4b

    .line 436
    :cond_49
    if-nez p2, :cond_73

    .line 441
    :goto_4b
    invoke-static {p4}, Landroid/icu/math/MathContext;->isValidRound(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 443
    iput p1, p0, Landroid/icu/math/MathContext;->digits:I

    .line 444
    iput p2, p0, Landroid/icu/math/MathContext;->form:I

    .line 445
    iput-boolean p3, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    .line 446
    iput p4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    .line 447
    return-void

    .line 442
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad roundingMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad form value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isValidRound(I)Z
    .registers 4
    .param p0, "testround"    # I

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "r":I
    sget-object v1, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v1, v1

    .local v1, "$2":I
    const/4 v0, 0x0

    :goto_5
    if-lez v1, :cond_14

    .line 577
    sget-object v2, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_f

    .line 578
    const/4 v2, 0x1

    return v2

    .line 576
    :cond_f
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 581
    .end local v1    # "$2":I
    :cond_14
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api getDigits()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/icu/math/MathContext;->digits:I

    return v0
.end method

.method public whitelist test-api getForm()I
    .registers 2

    .line 472
    iget v0, p0, Landroid/icu/math/MathContext;->form:I

    return v0
.end method

.method public whitelist test-api getLostDigits()Z
    .registers 2

    .line 485
    iget-boolean v0, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    return v0
.end method

.method public whitelist test-api getRoundingMode()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/icu/math/MathContext;->roundingMode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "formstr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 549
    .local v1, "r":I
    const/4 v2, 0x0

    .line 551
    .local v2, "roundword":Ljava/lang/String;
    iget v3, p0, Landroid/icu/math/MathContext;->form:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 552
    const-string v0, "SCIENTIFIC"

    goto :goto_15

    .line 553
    :cond_b
    iget v3, p0, Landroid/icu/math/MathContext;->form:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 554
    const-string v0, "ENGINEERING"

    goto :goto_15

    .line 556
    :cond_13
    const-string v0, "PLAIN"

    .line 559
    :goto_15
    sget-object v3, Landroid/icu/math/MathContext;->ROUNDS:[I

    array-length v3, v3

    .local v3, "$1":I
    const/4 v1, 0x0

    :goto_19
    if-lez v3, :cond_2d

    .line 560
    iget v4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    sget-object v5, Landroid/icu/math/MathContext;->ROUNDS:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_28

    .line 562
    sget-object v4, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 563
    goto :goto_2d

    .line 559
    :cond_28
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 567
    .end local v3    # "$1":I
    :cond_2d
    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "digits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/icu/math/MathContext;->digits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " form="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lostDigits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v4, :cond_55

    const-string v4, "1"

    goto :goto_57

    :cond_55
    const-string v4, "0"

    :goto_57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roundingMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
