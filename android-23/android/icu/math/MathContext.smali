.class public final Landroid/icu/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Landroid/icu/math/MathContext;

.field private static final DEFAULT_DIGITS:I = 0x9

.field private static final DEFAULT_FORM:I = 0x1

.field private static final DEFAULT_LOSTDIGITS:Z = false

.field private static final DEFAULT_ROUNDINGMODE:I = 0x4

.field public static final ENGINEERING:I = 0x2

.field private static final MAX_DIGITS:I = 0x3b9ac9ff

.field private static final MIN_DIGITS:I = 0x0

.field public static final PLAIN:I = 0x0

.field private static final ROUNDS:[I

.field private static final ROUNDWORDS:[Ljava/lang/String;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final SCIENTIFIC:I = 0x1

.field private static final serialVersionUID:J = 0x63696d6d63313030L


# instance fields
.field digits:I

.field form:I

.field lostDigits:Z

.field roundingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 311
    new-array v0, v1, [I

    #@7
    fill-array-data v0, :array_0

    #@a
    sput-object v0, Landroid/icu/math/MathContext;->ROUNDS:[I

    #@c
    .line 314
    new-array v0, v1, [Ljava/lang/String;

    #@e
    const-string/jumbo v1, "ROUND_HALF_UP"

    #@11
    aput-object v1, v0, v3

    #@13
    const-string/jumbo v1, "ROUND_UNNECESSARY"

    #@16
    aput-object v1, v0, v4

    #@18
    const-string/jumbo v1, "ROUND_CEILING"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    const-string/jumbo v1, "ROUND_DOWN"

    #@21
    const/4 v2, 0x3

    #@22
    aput-object v1, v0, v2

    #@24
    const-string/jumbo v1, "ROUND_FLOOR"

    #@27
    aput-object v1, v0, v5

    #@29
    const-string/jumbo v1, "ROUND_HALF_DOWN"

    #@2c
    const/4 v2, 0x5

    #@2d
    aput-object v1, v0, v2

    #@2f
    const-string/jumbo v1, "ROUND_HALF_EVEN"

    #@32
    const/4 v2, 0x6

    #@33
    aput-object v1, v0, v2

    #@35
    const-string/jumbo v1, "ROUND_UP"

    #@38
    const/4 v2, 0x7

    #@39
    aput-object v1, v0, v2

    #@3b
    sput-object v0, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    #@3d
    .line 335
    new-instance v0, Landroid/icu/math/MathContext;

    #@3f
    const/16 v1, 0x9

    #@41
    invoke-direct {v0, v1, v4, v3, v5}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@44
    sput-object v0, Landroid/icu/math/MathContext;->DEFAULT:Landroid/icu/math/MathContext;

    #@46
    .line 80
    return-void

    #@47
    .line 311
    nop

    #@48
    :array_0
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

.method public constructor <init>(I)V
    .locals 3
    .param p1, "setdigits"    # I

    #@0
    .prologue
    .line 359
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x4

    #@3
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@6
    .line 360
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I

    #@0
    .prologue
    .line 384
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@5
    .line 385
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I
    .param p3, "setlostdigits"    # Z

    #@0
    .prologue
    .line 410
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@4
    .line 411
    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 3
    .param p1, "setdigits"    # I
    .param p2, "setform"    # I
    .param p3, "setlostdigits"    # Z
    .param p4, "setroundingmode"    # I

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 439
    const/16 v0, 0x9

    #@5
    if-eq p1, v0, :cond_1

    #@7
    .line 441
    if-gez p1, :cond_0

    #@9
    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Digits too small: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 443
    :cond_0
    const v0, 0x3b9ac9ff

    #@26
    if-le p1, v0, :cond_1

    #@28
    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Digits too large: "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 447
    :cond_1
    const/4 v0, 0x1

    #@43
    if-ne p2, v0, :cond_3

    #@45
    .line 455
    :cond_2
    invoke-static {p4}, Landroid/icu/math/MathContext;->isValidRound(I)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_4

    #@4b
    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "Bad roundingMode value: "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    .line 449
    :cond_3
    const/4 v0, 0x2

    #@66
    if-eq p2, v0, :cond_2

    #@68
    .line 450
    if-eqz p2, :cond_2

    #@6a
    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "Bad form value: "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v0

    #@84
    .line 457
    :cond_4
    iput p1, p0, Landroid/icu/math/MathContext;->digits:I

    #@86
    .line 458
    iput p2, p0, Landroid/icu/math/MathContext;->form:I

    #@88
    .line 459
    iput-boolean p3, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@8a
    .line 460
    iput p4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    #@8c
    .line 461
    return-void
.end method

.method private static isValidRound(I)Z
    .locals 4
    .param p0, "testround"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 593
    const/4 v1, 0x0

    #@2
    .line 594
    .local v1, "r":I
    sget-object v2, Landroid/icu/math/MathContext;->ROUNDS:[I

    #@4
    array-length v0, v2

    #@5
    .local v0, "$2":I
    const/4 v1, 0x0

    #@6
    :goto_0
    if-lez v0, :cond_1

    #@8
    .line 595
    sget-object v2, Landroid/icu/math/MathContext;->ROUNDS:[I

    #@a
    aget v2, v2, v1

    #@c
    if-ne p0, v2, :cond_0

    #@e
    .line 596
    const/4 v2, 0x1

    #@f
    return v2

    #@10
    .line 594
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 599
    :cond_1
    return v3
.end method


# virtual methods
.method public getDigits()I
    .locals 1

    #@0
    .prologue
    .line 473
    iget v0, p0, Landroid/icu/math/MathContext;->digits:I

    #@2
    return v0
.end method

.method public getForm()I
    .locals 1

    #@0
    .prologue
    .line 488
    iget v0, p0, Landroid/icu/math/MathContext;->form:I

    #@2
    return v0
.end method

.method public getLostDigits()Z
    .locals 1

    #@0
    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@2
    return v0
.end method

.method public getRoundingMode()I
    .locals 1

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/icu/math/MathContext;->roundingMode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 565
    const/4 v1, 0x0

    #@1
    .line 566
    .local v1, "formstr":Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .line 567
    .local v2, "r":I
    const/4 v3, 0x0

    #@3
    .line 569
    .local v3, "roundword":Ljava/lang/String;
    iget v4, p0, Landroid/icu/math/MathContext;->form:I

    #@5
    const/4 v5, 0x1

    #@6
    if-ne v4, v5, :cond_1

    #@8
    .line 570
    const-string/jumbo v1, "SCIENTIFIC"

    #@b
    .line 577
    .local v1, "formstr":Ljava/lang/String;
    :goto_0
    sget-object v4, Landroid/icu/math/MathContext;->ROUNDS:[I

    #@d
    array-length v0, v4

    #@e
    .local v0, "$1":I
    const/4 v2, 0x0

    #@f
    :goto_1
    if-lez v0, :cond_0

    #@11
    .line 578
    iget v4, p0, Landroid/icu/math/MathContext;->roundingMode:I

    #@13
    sget-object v5, Landroid/icu/math/MathContext;->ROUNDS:[I

    #@15
    aget v5, v5, v2

    #@17
    if-ne v4, v5, :cond_3

    #@19
    .line 580
    sget-object v4, Landroid/icu/math/MathContext;->ROUNDWORDS:[Ljava/lang/String;

    #@1b
    aget-object v3, v4, v2

    #@1d
    .line 585
    .end local v3    # "roundword":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "digits="

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    iget v5, p0, Landroid/icu/math/MathContext;->digits:I

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    const-string/jumbo v5, "form="

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    const-string/jumbo v5, " "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    const-string/jumbo v5, "lostDigits="

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    iget-boolean v4, p0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@51
    if-eqz v4, :cond_4

    #@53
    const-string/jumbo v4, "1"

    #@56
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v5, " "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    const-string/jumbo v5, "roundingMode="

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    return-object v4

    #@71
    .line 571
    .end local v0    # "$1":I
    .local v1, "formstr":Ljava/lang/String;
    .restart local v3    # "roundword":Ljava/lang/String;
    :cond_1
    iget v4, p0, Landroid/icu/math/MathContext;->form:I

    #@73
    const/4 v5, 0x2

    #@74
    if-ne v4, v5, :cond_2

    #@76
    .line 572
    const-string/jumbo v1, "ENGINEERING"

    #@79
    .local v1, "formstr":Ljava/lang/String;
    goto :goto_0

    #@7a
    .line 574
    .local v1, "formstr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "PLAIN"

    #@7d
    .local v1, "formstr":Ljava/lang/String;
    goto :goto_0

    #@7e
    .line 577
    .restart local v0    # "$1":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@80
    add-int/lit8 v2, v2, 0x1

    #@82
    goto :goto_1

    #@83
    .line 585
    .end local v3    # "roundword":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "0"

    #@86
    goto :goto_2
.end method
