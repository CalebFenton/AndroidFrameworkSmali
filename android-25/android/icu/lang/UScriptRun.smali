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
    .line 544
    const/16 v0, 0x20

    #@2
    sput v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@4
    .line 545
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@6
    new-array v0, v0, [Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@8
    sput-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@a
    .line 623
    const/16 v0, 0x22

    #@c
    new-array v0, v0, [I

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@13
    .line 643
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
    .line 644
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
    .line 55
    return-void

    #@28
    .line 623
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v1, v2, [C

    #@6
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 546
    const/4 v1, -0x1

    #@9
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 547
    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 548
    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 67
    const/4 v0, 0x0

    #@10
    .line 69
    .local v0, "nullChars":[C
    invoke-virtual {p0, v0, v2, v2}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@13
    .line 65
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 546
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 547
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 84
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    #@12
    .line 82
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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 546
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 547
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 101
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    #@12
    .line 99
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
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 546
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 547
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 116
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset([C)V

    #@12
    .line 114
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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 532
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@8
    .line 546
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    .line 547
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@d
    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@f
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@12
    .line 131
    return-void
.end method

.method private static final dec(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 458
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
    .line 453
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
    .line 524
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@2
    iget v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@4
    invoke-static {v1, v2}, Landroid/icu/lang/UScriptRun;->dec(II)I

    #@7
    move-result v0

    #@8
    .line 526
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
    .line 527
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    #@13
    move-result v0

    #@14
    .line 528
    sget-object v1, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@16
    aget-object v1, v1, v0

    #@18
    iput p1, v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    #@1a
    goto :goto_0

    #@1b
    .line 522
    :cond_0
    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 601
    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    #@2
    .line 602
    .local v1, "probe":I
    const/4 v0, 0x0

    #@3
    .line 604
    .local v0, "index":I
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@5
    sget v3, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    #@7
    aget v2, v2, v3

    #@9
    if-lt p0, v2, :cond_0

    #@b
    .line 605
    sget v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    #@d
    .line 608
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@e
    if-le v1, v2, :cond_1

    #@10
    .line 609
    shr-int/lit8 v1, v1, 0x1

    #@12
    .line 611
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@14
    add-int v3, v0, v1

    #@16
    aget v2, v2, v3

    #@18
    if-lt p0, v2, :cond_0

    #@1a
    .line 612
    add-int/2addr v0, v1

    #@1b
    goto :goto_0

    #@1c
    .line 616
    :cond_1
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    #@1e
    aget v2, v2, v0

    #@20
    if-eq v2, p0, :cond_2

    #@22
    .line 617
    const/4 v0, -0x1

    #@23
    .line 620
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
    .line 559
    if-gtz p0, :cond_0

    #@4
    .line 560
    const/16 v1, -0x20

    #@6
    return v1

    #@7
    .line 563
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 565
    .local v0, "bit":B
    const/high16 v1, 0x10000

    #@a
    if-lt p0, v1, :cond_1

    #@c
    .line 566
    shr-int/lit8 p0, p0, 0x10

    #@e
    .line 567
    int-to-byte v0, v2

    #@f
    .line 570
    .end local v0    # "bit":B
    :cond_1
    const/16 v1, 0x100

    #@11
    if-lt p0, v1, :cond_2

    #@13
    .line 571
    shr-int/lit8 p0, p0, 0x8

    #@15
    .line 572
    add-int/lit8 v1, v0, 0x8

    #@17
    int-to-byte v0, v1

    #@18
    .line 575
    :cond_2
    if-lt p0, v2, :cond_3

    #@1a
    .line 576
    shr-int/lit8 p0, p0, 0x4

    #@1c
    .line 577
    add-int/lit8 v1, v0, 0x4

    #@1e
    int-to-byte v0, v1

    #@1f
    .line 580
    :cond_3
    const/4 v1, 0x4

    #@20
    if-lt p0, v1, :cond_4

    #@22
    .line 581
    shr-int/lit8 p0, p0, 0x2

    #@24
    .line 582
    add-int/lit8 v1, v0, 0x2

    #@26
    int-to-byte v0, v1

    #@27
    .line 585
    :cond_4
    const/4 v1, 0x2

    #@28
    if-lt p0, v1, :cond_5

    #@2a
    .line 586
    shr-int/lit8 p0, p0, 0x1

    #@2c
    .line 587
    add-int/lit8 v1, v0, 0x1

    #@2e
    int-to-byte v0, v1

    #@2f
    .line 590
    :cond_5
    return v0
.end method

.method private static final inc(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 448
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
    .line 443
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
    .line 463
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 464
    add-int/lit8 p0, p0, 0x1

    #@6
    .line 467
    :cond_0
    return p0
.end method

.method private static final mod(I)I
    .locals 1
    .param p0, "sp"    # I

    #@0
    .prologue
    .line 438
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
    .line 492
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 493
    return-void

    #@7
    .line 496
    :cond_0
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@9
    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v2, v0, v1

    #@e
    .line 498
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@10
    if-lez v0, :cond_1

    #@12
    .line 499
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@18
    .line 502
    :cond_1
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1e
    .line 503
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@20
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->dec(I)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@26
    .line 507
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 508
    const/4 v0, -0x1

    #@2d
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@2f
    .line 489
    :cond_2
    return-void
.end method

.method private final push(II)V
    .locals 3
    .param p1, "pairIndex"    # I
    .param p2, "scrptCode"    # I

    #@0
    .prologue
    .line 482
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@2
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@8
    .line 483
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@a
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@10
    .line 485
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@12
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@18
    .line 486
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
    .line 480
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
    .line 418
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
    .line 472
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
    .line 477
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
    .line 519
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@3
    .line 517
    return-void
.end method

.method private final top()Landroid/icu/lang/UScriptRun$ParenStackEntry;
    .locals 2

    #@0
    .prologue
    .line 514
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
    .line 327
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
    .line 312
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
    .line 298
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
    .line 343
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@4
    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@6
    if-lt v5, v6, :cond_0

    #@8
    .line 344
    return v7

    #@9
    .line 347
    :cond_0
    iput v7, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@b
    .line 348
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@d
    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    #@f
    .line 350
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->syncFixup()V

    #@12
    .line 352
    :cond_1
    :goto_0
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@14
    iget v6, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@16
    if-ge v5, v6, :cond_7

    #@18
    .line 353
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
    .line 354
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2a
    move-result v1

    #@2b
    .line 355
    .local v1, "codePointCount":I
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    #@2e
    move-result v4

    #@2f
    .line 356
    .local v4, "sc":I
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->getPairIndex(I)I

    #@32
    move-result v2

    #@33
    .line 358
    .local v2, "pairIndex":I
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@35
    add-int/2addr v5, v1

    #@36
    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@38
    .line 366
    if-ltz v2, :cond_2

    #@3a
    .line 367
    and-int/lit8 v5, v2, 0x1

    #@3c
    if-nez v5, :cond_4

    #@3e
    .line 368
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@40
    invoke-direct {p0, v2, v5}, Landroid/icu/lang/UScriptRun;->push(II)V

    #@43
    .line 382
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
    .line 383
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@4d
    if-gt v5, v10, :cond_3

    #@4f
    if-le v4, v10, :cond_3

    #@51
    .line 384
    iput v4, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@53
    .line 386
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@55
    invoke-direct {p0, v5}, Landroid/icu/lang/UScriptRun;->fixup(I)V

    #@58
    .line 391
    :cond_3
    if-ltz v2, :cond_1

    #@5a
    and-int/lit8 v5, v2, 0x1

    #@5c
    if-eqz v5, :cond_1

    #@5e
    .line 392
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@61
    goto :goto_0

    #@62
    .line 370
    :cond_4
    and-int/lit8 v3, v2, -0x2

    #@64
    .line 372
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
    .line 373
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@75
    goto :goto_2

    #@76
    .line 376
    :cond_5
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_2

    #@7c
    .line 377
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    #@7f
    move-result-object v5

    #@80
    iget v4, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    #@82
    goto :goto_1

    #@83
    .line 398
    .end local v3    # "pi":I
    :cond_6
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@85
    sub-int/2addr v5, v1

    #@86
    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@88
    .line 403
    .end local v0    # "ch":I
    .end local v1    # "codePointCount":I
    .end local v2    # "pairIndex":I
    .end local v4    # "sc":I
    :cond_7
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@8a
    iput v5, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@8c
    .line 404
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
    .line 149
    :goto_0
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 150
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    #@b
    goto :goto_0

    #@c
    .line 153
    :cond_0
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    #@10
    .line 154
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@12
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    #@14
    .line 155
    iput v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    #@16
    .line 156
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    #@18
    .line 157
    iput v2, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    #@1a
    .line 158
    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    #@1c
    .line 160
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@1e
    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    #@20
    .line 144
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
    .line 179
    const/4 v0, 0x0

    #@1
    .line 181
    .local v0, "len":I
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 182
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@7
    array-length v0, v1

    #@8
    .line 185
    :cond_0
    if-ltz p1, :cond_1

    #@a
    if-gez p2, :cond_2

    #@c
    .line 186
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v1

    #@12
    .line 185
    :cond_2
    sub-int v1, v0, p2

    #@14
    if-gt p1, v1, :cond_1

    #@16
    .line 189
    iput p1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    #@18
    .line 190
    add-int v1, p1, p2

    #@1a
    iput v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    #@1c
    .line 192
    invoke-virtual {p0}, Landroid/icu/lang/UScriptRun;->reset()V

    #@1f
    .line 177
    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 276
    const/4 v0, 0x0

    #@1
    .line 278
    .local v0, "length":I
    if-eqz p1, :cond_0

    #@3
    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 282
    :cond_0
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    #@b
    .line 274
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
    .line 255
    const/4 v0, 0x0

    #@1
    .line 257
    .local v0, "chars":[C
    if-eqz p1, :cond_0

    #@3
    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    .line 261
    .end local v0    # "chars":[C
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@a
    .line 253
    return-void
.end method

.method public final reset([C)V
    .locals 2
    .param p1, "chars"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    .line 233
    .local v0, "length":I
    if-eqz p1, :cond_0

    #@3
    .line 234
    array-length v0, p1

    #@4
    .line 237
    :cond_0
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    #@8
    .line 229
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
    .line 210
    if-nez p1, :cond_0

    #@2
    .line 211
    iget-object p1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    #@4
    .line 214
    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    #@6
    .line 216
    invoke-virtual {p0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(II)V

    #@9
    .line 208
    return-void
.end method
