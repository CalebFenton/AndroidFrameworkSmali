.class Landroid/media/Cea608CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCParser$CCData;,
        Landroid/media/Cea608CCParser$CCLineBuilder;,
        Landroid/media/Cea608CCParser$CCMemory;,
        Landroid/media/Cea608CCParser$DisplayListener;,
        Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroid/media/Cea608CCParser$PAC;,
        Landroid/media/Cea608CCParser$StyleCode;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private final mListener:Landroid/media/Cea608CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroid/media/Cea608CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 265
    const-string/jumbo v0, "Cea608CCParser"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Landroid/media/Cea608CCParser;->DEBUG:Z

    #@a
    .line 260
    return-void
.end method

.method constructor <init>(Landroid/media/Cea608CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Cea608CCParser$DisplayListener;

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 299
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@6
    .line 300
    const/4 v0, 0x4

    #@7
    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    #@9
    .line 301
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@c
    .line 303
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    #@e
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@13
    .line 304
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    #@15
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    #@18
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@1a
    .line 305
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    #@1c
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    #@21
    .line 308
    iput-object p1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    #@23
    .line 307
    return-void
.end method

.method private getMemory()Landroid/media/Cea608CCParser$CCMemory;
    .locals 3

    #@0
    .prologue
    .line 337
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 348
    const-string/jumbo v0, "Cea608CCParser"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "unrecoginized mode: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 350
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@23
    return-object v0

    #@24
    .line 339
    :pswitch_0
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@26
    return-object v0

    #@27
    .line 343
    :pswitch_1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    #@29
    return-object v0

    #@2a
    .line 346
    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@2c
    return-object v0

    #@2d
    .line 337
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 7
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v2, -0x1

    #@4
    const/4 v3, 0x2

    #@5
    .line 407
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    #@8
    move-result v0

    #@9
    .line 409
    .local v0, "ctrlCode":I
    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@b
    if-eq v1, v2, :cond_0

    #@d
    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@f
    if-ne v1, v0, :cond_0

    #@11
    .line 411
    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@13
    .line 412
    return v4

    #@14
    .line 415
    :cond_0
    packed-switch v0, :pswitch_data_0

    #@17
    .line 480
    :pswitch_0
    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@19
    .line 481
    const/4 v1, 0x0

    #@1a
    return v1

    #@1b
    .line 418
    :pswitch_1
    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@1d
    .line 484
    :cond_1
    :goto_0
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    #@1f
    .line 487
    return v4

    #@20
    .line 421
    :pswitch_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    #@27
    goto :goto_0

    #@28
    .line 424
    :pswitch_3
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->der()V

    #@2f
    goto :goto_0

    #@30
    .line 429
    :pswitch_4
    add-int/lit8 v1, v0, -0x23

    #@32
    iput v1, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    #@34
    .line 431
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@36
    if-eq v1, v3, :cond_2

    #@38
    .line 432
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@3a
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    #@3d
    .line 433
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@3f
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    #@42
    .line 436
    :cond_2
    iput v3, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@44
    goto :goto_0

    #@45
    .line 439
    :pswitch_5
    const-string/jumbo v1, "Cea608CCParser"

    #@48
    const-string/jumbo v2, "Flash On"

    #@4b
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0

    #@4f
    .line 443
    :pswitch_6
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@51
    goto :goto_0

    #@52
    .line 446
    :pswitch_7
    iput v6, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@54
    .line 447
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    #@56
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    #@59
    goto :goto_0

    #@5a
    .line 450
    :pswitch_8
    iput v6, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@5c
    goto :goto_0

    #@5d
    .line 454
    :pswitch_9
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@5f
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    #@62
    .line 455
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    #@65
    goto :goto_0

    #@66
    .line 458
    :pswitch_a
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@68
    if-ne v1, v3, :cond_3

    #@6a
    .line 459
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@6d
    move-result-object v1

    #@6e
    iget v2, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    #@70
    invoke-virtual {v1, v2}, Landroid/media/Cea608CCParser$CCMemory;->rollUp(I)V

    #@73
    .line 463
    :goto_1
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@75
    if-ne v1, v3, :cond_1

    #@77
    .line 464
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    #@7a
    goto :goto_0

    #@7b
    .line 461
    :cond_3
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->cr()V

    #@82
    goto :goto_1

    #@83
    .line 469
    :pswitch_b
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@85
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    #@88
    goto :goto_0

    #@89
    .line 473
    :pswitch_c
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->swapMemory()V

    #@8c
    .line 475
    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@8e
    .line 476
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    #@91
    goto :goto_0

    #@92
    .line 415
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 3
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 354
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 355
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 359
    :cond_0
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->-wrap0(Landroid/media/Cea608CCParser$CCData;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 360
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    #@16
    .line 363
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    #@21
    .line 365
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@23
    if-eq v0, v2, :cond_2

    #@25
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@27
    const/4 v1, 0x2

    #@28
    if-ne v0, v1, :cond_3

    #@2a
    .line 366
    :cond_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    #@2d
    .line 369
    :cond_3
    return v2
.end method

.method private handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    #@0
    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "m":Landroid/media/Cea608CCParser$StyleCode;
    if-eqz v0, :cond_0

    #@6
    .line 375
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V

    #@d
    .line 376
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 378
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 4
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    #@0
    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    #@3
    move-result-object v0

    #@4
    .line 384
    .local v0, "pac":Landroid/media/Cea608CCParser$PAC;
    if-eqz v0, :cond_1

    #@6
    .line 385
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    #@8
    const/4 v2, 0x2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 386
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    #@12
    move-result v2

    #@13
    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    #@15
    invoke-static {v1, v2, v3}, Landroid/media/Cea608CCParser$CCMemory;->-wrap0(Landroid/media/Cea608CCParser$CCMemory;II)V

    #@18
    .line 388
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writePAC(Landroid/media/Cea608CCParser$PAC;)V

    #@1f
    .line 389
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 392
    :cond_1
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method private handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 396
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    #@4
    move-result v0

    #@5
    .line 398
    .local v0, "tabs":I
    if-lez v0, :cond_0

    #@7
    .line 399
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->tab(I)V

    #@e
    .line 400
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 403
    :cond_0
    return v1
.end method

.method private swapMemory()V
    .locals 2

    #@0
    .prologue
    .line 498
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@2
    .line 499
    .local v0, "temp":Landroid/media/Cea608CCParser$CCMemory;
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@4
    iput-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@6
    .line 500
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@8
    .line 497
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    #@0
    .prologue
    .line 491
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 492
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    #@6
    invoke-interface {v1}, Landroid/media/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@9
    move-result-object v0

    #@a
    .line 493
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    #@c
    iget-object v2, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    #@e
    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2}, Landroid/media/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    #@15
    .line 490
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 4
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 312
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "ccData":[Landroid/media/Cea608CCParser$CCData;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@6
    if-ge v1, v2, :cond_3

    #@8
    .line 315
    sget-boolean v2, Landroid/media/Cea608CCParser;->DEBUG:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 316
    const-string/jumbo v2, "Cea608CCParser"

    #@f
    aget-object v3, v0, v1

    #@11
    invoke-virtual {v3}, Landroid/media/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 319
    :cond_0
    aget-object v2, v0, v1

    #@1a
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 320
    aget-object v2, v0, v1

    #@22
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z

    #@25
    move-result v2

    #@26
    .line 319
    if-nez v2, :cond_1

    #@28
    .line 321
    aget-object v2, v0, v1

    #@2a
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z

    #@2d
    move-result v2

    #@2e
    .line 319
    if-nez v2, :cond_1

    #@30
    .line 322
    aget-object v2, v0, v1

    #@32
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z

    #@35
    move-result v2

    #@36
    .line 319
    if-eqz v2, :cond_2

    #@38
    .line 314
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 326
    :cond_2
    aget-object v2, v0, v1

    #@3d
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z

    #@40
    goto :goto_1

    #@41
    .line 311
    :cond_3
    return-void
.end method
