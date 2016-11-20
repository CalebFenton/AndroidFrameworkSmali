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
.field private static final ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field private fEnabledRecognizers:[Z

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field private fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 455
    new-instance v0, Ljava/util/ArrayList;

    #@4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 457
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/CharsetDetector$CSRecognizerInfo;>;"
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@9
    new-instance v2, Landroid/icu/text/CharsetRecog_UTF8;

    #@b
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_UTF8;-><init>()V

    #@e
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 458
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@16
    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    #@18
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    #@1b
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 459
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@23
    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    #@25
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    #@28
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@2b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 460
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@30
    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    #@32
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    #@35
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 461
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@3d
    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    #@3f
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    #@42
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    .line 463
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@4a
    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    #@4c
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    #@4f
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    .line 464
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@57
    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    #@59
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    #@5c
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@5f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    .line 465
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@64
    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    #@66
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    #@69
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@6c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    .line 466
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@71
    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    #@73
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    #@76
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    .line 467
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@7e
    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    #@80
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    #@83
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@89
    .line 468
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@8b
    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    #@8d
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    #@90
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@96
    .line 469
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@98
    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    #@9a
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    #@9d
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@a0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a3
    .line 470
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@a5
    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    #@a7
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    #@aa
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@ad
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b0
    .line 472
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@b2
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    #@b4
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    #@b7
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@ba
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bd
    .line 473
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@bf
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    #@c1
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    #@c4
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@c7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ca
    .line 474
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@cc
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    #@ce
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    #@d1
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@d4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d7
    .line 475
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@d9
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    #@db
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    #@de
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@e1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e4
    .line 476
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@e6
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    #@e8
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    #@eb
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@ee
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f1
    .line 477
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@f3
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    #@f5
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    #@f8
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@fb
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@fe
    .line 478
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@100
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    #@102
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    #@105
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10b
    .line 479
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@10d
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    #@10f
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    #@112
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@118
    .line 480
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@11a
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    #@11c
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    #@11f
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@125
    .line 481
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@127
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    #@129
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    #@12c
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@12f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@132
    .line 482
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@134
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    #@136
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    #@139
    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@13c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13f
    .line 485
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@141
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    #@143
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    #@146
    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14c
    .line 486
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@14e
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    #@150
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    #@153
    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@159
    .line 487
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@15b
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    #@15d
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    #@160
    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@166
    .line 488
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@168
    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    #@16a
    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    #@16d
    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    #@170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@173
    .line 490
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@176
    move-result-object v1

    #@177
    sput-object v1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@179
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 406
    const/16 v0, 0x1f40

    #@6
    new-array v0, v0, [B

    #@8
    .line 405
    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@a
    .line 411
    const/16 v0, 0x100

    #@c
    new-array v0, v0, [S

    #@e
    .line 410
    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    #@10
    .line 414
    iput-boolean v1, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@12
    .line 432
    iput-boolean v1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    #@14
    .line 54
    return-void
.end method

.method private MungeInput()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 326
    const/4 v8, 0x0

    #@2
    .line 327
    .local v8, "srci":I
    const/4 v2, 0x0

    #@3
    .line 329
    .local v2, "dsti":I
    const/4 v5, 0x0

    #@4
    .line 330
    .local v5, "inMarkup":Z
    const/4 v7, 0x0

    #@5
    .line 331
    .local v7, "openTags":I
    const/4 v1, 0x0

    #@6
    .line 339
    .local v1, "badTags":I
    iget-boolean v10, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    #@8
    if-eqz v10, :cond_5

    #@a
    .line 340
    const/4 v8, 0x0

    #@b
    :goto_0
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@d
    if-ge v8, v10, :cond_4

    #@f
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@11
    array-length v10, v10

    #@12
    if-ge v2, v10, :cond_4

    #@14
    .line 341
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@16
    aget-byte v0, v10, v8

    #@18
    .line 342
    .local v0, "b":B
    const/16 v10, 0x3c

    #@1a
    if-ne v0, v10, :cond_1

    #@1c
    .line 343
    if-eqz v5, :cond_0

    #@1e
    .line 344
    add-int/lit8 v1, v1, 0x1

    #@20
    .line 346
    :cond_0
    const/4 v5, 0x1

    #@21
    .line 347
    add-int/lit8 v7, v7, 0x1

    #@23
    .line 350
    :cond_1
    if-nez v5, :cond_2

    #@25
    .line 351
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@27
    add-int/lit8 v3, v2, 0x1

    #@29
    .end local v2    # "dsti":I
    .local v3, "dsti":I
    aput-byte v0, v10, v2

    #@2b
    move v2, v3

    #@2c
    .line 354
    .end local v3    # "dsti":I
    .restart local v2    # "dsti":I
    :cond_2
    const/16 v10, 0x3e

    #@2e
    if-ne v0, v10, :cond_3

    #@30
    .line 355
    const/4 v5, 0x0

    #@31
    .line 340
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@33
    goto :goto_0

    #@34
    .line 359
    .end local v0    # "b":B
    :cond_4
    iput v2, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@36
    .line 367
    :cond_5
    const/4 v10, 0x5

    #@37
    if-lt v7, v10, :cond_6

    #@39
    div-int/lit8 v10, v7, 0x5

    #@3b
    if-ge v10, v1, :cond_8

    #@3d
    .line 369
    :cond_6
    iget v6, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@3f
    .line 371
    .local v6, "limit":I
    const/16 v10, 0x1f40

    #@41
    if-le v6, v10, :cond_7

    #@43
    .line 372
    const/16 v6, 0x1f40

    #@45
    .line 375
    :cond_7
    const/4 v8, 0x0

    #@46
    :goto_1
    if-ge v8, v6, :cond_a

    #@48
    .line 376
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@4a
    iget-object v11, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@4c
    aget-byte v11, v11, v8

    #@4e
    aput-byte v11, v10, v8

    #@50
    .line 375
    add-int/lit8 v8, v8, 0x1

    #@52
    goto :goto_1

    #@53
    .line 368
    .end local v6    # "limit":I
    :cond_8
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@55
    const/16 v11, 0x64

    #@57
    if-ge v10, v11, :cond_9

    #@59
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@5b
    const/16 v11, 0x258

    #@5d
    if-gt v10, v11, :cond_6

    #@5f
    .line 385
    :cond_9
    :goto_2
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    #@61
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([SS)V

    #@64
    .line 386
    const/4 v8, 0x0

    #@65
    :goto_3
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@67
    if-ge v8, v10, :cond_b

    #@69
    .line 387
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@6b
    aget-byte v10, v10, v8

    #@6d
    and-int/lit16 v9, v10, 0xff

    #@6f
    .line 388
    .local v9, "val":I
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    #@71
    aget-short v11, v10, v9

    #@73
    add-int/lit8 v11, v11, 0x1

    #@75
    int-to-short v11, v11

    #@76
    aput-short v11, v10, v9

    #@78
    .line 386
    add-int/lit8 v8, v8, 0x1

    #@7a
    goto :goto_3

    #@7b
    .line 378
    .end local v9    # "val":I
    .restart local v6    # "limit":I
    :cond_a
    iput v8, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@7d
    goto :goto_2

    #@7e
    .line 391
    .end local v6    # "limit":I
    :cond_b
    iput-boolean v12, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@80
    .line 392
    const/16 v4, 0x80

    #@82
    .local v4, "i":I
    :goto_4
    const/16 v10, 0x9f

    #@84
    if-gt v4, v10, :cond_c

    #@86
    .line 393
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    #@88
    aget-short v10, v10, v4

    #@8a
    if-eqz v10, :cond_d

    #@8c
    .line 394
    const/4 v10, 0x1

    #@8d
    iput-boolean v10, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    #@8f
    .line 325
    :cond_c
    return-void

    #@90
    .line 392
    :cond_d
    add-int/lit8 v4, v4, 0x1

    #@92
    goto :goto_4
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 284
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    new-array v0, v2, [Ljava/lang/String;

    #@8
    .line 285
    .local v0, "allCharsetNames":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 286
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@14
    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    #@16
    invoke-virtual {v2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v1

    #@1c
    .line 285
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 288
    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Landroid/icu/text/CharsetMatch;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 151
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detectAll()[Landroid/icu/text/CharsetMatch;

    #@5
    move-result-object v0

    #@6
    .line 153
    .local v0, "matches":[Landroid/icu/text/CharsetMatch;
    if-eqz v0, :cond_0

    #@8
    array-length v1, v0

    #@9
    if-nez v1, :cond_1

    #@b
    .line 154
    :cond_0
    return-object v3

    #@c
    .line 157
    :cond_1
    aget-object v1, v0, v2

    #@e
    return-object v1
.end method

.method public detectAll()[Landroid/icu/text/CharsetMatch;
    .locals 7

    #@0
    .prologue
    .line 174
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 176
    .local v3, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/CharsetMatch;>;"
    invoke-direct {p0}, Landroid/icu/text/CharsetDetector;->MungeInput()V

    #@8
    .line 180
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    sget-object v6, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@b
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@e
    move-result v6

    #@f
    if-ge v1, v6, :cond_2

    #@11
    .line 181
    sget-object v6, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@13
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@19
    .line 182
    .local v4, "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@1b
    if-eqz v6, :cond_1

    #@1d
    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@1f
    aget-boolean v0, v6, v1

    #@21
    .line 183
    .local v0, "active":Z
    :goto_1
    if-eqz v0, :cond_0

    #@23
    .line 184
    iget-object v6, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    #@25
    invoke-virtual {v6, p0}, Landroid/icu/text/CharsetRecognizer;->match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;

    #@28
    move-result-object v2

    #@29
    .line 185
    .local v2, "m":Landroid/icu/text/CharsetMatch;
    if-eqz v2, :cond_0

    #@2b
    .line 186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 180
    .end local v2    # "m":Landroid/icu/text/CharsetMatch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 182
    .end local v0    # "active":Z
    :cond_1
    iget-boolean v0, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    #@33
    goto :goto_1

    #@34
    .line 190
    .end local v4    # "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@37
    .line 191
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@3a
    .line 192
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v6

    #@3e
    new-array v5, v6, [Landroid/icu/text/CharsetMatch;

    #@40
    .line 193
    .local v5, "resultArray":[Landroid/icu/text/CharsetMatch;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    .end local v5    # "resultArray":[Landroid/icu/text/CharsetMatch;
    check-cast v5, [Landroid/icu/text/CharsetMatch;

    #@46
    .line 194
    .restart local v5    # "resultArray":[Landroid/icu/text/CharsetMatch;
    return-object v5
.end method

.method public enableInputFilter(Z)Z
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    #@2
    .line 316
    .local v0, "previous":Z
    iput-boolean p1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    #@4
    .line 318
    return v0
.end method

.method public getDetectableCharsets()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 504
    new-instance v1, Ljava/util/ArrayList;

    #@2
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 505
    .local v1, "csnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@e
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@11
    move-result v4

    #@12
    if-ge v2, v4, :cond_2

    #@14
    .line 506
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@16
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@1c
    .line 507
    .local v3, "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@1e
    if-nez v4, :cond_1

    #@20
    iget-boolean v0, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    #@22
    .line 508
    .local v0, "active":Z
    :goto_1
    if-eqz v0, :cond_0

    #@24
    .line 509
    iget-object v4, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    #@26
    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 505
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 507
    .end local v0    # "active":Z
    :cond_1
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@32
    aget-boolean v0, v4, v2

    #@34
    goto :goto_1

    #@35
    .line 512
    .end local v3    # "rcinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@38
    move-result v4

    #@39
    new-array v4, v4, [Ljava/lang/String;

    #@3b
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    check-cast v4, [Ljava/lang/String;

    #@41
    return-object v4
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    #@3
    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;

    #@6
    .line 224
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    #@9
    move-result-object v1

    #@a
    .line 226
    .local v1, "match":Landroid/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    #@c
    .line 227
    return-object v2

    #@d
    .line 230
    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 231
    .end local v1    # "match":Landroid/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    #@13
    .line 232
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # [B
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 252
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    #@3
    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText([B)Landroid/icu/text/CharsetDetector;

    #@6
    .line 257
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    #@9
    move-result-object v1

    #@a
    .line 259
    .local v1, "match":Landroid/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    #@c
    .line 260
    return-object v3

    #@d
    .line 263
    :cond_0
    const/4 v2, -0x1

    #@e
    invoke-virtual {v1, v2}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 264
    .end local v1    # "match":Landroid/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    #@14
    .line 265
    .local v0, "e":Ljava/io/IOException;
    return-object v3
.end method

.method public inputFilterEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    #@2
    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Landroid/icu/text/CharsetDetector;
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    #@2
    .line 73
    return-object p0
.end method

.method public setDetectableCharset(Ljava/lang/String;Z)Landroid/icu/text/CharsetDetector;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 532
    const/4 v3, -0x1

    #@1
    .line 533
    .local v3, "modIdx":I
    const/4 v2, 0x0

    #@2
    .line 534
    .local v2, "isDefaultVal":Z
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@8
    move-result v4

    #@9
    if-ge v1, v4, :cond_0

    #@b
    .line 535
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@d
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@13
    .line 536
    .local v0, "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v4, v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    #@15
    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 537
    move v3, v1

    #@20
    .line 538
    iget-boolean v4, v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    #@22
    if-ne v4, p2, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    .line 542
    .end local v0    # "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_0
    :goto_1
    if-gez v3, :cond_3

    #@27
    .line 544
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Invalid encoding: \""

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, "\""

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    .line 538
    .restart local v0    # "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_1
    const/4 v2, 0x0

    #@49
    goto :goto_1

    #@4a
    .line 534
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 547
    .end local v0    # "csrinfo":Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_3
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@4f
    if-nez v4, :cond_4

    #@51
    if-eqz v2, :cond_6

    #@53
    .line 557
    :cond_4
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@55
    if-eqz v4, :cond_5

    #@57
    .line 558
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@59
    aput-boolean p2, v4, v3

    #@5b
    .line 561
    :cond_5
    return-object p0

    #@5c
    .line 549
    :cond_6
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@5e
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@61
    move-result v4

    #@62
    new-array v4, v4, [Z

    #@64
    iput-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@66
    .line 552
    const/4 v1, 0x0

    #@67
    :goto_2
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@69
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@6c
    move-result v4

    #@6d
    if-ge v1, v4, :cond_4

    #@6f
    .line 553
    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    #@71
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    #@73
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    #@79
    iget-boolean v4, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    #@7b
    aput-boolean v4, v5, v1

    #@7d
    .line 552
    add-int/lit8 v1, v1, 0x1

    #@7f
    goto :goto_2
.end method

.method public setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x1f40

    #@2
    const/4 v3, 0x0

    #@3
    .line 107
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@5
    .line 108
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@7
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    #@a
    .line 109
    new-array v2, v4, [B

    #@c
    iput-object v2, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@e
    .line 112
    iput v3, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@10
    .line 113
    const/16 v1, 0x1f40

    #@12
    .line 114
    .local v1, "remainingLength":I
    :goto_0
    if-lez v1, :cond_0

    #@14
    .line 116
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@16
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@18
    iget v4, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@1a
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    #@1d
    move-result v0

    #@1e
    .line 117
    .local v0, "bytesRead":I
    if-gtz v0, :cond_1

    #@20
    .line 123
    .end local v0    # "bytesRead":I
    :cond_0
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    #@22
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    #@25
    .line 125
    return-object p0

    #@26
    .line 120
    .restart local v0    # "bytesRead":I
    :cond_1
    iget v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@28
    add-int/2addr v2, v0

    #@29
    iput v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@2b
    .line 121
    sub-int/2addr v1, v0

    #@2c
    goto :goto_0
.end method

.method public setText([B)Landroid/icu/text/CharsetDetector;
    .locals 1
    .param p1, "in"    # [B

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@2
    .line 85
    array-length v0, p1

    #@3
    iput v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@5
    .line 87
    return-object p0
.end method
