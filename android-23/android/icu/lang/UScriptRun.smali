.class public final Landroid/icu/lang/UScriptRun;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UScriptRun$ParenStackEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static PAREN_STACK_DEPTH:I

.field private static pairedCharExtra:I

.field private static pairedCharPower:I

.field private static pairedChars:[I

.field private static parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private emptyCharArray:[C

.field private fixupCount:I

.field private parenSP:I

.field private pushCount:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private text:[C

.field private textIndex:I

.field private textLimit:I

.field private textStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 542
    const/16 v0, 0x20

    #@2
    sput v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@4
    .line 543
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@6
    new-array v0, v0, [Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@8
    sput-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@a
    .line 621
    const/16 v0, 0x22

    #@c
    new-array v0, v0, [I

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@13
    .line 641
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@15
    array-length v0, v0

    #@16
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->highBit(I)B

    #@19
    move-result v0

    #@1a
    const/4 v1, 0x1

    #@1b
    shl-int v0, v1, v0

    #@1d
    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    #@1f
    .line 642
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@21
    array-length v0, v0

    #@22
    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    #@24
    sub-int/2addr v0, v1

    #@25
    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    #@27
    .line 53
    return-void

    #@28
    .line 621
    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x5b
        0x5d
        0x7b
        0x7d
        0xab
        0xbb
        0x2018
        0x2019
        0x201c
        0x201d
        0x2039
        0x203a
        0x3008
        0x3009
        0x300a
        0x300b
        0x300c
        0x300d
        0x300e
        0x300f
        0x3010
        0x3011
        0x3014
        0x3015
        0x3016
        0x3017
        0x3018
        0x3019
        0x301a
        0x301b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 530
    new-array v1, v2, [C

    #@6
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 544
    const/4 v1, -0x1

    #@9
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 545
    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 546
    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 65
    const/4 v0, 0x0

    #@10
    .line 67
    .local v0, "nullChars":[C
    invoke-virtual {p0, v0, v2, v2}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@13
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 530
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 544
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 545
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 546
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 82
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    #@12
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 530
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 544
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 545
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 546
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 99
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    #@12
    .line 97
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "chars"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 530
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 544
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 545
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 546
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 114
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset([C)V

    #@12
    .line 112
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 530
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 544
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 545
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 546
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 131
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@12
    .line 129
    return-void
.end method

.method private static final dec(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 456
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->dec(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static final dec(II)I
    .locals 1
    .param p0, "sp"    # I
    .param p1, "count"    # I

    #@0
    .prologue
    .line 451
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@2
    add-int/2addr v0, p0

    #@3
    sub-int/2addr v0, p1

    #@4
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private final fixup(I)V
    .locals 3
    .param p1, "scrptCode"    # I

    #@0
    .prologue
    .line 522
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@2
    iget v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@4
    invoke-static {v1, v2}, Landroid/icu/lang/UScriptRun;->dec(II)I

    #@7
    move-result v0

    #@8
    .line 524
    .local v0, "fixupSP":I
    :goto_0
    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@a
    add-int/lit8 v2, v1, -0x1

    #@c
    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@e
    if-lez v1, :cond_0

    #@10
    .line 525
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    #@13
    move-result v0

    #@14
    .line 526
    sget-object v1, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@16
    aget-object v1, v1, v0

    #@18
    iput p1, v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    #@1a
    goto :goto_0

    #@1b
    .line 520
    :cond_0
    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 599
    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    #@2
    .line 600
    .local v1, "probe":I
    const/4 v0, 0x0

    #@3
    .line 602
    .local v0, "index":I
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@5
    sget v3, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    #@7
    aget v2, v2, v3

    #@9
    if-lt p0, v2, :cond_0

    #@b
    .line 603
    sget v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    #@d
    .line 606
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@e
    if-le v1, v2, :cond_1

    #@10
    .line 607
    shr-int/lit8 v1, v1, 0x1

    #@12
    .line 609
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@14
    add-int v3, v0, v1

    #@16
    aget v2, v2, v3

    #@18
    if-lt p0, v2, :cond_0

    #@1a
    .line 610
    add-int/2addr v0, v1

    #@1b
    goto :goto_0

    #@1c
    .line 614
    :cond_1
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@1e
    aget v2, v2, v0

    #@20
    if-eq v2, p0, :cond_2

    #@22
    .line 615
    const/4 v0, -0x1

    #@23
    .line 618
    :cond_2
    return v0
.end method

.method private static final highBit(I)B
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 557
    if-gtz p0, :cond_0

    #@4
    .line 558
    const/16 v1, -0x20

    #@6
    return v1

    #@7
    .line 561
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 563
    .local v0, "bit":B
    const/high16 v1, 0x10000

    #@a
    if-lt p0, v1, :cond_1

    #@c
    .line 564
    shr-int/lit8 p0, p0, 0x10

    #@e
    .line 565
    int-to-byte v0, v2

    #@f
    .line 568
    .end local v0    # "bit":B
    :cond_1
    const/16 v1, 0x100

    #@11
    if-lt p0, v1, :cond_2

    #@13
    .line 569
    shr-int/lit8 p0, p0, 0x8

    #@15
    .line 570
    add-int/lit8 v1, v0, 0x8

    #@17
    int-to-byte v0, v1

    #@18
    .line 573
    :cond_2
    if-lt p0, v2, :cond_3

    #@1a
    .line 574
    shr-int/lit8 p0, p0, 0x4

    #@1c
    .line 575
    add-int/lit8 v1, v0, 0x4

    #@1e
    int-to-byte v0, v1

    #@1f
    .line 578
    :cond_3
    const/4 v1, 0x4

    #@20
    if-lt p0, v1, :cond_4

    #@22
    .line 579
    shr-int/lit8 p0, p0, 0x2

    #@24
    .line 580
    add-int/lit8 v1, v0, 0x2

    #@26
    int-to-byte v0, v1

    #@27
    .line 583
    :cond_4
    const/4 v1, 0x2

    #@28
    if-lt p0, v1, :cond_5

    #@2a
    .line 584
    shr-int/lit8 p0, p0, 0x1

    #@2c
    .line 585
    add-int/lit8 v1, v0, 0x1

    #@2e
    int-to-byte v0, v1

    #@2f
    .line 588
    :cond_5
    return v0
.end method

.method private static final inc(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 446
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->inc(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static final inc(II)I
    .locals 1
    .param p0, "sp"    # I
    .param p1, "count"    # I

    #@0
    .prologue
    .line 441
    add-int v0, p0, p1

    #@2
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static final limitInc(I)I
    .locals 1
    .param p0, "count"    # I

    #@0
    .prologue
    .line 461
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 462
    add-int/lit8 p0, p0, 0x1

    #@6
    .line 465
    :cond_0
    return p0
.end method

.method private static final mod(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 436
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@2
    rem-int v0, p0, v0

    #@4
    return v0
.end method

.method private final pop()V
    .locals 3

    #@0
    .prologue
    .line 490
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 491
    return-void

    #@7
    .line 494
    :cond_0
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@9
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v2, v0, v1

    #@e
    .line 496
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@10
    if-lez v0, :cond_1

    #@12
    .line 497
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@18
    .line 500
    :cond_1
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1e
    .line 501
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@20
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->dec(I)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@26
    .line 505
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 506
    const/4 v0, -0x1

    #@2d
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@2f
    .line 487
    :cond_2
    return-void
.end method

.method private final push(II)V
    .locals 3
    .param p1, "pairIndex"    # I
    .param p2, "scrptCode"    # I

    #@0
    .prologue
    .line 480
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@2
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@8
    .line 481
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@a
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@10
    .line 483
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@12
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@18
    .line 484
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@1a
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@1c
    new-instance v2, Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@1e
    invoke-direct {v2, p1, p2}, Landroid/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    #@21
    aput-object v2, v0, v1

    #@23
    .line 478
    return-void
.end method

.method private static sameScript(II)Z
    .locals 1
    .param p0, "scriptOne"    # I
    .param p1, "scriptTwo"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 416
    if-le p0, v0, :cond_0

    #@3
    if-gt p1, v0, :cond_1

    #@5
    :cond_0
    :goto_0
    return v0

    #@6
    :cond_1
    if-eq p0, p1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private final stackIsEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 470
    iget v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private final stackIsNotEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method private final syncFixup()V
    .locals 1

    #@0
    .prologue
    .line 517
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@3
    .line 515
    return-void
.end method

.method private final top()Landroid/icu/lang/UScriptRun$ParenStackEntry;
    .locals 2

    #@0
    .prologue
    .line 512
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@2
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method


# virtual methods
.method public final getScriptCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 325
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@2
    return v0
.end method

.method public final getScriptLimit()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 310
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@2
    return v0
.end method

.method public final getScriptStart()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 296
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    #@2
    return v0
.end method

.method public final next()Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 341
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@4
    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@6
    if-lt v5, v6, :cond_0

    #@8
    .line 342
    return v7

    #@9
    .line 345
    :cond_0
    iput v7, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@b
    .line 346
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@d
    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    #@f
    .line 348
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->syncFixup()V

    #@12
    .line 350
    :cond_1
    :goto_0
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@14
    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@16
    if-ge v5, v6, :cond_7

    #@18
    .line 351
    iget-object v5, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@1a
    iget v6, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@1c
    iget v7, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@1e
    iget v8, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@20
    iget v9, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@22
    sub-int/2addr v8, v9

    #@23
    invoke-static {v5, v6, v7, v8}, Landroid/icu/text/UTF16;->charAt([CIII)I

    #@26
    move-result v0

    #@27
    .line 352
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2a
    move-result v1

    #@2b
    .line 353
    .local v1, "codePointCount":I
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    #@2e
    move-result v4

    #@2f
    .line 354
    .local v4, "sc":I
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->getPairIndex(I)I

    #@32
    move-result v2

    #@33
    .line 356
    .local v2, "pairIndex":I
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@35
    add-int/2addr v5, v1

    #@36
    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@38
    .line 364
    if-ltz v2, :cond_2

    #@3a
    .line 365
    and-int/lit8 v5, v2, 0x1

    #@3c
    if-nez v5, :cond_4

    #@3e
    .line 366
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@40
    invoke-direct {p0, v2, v5}, Landroid/icu/lang/UScriptRun;->push(II)V

    #@43
    .line 380
    :cond_2
    :goto_1
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@45
    invoke-static {v5, v4}, Landroid/icu/lang/UScriptRun;->sameScript(II)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_6

    #@4b
    .line 381
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@4d
    if-gt v5, v10, :cond_3

    #@4f
    if-le v4, v10, :cond_3

    #@51
    .line 382
    iput v4, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@53
    .line 384
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@55
    invoke-direct {p0, v5}, Landroid/icu/lang/UScriptRun;->fixup(I)V

    #@58
    .line 389
    :cond_3
    if-ltz v2, :cond_1

    #@5a
    and-int/lit8 v5, v2, 0x1

    #@5c
    if-eqz v5, :cond_1

    #@5e
    .line 390
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@61
    goto :goto_0

    #@62
    .line 368
    :cond_4
    and-int/lit8 v3, v2, -0x2

    #@64
    .line 370
    .local v3, "pi":I
    :goto_2
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_5

    #@6a
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@6d
    move-result-object v5

    #@6e
    iget v5, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    #@70
    if-eq v5, v3, :cond_5

    #@72
    .line 371
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@75
    goto :goto_2

    #@76
    .line 374
    :cond_5
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_2

    #@7c
    .line 375
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@7f
    move-result-object v5

    #@80
    iget v4, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    #@82
    goto :goto_1

    #@83
    .line 396
    .end local v3    # "pi":I
    :cond_6
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@85
    sub-int/2addr v5, v1

    #@86
    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@88
    .line 401
    .end local v0    # "ch":I
    .end local v1    # "codePointCount":I
    .end local v2    # "pairIndex":I
    .end local v4    # "sc":I
    :cond_7
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@8a
    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@8c
    .line 402
    return v10
.end method

.method public final reset()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 147
    :goto_0
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 148
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@b
    goto :goto_0

    #@c
    .line 151
    :cond_0
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    #@10
    .line 152
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@12
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@14
    .line 153
    iput v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@16
    .line 154
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@18
    .line 155
    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1a
    .line 156
    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@1c
    .line 158
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@1e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@20
    .line 142
    return-void
.end method

.method public final reset(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    .line 179
    .local v0, "len":I
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 180
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@7
    array-length v0, v1

    #@8
    .line 183
    :cond_0
    if-ltz p1, :cond_1

    #@a
    if-gez p2, :cond_2

    #@c
    .line 184
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v1

    #@12
    .line 183
    :cond_2
    sub-int v1, v0, p2

    #@14
    if-gt p1, v1, :cond_1

    #@16
    .line 187
    iput p1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@18
    .line 188
    add-int v1, p1, p2

    #@1a
    iput v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@1c
    .line 190
    invoke-virtual {p0}, Landroid/icu/lang/UScriptRun;->reset()V

    #@1f
    .line 175
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    .line 276
    .local v0, "length":I
    if-eqz p1, :cond_0

    #@3
    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 280
    :cond_0
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    #@b
    .line 272
    return-void
.end method

.method public final reset(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    .line 255
    .local v0, "chars":[C
    if-eqz p1, :cond_0

    #@3
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    .line 259
    .end local v0    # "chars":[C
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@a
    .line 251
    return-void
.end method

.method public final reset([C)V
    .locals 2
    .param p1, "chars"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    .line 231
    .local v0, "length":I
    if-eqz p1, :cond_0

    #@3
    .line 232
    array-length v0, p1

    #@4
    .line 235
    :cond_0
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@8
    .line 227
    return-void
.end method

.method public final reset([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 208
    if-nez p1, :cond_0

    #@2
    .line 209
    iget-object p1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@4
    .line 212
    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@6
    .line 214
    invoke-virtual {p0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(II)V

    #@9
    .line 206
    return-void
.end method
