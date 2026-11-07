.class public Landroid/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o kBufSize:I = 0x1f40


# instance fields
.field greylist-max-o fByteStats:[S

.field greylist-max-o fC1Bytes:Z

.field greylist-max-o fDeclaredEncoding:Ljava/lang/String;

.field private greylist-max-o fEnabledRecognizers:[Z

.field greylist-max-o fInputBytes:[B

.field greylist-max-o fInputLen:I

.field greylist-max-o fInputStream:Ljava/io/InputStream;

.field greylist-max-o fRawInput:[B

.field greylist-max-o fRawLength:I

.field private greylist-max-o fStripTags:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/CharsetDetector$CSRecognizerInfo;>;"
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_UTF8;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_UTF8;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    .line 493
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/CharsetDetector$CSRecognizerInfo;>;"
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    .line 412
    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 434
    iput-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    .line 57
    return-void
.end method

.method private greylist-max-o MungeInput()V
    .registers 11

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "srci":I
    const/4 v1, 0x0

    .line 331
    .local v1, "dsti":I
    const/4 v2, 0x0

    .line 332
    .local v2, "inMarkup":Z
    const/4 v3, 0x0

    .line 333
    .local v3, "openTags":I
    const/4 v4, 0x0

    .line 341
    .local v4, "badTags":I
    iget-boolean v5, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    if-eqz v5, :cond_35

    .line 342
    const/4 v0, 0x0

    :goto_a
    iget v5, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v0, v5, :cond_33

    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v5, v5

    if-ge v1, v5, :cond_33

    .line 343
    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v5, v5, v0

    .line 344
    .local v5, "b":B
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_22

    .line 345
    if-eqz v2, :cond_1f

    .line 346
    add-int/lit8 v4, v4, 0x1

    .line 348
    :cond_1f
    const/4 v2, 0x1

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 352
    :cond_22
    if-nez v2, :cond_2b

    .line 353
    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dsti":I
    .local v7, "dsti":I
    aput-byte v5, v6, v1

    move v1, v7

    .line 356
    .end local v7    # "dsti":I
    .restart local v1    # "dsti":I
    :cond_2b
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_30

    .line 357
    const/4 v2, 0x0

    .line 342
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 361
    .end local v5    # "b":B
    :cond_33
    iput v1, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    .line 369
    :cond_35
    const/4 v5, 0x5

    if-lt v3, v5, :cond_48

    div-int/lit8 v5, v3, 0x5

    if-lt v5, v4, :cond_48

    iget v5, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    const/16 v6, 0x64

    if-ge v5, v6, :cond_60

    iget v5, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v6, 0x258

    if-le v5, v6, :cond_60

    .line 371
    :cond_48
    iget v5, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    .line 373
    .local v5, "limit":I
    const/16 v6, 0x1f40

    if-le v5, v6, :cond_50

    .line 374
    const/16 v5, 0x1f40

    .line 377
    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v5, :cond_5e

    .line 378
    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v7, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v7, v7, v0

    aput-byte v7, v6, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 380
    :cond_5e
    iput v0, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    .line 387
    .end local v5    # "limit":I
    :cond_60
    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([SS)V

    .line 388
    const/4 v0, 0x0

    :goto_67
    iget v5, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    const/4 v7, 0x1

    if-ge v0, v5, :cond_7d

    .line 389
    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    .line 390
    .local v5, "val":I
    iget-object v8, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v9, v8, v5

    add-int/2addr v9, v7

    int-to-short v7, v9

    aput-short v7, v8, v5

    .line 388
    .end local v5    # "val":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 393
    :cond_7d
    iput-boolean v6, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 394
    const/16 v5, 0x80

    .local v5, "i":I
    :goto_81
    const/16 v6, 0x9f

    if-gt v5, v6, :cond_91

    .line 395
    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v6, v6, v5

    if-eqz v6, :cond_8e

    .line 396
    iput-boolean v7, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 397
    goto :goto_91

    .line 394
    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 400
    .end local v5    # "i":I
    :cond_91
    :goto_91
    return-void
.end method

.method public static greylist-max-o getAllDetectableCharsets()[Ljava/lang/String;
    .registers 3

    .line 286
    sget-object v0, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 287
    .local v0, "allCharsetNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 288
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 290
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public greylist-max-o detect()Landroid/icu/text/CharsetMatch;
    .registers 3

    .line 153
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detectAll()[Landroid/icu/text/CharsetMatch;

    move-result-object v0

    .line 155
    .local v0, "matches":[Landroid/icu/text/CharsetMatch;
    if-eqz v0, :cond_e

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_e

    .line 159
    :cond_a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 156
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o detectAll()[Landroid/icu/text/CharsetMatch;
    .registers 6

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/CharsetMatch;>;"
    invoke-direct {p0}, Landroid/icu/text/CharsetDetector;->MungeInput()V

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 183
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 184
    .local v2, "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v3, v3, v1

    goto :goto_24

    :cond_22
    iget-boolean v3, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    .line 185
    .local v3, "active":Z
    :goto_24
    if-eqz v3, :cond_31

    .line 186
    iget-object v4, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v4, p0}, Landroid/icu/text/CharsetRecognizer;->match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;

    move-result-object v4

    .line 187
    .local v4, "m":Landroid/icu/text/CharsetMatch;
    if-eqz v4, :cond_31

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v2    # "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    .end local v3    # "active":Z
    .end local v4    # "m":Landroid/icu/text/CharsetMatch;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 192
    .end local v1    # "i":I
    :cond_34
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/icu/text/CharsetMatch;

    .line 195
    .local v1, "resultArray":[Landroid/icu/text/CharsetMatch;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Landroid/icu/text/CharsetMatch;

    .line 196
    return-object v1
.end method

.method public greylist-max-o enableInputFilter(Z)Z
    .registers 3
    .param p1, "filter"    # Z

    .line 316
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    .line 318
    .local v0, "previous":Z
    iput-boolean p1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    .line 320
    return v0
.end method

.method public greylist-max-o getDetectableCharsets()[Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 507
    .local v0, "csnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 508
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 509
    .local v2, "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v3, :cond_23

    iget-boolean v3, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    goto :goto_27

    :cond_23
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v3, v3, v1

    .line 510
    .local v3, "active":Z
    :goto_27
    if-eqz v3, :cond_32

    .line 511
    iget-object v4, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v2    # "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    .end local v3    # "active":Z
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 514
    .end local v1    # "i":I
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public greylist-max-o getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    .line 221
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;

    .line 226
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object v1

    .line 228
    .local v1, "match":Landroid/icu/text/CharsetMatch;
    if-nez v1, :cond_d

    .line 229
    return-object v0

    .line 232
    :cond_d
    invoke-virtual {v1}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_12

    return-object v0

    .line 233
    .end local v1    # "match":Landroid/icu/text/CharsetMatch;
    :catch_12
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public greylist-max-o getString([BLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "in"    # [B
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    .line 254
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText([B)Landroid/icu/text/CharsetDetector;

    .line 259
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object v1

    .line 261
    .local v1, "match":Landroid/icu/text/CharsetMatch;
    if-nez v1, :cond_d

    .line 262
    return-object v0

    .line 265
    :cond_d
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    return-object v0

    .line 266
    .end local v1    # "match":Landroid/icu/text/CharsetMatch;
    :catch_13
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public greylist-max-o inputFilterEnabled()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public greylist-max-o setDeclaredEncoding(Ljava/lang/String;)Landroid/icu/text/CharsetDetector;
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public greylist-max-o setDetectableCharset(Ljava/lang/String;Z)Landroid/icu/text/CharsetDetector;
    .registers 8
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    const/4 v0, -0x1

    .line 535
    .local v0, "modIdx":I
    const/4 v1, 0x0

    .line 536
    .local v1, "isDefaultVal":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v3, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 537
    sget-object v3, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 538
    .local v3, "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v4, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 539
    move v0, v2

    .line 540
    iget-boolean v4, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    if-ne v4, p2, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    move v1, v4

    .line 541
    goto :goto_2c

    .line 536
    .end local v3    # "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 544
    .end local v2    # "i":I
    :cond_2c
    :goto_2c
    if-ltz v0, :cond_61

    .line 549
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v2, :cond_58

    if-nez v1, :cond_58

    .line 551
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    .line 554
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3f
    sget-object v3, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 555
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-boolean v4, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    aput-boolean v4, v3, v2

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 559
    .end local v2    # "i":I
    :cond_58
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v2, :cond_60

    .line 560
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aput-boolean p2, v2, v0

    .line 563
    :cond_60
    return-object p0

    .line 546
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid encoding: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    .line 110
    iget-object v0, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    .line 115
    const/16 v0, 0x1f40

    .line 116
    .local v0, "remainingLength":I
    :goto_12
    if-lez v0, :cond_28

    .line 118
    iget-object v1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v3, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 119
    .local v1, "bytesRead":I
    if-gtz v1, :cond_21

    .line 120
    goto :goto_28

    .line 122
    :cond_21
    iget v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    .line 123
    sub-int/2addr v0, v1

    .line 124
    .end local v1    # "bytesRead":I
    goto :goto_12

    .line 125
    :cond_28
    :goto_28
    iget-object v1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 127
    return-object p0
.end method

.method public greylist-max-o setText([B)Landroid/icu/text/CharsetDetector;
    .registers 3
    .param p1, "in"    # [B

    .line 86
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 87
    array-length v0, p1

    iput v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    .line 89
    return-object p0
.end method
