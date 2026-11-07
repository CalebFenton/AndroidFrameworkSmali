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
.field private static greylist-max-o PAREN_STACK_DEPTH:I

.field private static greylist-max-o pairedCharExtra:I

.field private static greylist-max-o pairedCharPower:I

.field private static greylist-max-o pairedChars:[I

.field private static greylist-max-o parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private greylist-max-o emptyCharArray:[C

.field private greylist-max-o fixupCount:I

.field private greylist-max-o parenSP:I

.field private greylist-max-o pushCount:I

.field private greylist-max-o scriptCode:I

.field private greylist-max-o scriptLimit:I

.field private greylist-max-o scriptStart:I

.field private greylist-max-o text:[C

.field private greylist-max-o textIndex:I

.field private greylist-max-o textLimit:I

.field private greylist-max-o textStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 546
    const/16 v0, 0x20

    sput v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    .line 547
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    new-array v0, v0, [Landroid/icu/lang/UScriptRun$ParenStackEntry;

    sput-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    .line 625
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    .line 645
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->highBit(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    .line 646
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    sub-int/2addr v0, v1

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    return-void

    :array_28
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

.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "nullChars":[C
    invoke-virtual {p0, v1, v0, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    .line 72
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 86
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    .line 104
    return-void
.end method

.method public constructor greylist-max-o <init>([C)V
    .registers 4
    .param p1, "chars"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 118
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset([C)V

    .line 119
    return-void
.end method

.method public constructor greylist-max-o <init>([CII)V
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    .line 136
    return-void
.end method

.method private static final greylist-max-o dec(I)I
    .registers 2
    .param p0, "sp"    # I

    .line 460
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    return v0
.end method

.method private static final greylist-max-o dec(II)I
    .registers 3
    .param p0, "sp"    # I
    .param p1, "count"    # I

    .line 455
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    add-int/2addr v0, p0

    sub-int/2addr v0, p1

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private final greylist-max-o fixup(I)V
    .registers 5
    .param p1, "scrptCode"    # I

    .line 526
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0, v1}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    .line 528
    .local v0, "fixupSP":I
    :goto_8
    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v1, :cond_1b

    .line 529
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    .line 530
    sget-object v1, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    aget-object v1, v1, v0

    iput p1, v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_8

    .line 532
    :cond_1b
    return-void
.end method

.method private static greylist-max-o getPairIndex(I)I
    .registers 5
    .param p0, "ch"    # I

    .line 603
    sget v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    .line 604
    .local v0, "probe":I
    const/4 v1, 0x0

    .line 606
    .local v1, "index":I
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    sget v3, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    aget v2, v2, v3

    if-lt p0, v2, :cond_d

    .line 607
    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    .line 610
    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le v0, v2, :cond_1c

    .line 611
    shr-int/lit8 v0, v0, 0x1

    .line 613
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    add-int v3, v1, v0

    aget v2, v2, v3

    if-lt p0, v2, :cond_d

    .line 614
    add-int/2addr v1, v0

    goto :goto_d

    .line 618
    :cond_1c
    sget-object v2, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    aget v2, v2, v1

    if-eq v2, p0, :cond_23

    .line 619
    const/4 v1, -0x1

    .line 622
    :cond_23
    return v1
.end method

.method private static final greylist-max-o highBit(I)B
    .registers 3
    .param p0, "n"    # I

    .line 561
    if-gtz p0, :cond_5

    .line 562
    const/16 v0, -0x20

    return v0

    .line 565
    :cond_5
    const/4 v0, 0x0

    .line 567
    .local v0, "bit":B
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_f

    .line 568
    shr-int/lit8 p0, p0, 0x10

    .line 569
    add-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 572
    :cond_f
    const/16 v1, 0x100

    if-lt p0, v1, :cond_18

    .line 573
    shr-int/lit8 p0, p0, 0x8

    .line 574
    add-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 577
    :cond_18
    const/16 v1, 0x10

    if-lt p0, v1, :cond_21

    .line 578
    shr-int/lit8 p0, p0, 0x4

    .line 579
    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 582
    :cond_21
    const/4 v1, 0x4

    if-lt p0, v1, :cond_29

    .line 583
    shr-int/lit8 p0, p0, 0x2

    .line 584
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 587
    :cond_29
    const/4 v1, 0x2

    if-lt p0, v1, :cond_31

    .line 588
    shr-int/lit8 p0, p0, 0x1

    .line 589
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 592
    :cond_31
    return v0
.end method

.method private static final greylist-max-o inc(I)I
    .registers 2
    .param p0, "sp"    # I

    .line 450
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->inc(II)I

    move-result v0

    return v0
.end method

.method private static final greylist-max-o inc(II)I
    .registers 3
    .param p0, "sp"    # I
    .param p1, "count"    # I

    .line 445
    add-int v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private static final greylist-max-o limitInc(I)I
    .registers 2
    .param p0, "count"    # I

    .line 465
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    if-ge p0, v0, :cond_6

    .line 466
    add-int/lit8 p0, p0, 0x1

    .line 469
    :cond_6
    return p0
.end method

.method private static final greylist-max-o mod(I)I
    .registers 2
    .param p0, "sp"    # I

    .line 440
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    rem-int v0, p0, v0

    return v0
.end method

.method private final greylist-max-o pop()V
    .registers 4

    .line 494
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 495
    return-void

    .line 498
    :cond_7
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 500
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v0, :cond_18

    .line 501
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 504
    :cond_18
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 505
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->dec(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 509
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 512
    :cond_2f
    return-void
.end method

.method private final greylist-max-o push(II)V
    .registers 6
    .param p1, "pairIndex"    # I
    .param p2, "scrptCode"    # I

    .line 484
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 485
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 487
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 488
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    new-instance v2, Landroid/icu/lang/UScriptRun$ParenStackEntry;

    invoke-direct {v2, p1, p2}, Landroid/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    aput-object v2, v0, v1

    .line 489
    return-void
.end method

.method private static greylist-max-o sameScript(II)Z
    .registers 3
    .param p0, "scriptOne"    # I
    .param p1, "scriptTwo"    # I

    .line 420
    const/4 v0, 0x1

    if-le p0, v0, :cond_9

    if-le p1, v0, :cond_9

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private final greylist-max-o stackIsEmpty()Z
    .registers 2

    .line 474
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private final greylist-max-o stackIsNotEmpty()Z
    .registers 2

    .line 479
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final greylist-max-o syncFixup()V
    .registers 2

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 522
    return-void
.end method

.method private final greylist-max-o top()Landroid/icu/lang/UScriptRun$ParenStackEntry;
    .registers 3

    .line 516
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final greylist-max-o getScriptCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    return v0
.end method

.method public final greylist-max-o getScriptLimit()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    return v0
.end method

.method public final greylist-max-o getScriptStart()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    return v0
.end method

.method public final greylist-max-o next()Z
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    .line 346
    return v2

    .line 349
    :cond_8
    iput v2, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 350
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    .line 352
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->syncFixup()V

    .line 354
    :goto_11
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_89

    .line 355
    iget-object v0, p0, Landroid/icu/lang/UScriptRun;->text:[C

    iget v1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iget v3, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    iget v4, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iget v5, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v3, v4}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    .line 356
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    .line 357
    .local v1, "codePointCount":I
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v3

    .line 358
    .local v3, "sc":I
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->getPairIndex(I)I

    move-result v4

    .line 360
    .local v4, "pairIndex":I
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    .line 368
    if-ltz v4, :cond_64

    .line 369
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_44

    .line 370
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v4, v5}, Landroid/icu/lang/UScriptRun;->push(II)V

    goto :goto_64

    .line 372
    :cond_44
    and-int/lit8 v5, v4, -0x2

    .line 374
    .local v5, "pi":I
    :goto_46
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v6

    iget v6, v6, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    if-eq v6, v5, :cond_58

    .line 375
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_46

    .line 378
    :cond_58
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 379
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v6

    iget v3, v6, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    .line 384
    .end local v5    # "pi":I
    :cond_64
    :goto_64
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-static {v5, v3}, Landroid/icu/lang/UScriptRun;->sameScript(II)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 385
    iget v5, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    if-gt v5, v2, :cond_79

    if-le v3, v2, :cond_79

    .line 386
    iput v3, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 388
    iget v2, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v2}, Landroid/icu/lang/UScriptRun;->fixup(I)V

    .line 393
    :cond_79
    if-ltz v4, :cond_82

    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_82

    .line 394
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    .line 403
    .end local v0    # "ch":I
    .end local v1    # "codePointCount":I
    .end local v3    # "sc":I
    .end local v4    # "pairIndex":I
    :cond_82
    goto :goto_11

    .line 400
    .restart local v0    # "ch":I
    .restart local v1    # "codePointCount":I
    .restart local v3    # "sc":I
    .restart local v4    # "pairIndex":I
    :cond_83
    iget v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    sub-int/2addr v5, v1

    iput v5, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    .line 401
    nop

    .line 405
    .end local v0    # "ch":I
    .end local v1    # "codePointCount":I
    .end local v3    # "sc":I
    .end local v4    # "pairIndex":I
    :cond_89
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    .line 406
    return v2
.end method

.method public final greylist-max-o reset()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    nop

    :goto_1
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_1

    .line 155
    :cond_b
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    .line 156
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 158
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 160
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 162
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    .line 163
    return-void
.end method

.method public final greylist-max-o reset(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "len":I
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    if-eqz v1, :cond_8

    .line 184
    iget-object v1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    array-length v0, v1

    .line 187
    :cond_8
    if-ltz p1, :cond_1a

    if-ltz p2, :cond_1a

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_1a

    .line 191
    iput p1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    .line 192
    add-int v1, p1, p2

    iput v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    .line 194
    invoke-virtual {p0}, Landroid/icu/lang/UScriptRun;->reset()V

    .line 195
    return-void

    .line 188
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final greylist-max-o reset(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "length":I
    if-eqz p1, :cond_7

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 284
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    .line 285
    return-void
.end method

.method public final greylist-max-o reset(Ljava/lang/String;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "chars":[C
    if-eqz p1, :cond_7

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 263
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    .line 264
    return-void
.end method

.method public final greylist-max-o reset([C)V
    .registers 4
    .param p1, "chars"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "length":I
    if-eqz p1, :cond_4

    .line 236
    array-length v0, p1

    .line 239
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    .line 240
    return-void
.end method

.method public final greylist-max-o reset([CII)V
    .registers 4
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    if-nez p1, :cond_4

    .line 213
    iget-object p1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 216
    :cond_4
    iput-object p1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    .line 218
    invoke-virtual {p0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(II)V

    .line 219
    return-void
.end method
