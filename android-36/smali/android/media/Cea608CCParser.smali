.class Landroid/media/Cea608CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCParser$CCMemory;,
        Landroid/media/Cea608CCParser$DisplayListener;,
        Landroid/media/Cea608CCParser$CCData;,
        Landroid/media/Cea608CCParser$StyleCode;,
        Landroid/media/Cea608CCParser$PAC;,
        Landroid/media/Cea608CCParser$CCLineBuilder;,
        Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;
    }
.end annotation


# static fields
.field private static final greylist-max-o AOF:I = 0x22

.field private static final greylist-max-o AON:I = 0x23

.field private static final greylist-max-o BS:I = 0x21

.field private static final greylist-max-o CR:I = 0x2d

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DER:I = 0x24

.field private static final greylist-max-o EDM:I = 0x2c

.field private static final greylist-max-o ENM:I = 0x2e

.field private static final greylist-max-o EOC:I = 0x2f

.field private static final greylist-max-o FON:I = 0x28

.field private static final greylist-max-o INVALID:I = -0x1

.field public static final greylist-max-o MAX_COLS:I = 0x20

.field public static final greylist-max-o MAX_ROWS:I = 0xf

.field private static final greylist-max-o MODE_PAINT_ON:I = 0x1

.field private static final greylist-max-o MODE_POP_ON:I = 0x3

.field private static final greylist-max-o MODE_ROLL_UP:I = 0x2

.field private static final greylist-max-o MODE_TEXT:I = 0x4

.field private static final greylist-max-o MODE_UNKNOWN:I = 0x0

.field private static final greylist-max-o RCL:I = 0x20

.field private static final greylist-max-o RDC:I = 0x29

.field private static final greylist-max-o RTD:I = 0x2b

.field private static final greylist-max-o RU2:I = 0x25

.field private static final greylist-max-o RU3:I = 0x26

.field private static final greylist-max-o RU4:I = 0x27

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final greylist-max-o TR:I = 0x2a

.field private static final greylist-max-o TS:C = '\u00a0'


# instance fields
.field private greylist-max-o mDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private final greylist-max-o mListener:Landroid/media/Cea608CCParser$DisplayListener;

.field private greylist-max-o mMode:I

.field private greylist-max-o mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private greylist-max-o mPrevCtrlCode:I

.field private greylist-max-o mRollUpSize:I

.field private greylist-max-o mTextMem:Landroid/media/Cea608CCParser$CCMemory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 265
    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/Cea608CCParser;->DEBUG:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/Cea608CCParser$DisplayListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/Cea608CCParser$DisplayListener;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 300
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 303
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 304
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 305
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    .line 308
    iput-object p1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    .line 309
    return-void
.end method

.method private greylist-max-o getMemory()Landroid/media/Cea608CCParser$CCMemory;
    .registers 3

    .line 337
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    packed-switch v0, :pswitch_data_2c

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecoginized mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea608CCParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    .line 343
    :pswitch_22
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    .line 339
    :pswitch_25
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    .line 346
    :pswitch_28
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private greylist-max-o handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 8
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    .line 407
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 409
    .local v0, "ctrlCode":I
    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    if-ne v1, v0, :cond_11

    .line 411
    iput v3, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 412
    return v2

    .line 415
    :cond_11
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_92

    .line 480
    :pswitch_17
    iput v3, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 481
    const/4 v1, 0x0

    return v1

    .line 473
    :pswitch_1b
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->swapMemory()V

    .line 475
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 476
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 477
    goto/16 :goto_8f

    .line 469
    :pswitch_25
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 470
    goto :goto_8f

    .line 458
    :pswitch_2b
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_39

    .line 459
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v1, v3}, Landroid/media/Cea608CCParser$CCMemory;->rollUp(I)V

    goto :goto_40

    .line 461
    :cond_39
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->cr()V

    .line 463
    :goto_40
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v5, :cond_8f

    .line 464
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_8f

    .line 454
    :pswitch_48
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 455
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 456
    goto :goto_8f

    .line 450
    :pswitch_51
    iput v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 451
    goto :goto_8f

    .line 446
    :pswitch_54
    iput v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 447
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 448
    goto :goto_8f

    .line 443
    :pswitch_5c
    iput v2, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 444
    goto :goto_8f

    .line 439
    :pswitch_5f
    const-string v1, "Cea608CCParser"

    const-string v3, "Flash On"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    goto :goto_8f

    .line 429
    :pswitch_67
    add-int/lit8 v1, v0, -0x23

    iput v1, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 431
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-eq v1, v5, :cond_79

    .line 432
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 433
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 436
    :cond_79
    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 437
    goto :goto_8f

    .line 424
    :pswitch_7c
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->der()V

    .line 425
    goto :goto_8f

    .line 421
    :pswitch_84
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    .line 422
    goto :goto_8f

    .line 418
    :pswitch_8c
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 419
    nop

    .line 484
    :cond_8f
    :goto_8f
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 487
    return v2

    :pswitch_data_92
    .packed-switch 0x20
        :pswitch_8c
        :pswitch_84
        :pswitch_17
        :pswitch_17
        :pswitch_7c
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_5f
        :pswitch_5c
        :pswitch_54
        :pswitch_51
        :pswitch_48
        :pswitch_2b
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method

.method private greylist-max-o handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 5
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    .line 354
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_8

    .line 355
    const/4 v0, 0x0

    return v0

    .line 359
    :cond_8
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->-$$Nest$misExtendedChar(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 360
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    .line 363
    :cond_15
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    .line 366
    :cond_2a
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 369
    :cond_2d
    return v1
.end method

.method private greylist-max-o handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 4
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    .line 373
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v0

    .line 374
    .local v0, "m":Landroid/media/Cea608CCParser$StyleCode;
    if-eqz v0, :cond_f

    .line 375
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V

    .line 376
    const/4 v1, 0x1

    return v1

    .line 378
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 6
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    .line 382
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    move-result-object v0

    .line 384
    .local v0, "pac":Landroid/media/Cea608CCParser$PAC;
    if-eqz v0, :cond_21

    .line 385
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 386
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-static {v1, v2, v3}, Landroid/media/Cea608CCParser$CCMemory;->-$$Nest$mmoveBaselineTo(Landroid/media/Cea608CCParser$CCMemory;II)V

    .line 388
    :cond_18
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writePAC(Landroid/media/Cea608CCParser$PAC;)V

    .line 389
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 4
    .param p1, "ccData"    # Landroid/media/Cea608CCParser$CCData;

    .line 396
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    .line 398
    .local v0, "tabs":I
    if-lez v0, :cond_f

    .line 399
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->tab(I)V

    .line 400
    const/4 v1, 0x1

    return v1

    .line 403
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o swapMemory()V
    .registers 3

    .line 498
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 499
    .local v0, "temp":Landroid/media/Cea608CCParser$CCMemory;
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iput-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 500
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 501
    return-void
.end method

.method private greylist-max-o updateDisplay()V
    .registers 4

    .line 491
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    if-eqz v0, :cond_15

    .line 492
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    invoke-interface {v0}, Landroid/media/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 493
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    iget-object v2, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    .line 495
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_15
    return-void
.end method


# virtual methods
.method public greylist-max-o parse([B)V
    .registers 6
    .param p1, "data"    # [B

    .line 312
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;

    move-result-object v0

    .line 314
    .local v0, "ccData":[Landroid/media/Cea608CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 315
    sget-boolean v2, Landroid/media/Cea608CCParser;->DEBUG:Z

    if-eqz v2, :cond_17

    .line 316
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cea608CCParser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_17
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-object v2, v0, v1

    .line 320
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-object v2, v0, v1

    .line 321
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-object v2, v0, v1

    .line 322
    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 323
    goto :goto_3d

    .line 326
    :cond_38
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z

    .line 314
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 328
    .end local v1    # "i":I
    :cond_40
    return-void
.end method
