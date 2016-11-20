.class public final Landroid/icu/impl/UTS46;
.super Landroid/icu/text/IDNA;
.source "UTS46.java"


# static fields
.field private static final EN_AN_MASK:I

.field private static final ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_MASK:I

.field private static final L_MASK:I

.field private static final L_R_AL_MASK:I

.field private static final R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final R_AL_AN_MASK:I

.field private static final R_AL_EN_AN_MASK:I

.field private static final R_AL_MASK:I

.field private static U_GC_M_MASK:I

.field private static final asciiData:[B

.field private static final severeErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final uts46Norm2:Landroid/icu/text/Normalizer2;


# instance fields
.field final options:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x5

    #@2
    const/4 v5, 0x2

    #@3
    .line 67
    const-string/jumbo v0, "uts46"

    #@6
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v2, v0, v1}, Landroid/icu/text/Normalizer2;->getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;

    #@c
    move-result-object v0

    #@d
    .line 66
    sput-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@f
    .line 72
    sget-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    #@11
    .line 73
    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@13
    .line 74
    sget-object v2, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    #@15
    .line 75
    sget-object v3, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    #@17
    .line 76
    sget-object v4, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    #@19
    .line 71
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    #@1f
    .line 96
    const/16 v0, 0x80

    #@21
    new-array v0, v0, [B

    #@23
    fill-array-data v0, :array_0

    #@26
    sput-object v0, Landroid/icu/impl/UTS46;->asciiData:[B

    #@28
    .line 516
    const/4 v0, 0x0

    #@29
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@2c
    move-result v0

    #@2d
    sput v0, Landroid/icu/impl/UTS46;->L_MASK:I

    #@2f
    .line 518
    const/4 v0, 0x1

    #@30
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@33
    move-result v0

    #@34
    .line 519
    const/16 v1, 0xd

    #@36
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@39
    move-result v1

    #@3a
    .line 518
    or-int/2addr v0, v1

    #@3b
    .line 517
    sput v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    #@3d
    .line 520
    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    #@3f
    sget v1, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    #@41
    or-int/2addr v0, v1

    #@42
    sput v0, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    #@44
    .line 522
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    #@46
    invoke-static {v6}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@49
    move-result v1

    #@4a
    or-int/2addr v0, v1

    #@4b
    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    #@4d
    .line 525
    invoke-static {v5}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@50
    move-result v0

    #@51
    .line 526
    invoke-static {v6}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@54
    move-result v1

    #@55
    .line 525
    or-int/2addr v0, v1

    #@56
    .line 524
    sput v0, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    #@58
    .line 527
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    #@5a
    sget v1, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    #@5c
    or-int/2addr v0, v1

    #@5d
    sput v0, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    #@5f
    .line 528
    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    #@61
    invoke-static {v5}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@64
    move-result v1

    #@65
    or-int/2addr v0, v1

    #@66
    sput v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    #@68
    .line 531
    const/4 v0, 0x3

    #@69
    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@6c
    move-result v0

    #@6d
    .line 532
    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@70
    move-result v1

    #@71
    .line 531
    or-int/2addr v0, v1

    #@72
    .line 533
    const/4 v1, 0x4

    #@73
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@76
    move-result v1

    #@77
    .line 531
    or-int/2addr v0, v1

    #@78
    .line 534
    const/16 v1, 0xa

    #@7a
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@7d
    move-result v1

    #@7e
    .line 531
    or-int/2addr v0, v1

    #@7f
    .line 535
    const/16 v1, 0x12

    #@81
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@84
    move-result v1

    #@85
    .line 531
    or-int/2addr v0, v1

    #@86
    .line 536
    const/16 v1, 0x11

    #@88
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@8b
    move-result v1

    #@8c
    .line 531
    or-int/2addr v0, v1

    #@8d
    .line 530
    sput v0, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    #@8f
    .line 537
    sget v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    #@91
    sget v1, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    #@93
    or-int/2addr v0, v1

    #@94
    sput v0, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    #@96
    .line 538
    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    #@98
    sget v1, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    #@9a
    or-int/2addr v0, v1

    #@9b
    sget v1, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    #@9d
    or-int/2addr v0, v1

    #@9e
    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    #@a0
    .line 835
    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@a3
    move-result v0

    #@a4
    .line 836
    const/4 v1, 0x7

    #@a5
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@a8
    move-result v1

    #@a9
    .line 835
    or-int/2addr v0, v1

    #@aa
    .line 837
    const/16 v1, 0x8

    #@ac
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@af
    move-result v1

    #@b0
    .line 835
    or-int/2addr v0, v1

    #@b1
    .line 834
    sput v0, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    #@b3
    .line 34
    return-void

    #@b4
    .line 96
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "options"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/icu/text/IDNA;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/icu/impl/UTS46;->options:I

    #@5
    .line 35
    return-void
.end method

.method private static U_GET_GC_MASK(I)I
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 832
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    shl-int v0, v1, v0

    #@7
    return v0
.end method

.method private static U_MASK(I)I
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 829
    const/4 v0, 0x1

    #@1
    shl-int/2addr v0, p0

    #@2
    return v0
.end method

.method private checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    .line 550
    move v3, p2

    #@1
    .line 551
    .local v3, "i":I
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@4
    move-result v0

    #@5
    .line 552
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@8
    move-result v7

    #@9
    add-int v3, p2, v7

    #@b
    .line 553
    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@d
    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@10
    move-result v7

    #@11
    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@14
    move-result v2

    #@15
    .line 557
    .local v2, "firstMask":I
    sget v7, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    #@17
    not-int v7, v7

    #@18
    and-int/2addr v7, v2

    #@19
    if-eqz v7, :cond_0

    #@1b
    .line 558
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    #@1e
    .line 562
    :cond_0
    add-int v4, p2, p3

    #@20
    .line 564
    .local v4, "labelLimit":I
    :cond_1
    if-lt v3, v4, :cond_3

    #@22
    .line 565
    move v5, v2

    #@23
    .line 582
    .local v5, "lastMask":I
    :goto_0
    sget v7, Landroid/icu/impl/UTS46;->L_MASK:I

    #@25
    and-int/2addr v7, v2

    #@26
    if-eqz v7, :cond_4

    #@28
    .line 583
    sget v7, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    #@2a
    not-int v7, v7

    #@2b
    and-int/2addr v7, v5

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 586
    :goto_1
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    #@31
    .line 589
    :cond_2
    const/4 v6, 0x0

    #@32
    .line 590
    .local v6, "mask":I
    :goto_2
    if-ge v3, v4, :cond_5

    #@34
    .line 591
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@37
    move-result v0

    #@38
    .line 592
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@3b
    move-result v7

    #@3c
    add-int/2addr v3, v7

    #@3d
    .line 593
    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@3f
    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@42
    move-result v7

    #@43
    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@46
    move-result v7

    #@47
    or-int/2addr v6, v7

    #@48
    goto :goto_2

    #@49
    .line 568
    .end local v5    # "lastMask":I
    .end local v6    # "mask":I
    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@4c
    move-result v0

    #@4d
    .line 569
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@50
    move-result v7

    #@51
    sub-int/2addr v4, v7

    #@52
    .line 570
    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@54
    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@57
    move-result v1

    #@58
    .line 571
    .local v1, "dir":I
    const/16 v7, 0x11

    #@5a
    if-eq v1, v7, :cond_1

    #@5c
    .line 572
    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    #@5f
    move-result v5

    #@60
    .restart local v5    # "lastMask":I
    goto :goto_0

    #@61
    .line 584
    .end local v1    # "dir":I
    :cond_4
    sget v7, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    #@63
    not-int v7, v7

    #@64
    and-int/2addr v7, v5

    #@65
    if-eqz v7, :cond_2

    #@67
    goto :goto_1

    #@68
    .line 595
    .restart local v6    # "mask":I
    :cond_5
    sget v7, Landroid/icu/impl/UTS46;->L_MASK:I

    #@6a
    and-int/2addr v7, v2

    #@6b
    if-eqz v7, :cond_8

    #@6d
    .line 598
    sget v7, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    #@6f
    not-int v7, v7

    #@70
    and-int/2addr v7, v6

    #@71
    if-eqz v7, :cond_6

    #@73
    .line 599
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    #@76
    .line 619
    :cond_6
    :goto_3
    or-int v7, v2, v6

    #@78
    or-int/2addr v7, v5

    #@79
    sget v8, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    #@7b
    and-int/2addr v7, v8

    #@7c
    if-eqz v7, :cond_7

    #@7e
    .line 620
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setBiDi(Landroid/icu/text/IDNA$Info;)V

    #@81
    .line 546
    :cond_7
    return-void

    #@82
    .line 604
    :cond_8
    sget v7, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    #@84
    not-int v7, v7

    #@85
    and-int/2addr v7, v6

    #@86
    if-eqz v7, :cond_9

    #@88
    .line 605
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    #@8b
    .line 609
    :cond_9
    sget v7, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    #@8d
    and-int/2addr v7, v6

    #@8e
    sget v8, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    #@90
    if-ne v7, v8, :cond_6

    #@92
    .line 610
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    #@95
    goto :goto_3
.end method

.method private checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 10
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    const/16 v9, 0xb7

    #@2
    const/16 v8, 0x6c

    #@4
    .line 739
    add-int v6, p2, p3

    #@6
    add-int/lit8 v4, v6, -0x1

    #@8
    .line 740
    .local v4, "labelEnd":I
    const/4 v0, 0x0

    #@9
    .line 741
    .local v0, "arabicDigits":I
    move v2, p2

    #@a
    .local v2, "i":I
    :goto_0
    if-gt v2, v4, :cond_f

    #@c
    .line 742
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 743
    .local v1, "c":I
    if-ge v1, v9, :cond_1

    #@12
    .line 741
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 745
    :cond_1
    const/16 v6, 0x6f9

    #@17
    if-gt v1, v6, :cond_d

    #@19
    .line 746
    if-ne v1, v9, :cond_4

    #@1b
    .line 752
    if-ge p2, v2, :cond_2

    #@1d
    add-int/lit8 v6, v2, -0x1

    #@1f
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@22
    move-result v6

    #@23
    if-eq v6, v8, :cond_3

    #@25
    .line 754
    :cond_2
    :goto_2
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@27
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@2a
    goto :goto_1

    #@2b
    .line 753
    :cond_3
    if-ge v2, v4, :cond_2

    #@2d
    add-int/lit8 v6, v2, 0x1

    #@2f
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v6

    #@33
    if-eq v6, v8, :cond_0

    #@35
    goto :goto_2

    #@36
    .line 756
    :cond_4
    const/16 v6, 0x375

    #@38
    if-ne v1, v6, :cond_6

    #@3a
    .line 761
    if-ge v2, v4, :cond_5

    #@3c
    .line 762
    add-int/lit8 v6, v2, 0x1

    #@3e
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@41
    move-result v6

    #@42
    invoke-static {v6}, Landroid/icu/lang/UScript;->getScript(I)I

    #@45
    move-result v6

    #@46
    const/16 v7, 0xe

    #@48
    if-eq v7, v6, :cond_0

    #@4a
    .line 763
    :cond_5
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@4c
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@4f
    goto :goto_1

    #@50
    .line 765
    :cond_6
    const/16 v6, 0x5f3

    #@52
    if-eq v1, v6, :cond_7

    #@54
    const/16 v6, 0x5f4

    #@56
    if-ne v1, v6, :cond_9

    #@58
    .line 775
    :cond_7
    if-ge p2, v2, :cond_8

    #@5a
    .line 776
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@5d
    move-result v6

    #@5e
    invoke-static {v6}, Landroid/icu/lang/UScript;->getScript(I)I

    #@61
    move-result v6

    #@62
    const/16 v7, 0x13

    #@64
    if-eq v7, v6, :cond_0

    #@66
    .line 777
    :cond_8
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@68
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@6b
    goto :goto_1

    #@6c
    .line 779
    :cond_9
    const/16 v6, 0x660

    #@6e
    if-gt v6, v1, :cond_0

    #@70
    .line 793
    const/16 v6, 0x669

    #@72
    if-gt v1, v6, :cond_b

    #@74
    .line 794
    if-lez v0, :cond_a

    #@76
    .line 795
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    #@78
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@7b
    .line 797
    :cond_a
    const/4 v0, -0x1

    #@7c
    goto :goto_1

    #@7d
    .line 798
    :cond_b
    const/16 v6, 0x6f0

    #@7f
    if-gt v6, v1, :cond_0

    #@81
    .line 799
    if-gez v0, :cond_c

    #@83
    .line 800
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    #@85
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@88
    .line 802
    :cond_c
    const/4 v0, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 805
    :cond_d
    const/16 v6, 0x30fb

    #@8c
    if-ne v1, v6, :cond_0

    #@8e
    .line 812
    move v3, p2

    #@8f
    .line 813
    .local v3, "j":I
    :goto_3
    if-le v3, v4, :cond_e

    #@91
    .line 814
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    #@93
    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@96
    goto/16 :goto_1

    #@98
    .line 817
    :cond_e
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@9b
    move-result v1

    #@9c
    .line 818
    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    #@9f
    move-result v5

    #@a0
    .line 819
    .local v5, "script":I
    const/16 v6, 0x14

    #@a2
    if-eq v5, v6, :cond_0

    #@a4
    const/16 v6, 0x16

    #@a6
    if-eq v5, v6, :cond_0

    #@a8
    const/16 v6, 0x11

    #@aa
    if-eq v5, v6, :cond_0

    #@ac
    .line 812
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@af
    move-result v6

    #@b0
    add-int/2addr v3, v6

    #@b1
    goto :goto_3

    #@b2
    .line 738
    .end local v1    # "c":I
    .end local v3    # "j":I
    .end local v5    # "script":I
    :cond_f
    return-void
.end method

.method private static isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "length"    # I

    #@0
    .prologue
    const/16 v6, 0x7a

    #@2
    const/16 v5, 0x61

    #@4
    const/4 v4, 0x0

    #@5
    .line 639
    const/4 v2, 0x0

    #@6
    .line 640
    .local v2, "labelStart":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_8

    #@9
    .line 641
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 642
    .local v0, "c":C
    const/16 v3, 0x2e

    #@f
    if-ne v0, v3, :cond_4

    #@11
    .line 643
    if-le v1, v2, :cond_2

    #@13
    .line 644
    add-int/lit8 v3, v1, -0x1

    #@15
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 645
    if-gt v5, v0, :cond_0

    #@1b
    if-le v0, v6, :cond_2

    #@1d
    :cond_0
    const/16 v3, 0x30

    #@1f
    if-gt v3, v0, :cond_1

    #@21
    const/16 v3, 0x39

    #@23
    if-le v0, v3, :cond_2

    #@25
    .line 647
    :cond_1
    return v4

    #@26
    .line 650
    :cond_2
    add-int/lit8 v2, v1, 0x1

    #@28
    .line 640
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 651
    :cond_4
    if-ne v1, v2, :cond_6

    #@2d
    .line 652
    if-gt v5, v0, :cond_5

    #@2f
    if-le v0, v6, :cond_3

    #@31
    .line 654
    :cond_5
    return v4

    #@32
    .line 657
    :cond_6
    const/16 v3, 0x20

    #@34
    if-gt v0, v3, :cond_3

    #@36
    const/16 v3, 0x1c

    #@38
    if-ge v0, v3, :cond_7

    #@3a
    const/16 v3, 0x9

    #@3c
    if-gt v3, v0, :cond_3

    #@3e
    const/16 v3, 0xd

    #@40
    if-gt v0, v3, :cond_3

    #@42
    .line 659
    :cond_7
    return v4

    #@43
    .line 663
    .end local v0    # "c":C
    :cond_8
    const/4 v3, 0x1

    #@44
    return v3
.end method

.method private static isASCIIString(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "dest"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 80
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    .line 81
    .local v1, "length":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 82
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x7f

    #@d
    if-le v2, v3, :cond_0

    #@f
    .line 83
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 86
    :cond_1
    const/4 v2, 0x1

    #@15
    return v2
.end method

.method private isLabelOkContextJ(Ljava/lang/CharSequence;II)Z
    .locals 11
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I

    #@0
    .prologue
    const/16 v10, 0x9

    #@2
    const/4 v9, 0x5

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x0

    #@5
    .line 670
    add-int v3, p2, p3

    #@7
    .line 671
    .local v3, "labelLimit":I
    move v1, p2

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    #@a
    .line 672
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v5

    #@e
    const/16 v6, 0x200c

    #@10
    if-ne v5, v6, :cond_9

    #@12
    .line 679
    if-ne v1, p2, :cond_0

    #@14
    .line 680
    return v7

    #@15
    .line 683
    :cond_0
    move v2, v1

    #@16
    .line 684
    .local v2, "j":I
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@19
    move-result v0

    #@1a
    .line 685
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1d
    move-result v5

    #@1e
    sub-int/2addr v2, v5

    #@1f
    .line 686
    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@21
    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@24
    move-result v5

    #@25
    if-ne v5, v10, :cond_3

    #@27
    .line 671
    .end local v0    # "c":I
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 696
    .restart local v0    # "c":I
    .restart local v2    # "j":I
    .local v4, "type":I
    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@2d
    move-result v0

    #@2e
    .line 697
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@31
    move-result v5

    #@32
    sub-int/2addr v2, v5

    #@33
    .line 691
    .end local v4    # "type":I
    :cond_3
    sget-object v5, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@35
    invoke-virtual {v5, v0}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    #@38
    move-result v4

    #@39
    .line 692
    .restart local v4    # "type":I
    if-ne v4, v9, :cond_4

    #@3b
    .line 693
    if-nez v2, :cond_2

    #@3d
    .line 694
    return v7

    #@3e
    .line 698
    :cond_4
    const/4 v5, 0x3

    #@3f
    if-eq v4, v5, :cond_5

    #@41
    if-ne v4, v8, :cond_7

    #@43
    .line 705
    :cond_5
    add-int/lit8 v2, v1, 0x1

    #@45
    .line 706
    :cond_6
    if-ne v2, v3, :cond_8

    #@47
    .line 707
    return v7

    #@48
    .line 701
    :cond_7
    return v7

    #@49
    .line 709
    :cond_8
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@4c
    move-result v0

    #@4d
    .line 710
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@50
    move-result v5

    #@51
    add-int/2addr v2, v5

    #@52
    .line 711
    sget-object v5, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@54
    invoke-virtual {v5, v0}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    #@57
    move-result v4

    #@58
    .line 712
    if-eq v4, v9, :cond_6

    #@5a
    .line 714
    const/4 v5, 0x4

    #@5b
    if-eq v4, v5, :cond_1

    #@5d
    if-eq v4, v8, :cond_1

    #@5f
    .line 717
    return v7

    #@60
    .line 720
    .end local v0    # "c":I
    .end local v2    # "j":I
    .end local v4    # "type":I
    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@63
    move-result v5

    #@64
    const/16 v6, 0x200d

    #@66
    if-ne v5, v6, :cond_1

    #@68
    .line 725
    if-ne v1, p2, :cond_a

    #@6a
    .line 726
    return v7

    #@6b
    .line 728
    :cond_a
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@6e
    move-result v0

    #@6f
    .line 729
    .restart local v0    # "c":I
    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@71
    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@74
    move-result v5

    #@75
    if-eq v5, v10, :cond_1

    #@77
    .line 730
    return v7

    #@78
    .line 734
    .end local v0    # "c":I
    :cond_b
    const/4 v5, 0x1

    #@79
    return v5
.end method

.method private static isNonASCIIDisallowedSTD3Valid(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 294
    const/16 v1, 0x2260

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x226e

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x226f

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private mapDevChars(Ljava/lang/StringBuilder;II)I
    .locals 8
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "mappingStart"    # I

    #@0
    .prologue
    const/16 v7, 0x73

    #@2
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v4

    #@6
    .line 253
    .local v4, "length":I
    const/4 v1, 0x0

    #@7
    .line 254
    .local v1, "didMapDevChars":Z
    move v2, p3

    #@8
    .local v2, "i":I
    move v3, v2

    #@9
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@b
    .line 255
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 256
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 275
    add-int/lit8 v2, v3, 0x1

    #@14
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    #@15
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@16
    .line 259
    :sswitch_0
    const/4 v1, 0x1

    #@17
    .line 260
    add-int/lit8 v2, v3, 0x1

    #@19
    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@1c
    .line 261
    add-int/lit8 v3, v2, 0x1

    #@1e
    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@21
    .line 262
    add-int/lit8 v4, v4, 0x1

    #@23
    move v2, v3

    #@24
    .line 263
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@25
    .line 265
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_1
    const/4 v1, 0x1

    #@26
    .line 266
    add-int/lit8 v2, v3, 0x1

    #@28
    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v6, 0x3c3

    #@2a
    invoke-virtual {p1, v3, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@2d
    goto :goto_1

    #@2e
    .line 270
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_2
    const/4 v1, 0x1

    #@2f
    .line 271
    add-int/lit8 v6, v3, 0x1

    #@31
    invoke-virtual {p1, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@34
    .line 272
    add-int/lit8 v4, v4, -0x1

    #@36
    move v2, v3

    #@37
    .line 273
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@38
    .line 279
    .end local v0    # "c":C
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    #@3a
    .line 283
    sget-object v6, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@3c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {p1, p2, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v6, v7}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 284
    .local v5, "normalized":Ljava/lang/String;
    const v6, 0x7fffffff

    #@4b
    invoke-virtual {p1, p2, v6, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@51
    move-result v6

    #@52
    return v6

    #@53
    .line 287
    .end local v5    # "normalized":Ljava/lang/String;
    :cond_1
    return v4

    #@54
    .line 256
    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_0
        0x3c2 -> :sswitch_1
        0x200c -> :sswitch_2
        0x200d -> :sswitch_2
    .end sparse-switch
.end method

.method private markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 8
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "toASCII"    # Z
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    const v7, 0xfffd

    #@3
    .line 482
    iget v6, p0, Landroid/icu/impl/UTS46;->options:I

    #@5
    and-int/lit8 v6, v6, 0x2

    #@7
    if-eqz v6, :cond_3

    #@9
    const/4 v1, 0x1

    #@a
    .line 483
    .local v1, "disallowNonLDHDot":Z
    :goto_0
    const/4 v3, 0x1

    #@b
    .line 484
    .local v3, "isASCII":Z
    const/4 v5, 0x1

    #@c
    .line 485
    .local v5, "onlyLDH":Z
    add-int/lit8 v2, p2, 0x4

    #@e
    .line 486
    .local v2, "i":I
    add-int v4, p2, p3

    #@10
    .line 488
    .local v4, "limit":I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 489
    .local v0, "c":C
    const/16 v6, 0x7f

    #@16
    if-gt v0, v6, :cond_5

    #@18
    .line 490
    const/16 v6, 0x2e

    #@1a
    if-ne v0, v6, :cond_4

    #@1c
    .line 491
    sget-object v6, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    #@1e
    invoke-static {p5, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@21
    .line 492
    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@24
    .line 493
    const/4 v5, 0x0

    #@25
    const/4 v3, 0x0

    #@26
    .line 504
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    if-lt v2, v4, :cond_0

    #@2a
    .line 505
    if-eqz v5, :cond_6

    #@2c
    .line 506
    add-int v6, p2, p3

    #@2e
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@31
    .line 507
    add-int/lit8 p3, p3, 0x1

    #@33
    .line 513
    :cond_2
    :goto_2
    return p3

    #@34
    .line 482
    .end local v0    # "c":C
    .end local v1    # "disallowNonLDHDot":Z
    .end local v2    # "i":I
    .end local v3    # "isASCII":Z
    .end local v4    # "limit":I
    .end local v5    # "onlyLDH":Z
    :cond_3
    const/4 v1, 0x0

    #@35
    .restart local v1    # "disallowNonLDHDot":Z
    goto :goto_0

    #@36
    .line 494
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "isASCII":Z
    .restart local v4    # "limit":I
    .restart local v5    # "onlyLDH":Z
    :cond_4
    sget-object v6, Landroid/icu/impl/UTS46;->asciiData:[B

    #@38
    aget-byte v6, v6, v0

    #@3a
    if-gez v6, :cond_1

    #@3c
    .line 495
    const/4 v5, 0x0

    #@3d
    .line 496
    if-eqz v1, :cond_1

    #@3f
    .line 497
    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@42
    .line 498
    const/4 v3, 0x0

    #@43
    goto :goto_1

    #@44
    .line 502
    :cond_5
    const/4 v5, 0x0

    #@45
    const/4 v3, 0x0

    #@46
    goto :goto_1

    #@47
    .line 509
    :cond_6
    if-eqz p4, :cond_2

    #@49
    if-eqz v3, :cond_2

    #@4b
    const/16 v6, 0x3f

    #@4d
    if-le p3, v6, :cond_2

    #@4f
    .line 510
    sget-object v6, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@51
    invoke-static {p5, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@54
    goto :goto_2
.end method

.method private process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 13
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "isLabel"    # Z
    .param p3, "toASCII"    # Z
    .param p4, "dest"    # Ljava/lang/StringBuilder;
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    .line 119
    move-object/from16 v0, p4

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v1

    #@a
    .line 123
    :cond_0
    const/4 v1, 0x0

    #@b
    const v2, 0x7fffffff

    #@e
    move-object/from16 v0, p4

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@13
    .line 124
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->resetInfo(Landroid/icu/text/IDNA$Info;)V

    #@16
    .line 125
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v12

    #@1a
    .line 126
    .local v12, "srcLength":I
    if-nez v12, :cond_1

    #@1c
    .line 127
    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    #@1e
    move-object/from16 v0, p5

    #@20
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@23
    .line 128
    return-object p4

    #@24
    .line 131
    :cond_1
    iget v1, p0, Landroid/icu/impl/UTS46;->options:I

    #@26
    and-int/lit8 v1, v1, 0x2

    #@28
    if-eqz v1, :cond_5

    #@2a
    const/4 v11, 0x1

    #@2b
    .line 132
    .local v11, "disallowNonLDHDot":Z
    :goto_0
    const/4 v3, 0x0

    #@2c
    .line 134
    .local v3, "labelStart":I
    const/4 v4, 0x0

    #@2d
    .line 135
    .local v4, "i":I
    :goto_1
    if-ne v4, v12, :cond_6

    #@2f
    .line 136
    if-eqz p3, :cond_4

    #@31
    .line 137
    sub-int v1, v4, v3

    #@33
    const/16 v2, 0x3f

    #@35
    if-le v1, v2, :cond_2

    #@37
    .line 138
    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@39
    move-object/from16 v0, p5

    #@3b
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@3e
    .line 141
    :cond_2
    if-nez p2, :cond_4

    #@40
    const/16 v1, 0xfe

    #@42
    if-lt v4, v1, :cond_4

    #@44
    const/16 v1, 0xfe

    #@46
    if-gt v4, v1, :cond_3

    #@48
    if-ge v3, v4, :cond_4

    #@4a
    .line 142
    :cond_3
    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@4c
    move-object/from16 v0, p5

    #@4e
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@51
    .line 145
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    #@54
    .line 146
    return-object p4

    #@55
    .line 131
    .end local v3    # "labelStart":I
    .end local v4    # "i":I
    .end local v11    # "disallowNonLDHDot":Z
    :cond_5
    const/4 v11, 0x0

    #@56
    .restart local v11    # "disallowNonLDHDot":Z
    goto :goto_0

    #@57
    .line 148
    .restart local v3    # "labelStart":I
    .restart local v4    # "i":I
    :cond_6
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@5a
    move-result v9

    #@5b
    .line 149
    .local v9, "c":C
    const/16 v1, 0x7f

    #@5d
    if-le v9, v1, :cond_9

    #@5f
    .line 190
    :cond_7
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    #@62
    move-object v1, p0

    #@63
    move-object v2, p1

    #@64
    move v5, p2

    #@65
    move/from16 v6, p3

    #@67
    move-object/from16 v7, p4

    #@69
    move-object/from16 v8, p5

    #@6b
    .line 191
    invoke-direct/range {v1 .. v8}, Landroid/icu/impl/UTS46;->processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    #@6e
    .line 192
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_8

    #@74
    sget-object v1, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    #@76
    move-object/from16 v0, p5

    #@78
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_14

    #@7e
    .line 197
    :cond_8
    :goto_3
    return-object p4

    #@7f
    .line 152
    :cond_9
    sget-object v1, Landroid/icu/impl/UTS46;->asciiData:[B

    #@81
    aget-byte v10, v1, v9

    #@83
    .line 153
    .local v10, "cData":I
    if-lez v10, :cond_b

    #@85
    .line 154
    add-int/lit8 v1, v9, 0x20

    #@87
    int-to-char v1, v1

    #@88
    move-object/from16 v0, p4

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8d
    .line 134
    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 155
    :cond_b
    if-gez v10, :cond_c

    #@92
    if-nez v11, :cond_7

    #@94
    .line 158
    :cond_c
    move-object/from16 v0, p4

    #@96
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@99
    .line 159
    const/16 v1, 0x2d

    #@9b
    if-ne v9, v1, :cond_10

    #@9d
    .line 160
    add-int/lit8 v1, v3, 0x3

    #@9f
    if-ne v4, v1, :cond_d

    #@a1
    add-int/lit8 v1, v4, -0x1

    #@a3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a6
    move-result v1

    #@a7
    const/16 v2, 0x2d

    #@a9
    if-ne v1, v2, :cond_d

    #@ab
    .line 162
    add-int/lit8 v4, v4, 0x1

    #@ad
    .line 163
    goto :goto_2

    #@ae
    .line 165
    :cond_d
    if-ne v4, v3, :cond_e

    #@b0
    .line 167
    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@b2
    move-object/from16 v0, p5

    #@b4
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@b7
    .line 169
    :cond_e
    add-int/lit8 v1, v4, 0x1

    #@b9
    if-eq v1, v12, :cond_f

    #@bb
    add-int/lit8 v1, v4, 0x1

    #@bd
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x2e

    #@c3
    if-ne v1, v2, :cond_a

    #@c5
    .line 171
    :cond_f
    sget-object v1, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@c7
    move-object/from16 v0, p5

    #@c9
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@cc
    goto :goto_4

    #@cd
    .line 173
    :cond_10
    const/16 v1, 0x2e

    #@cf
    if-ne v9, v1, :cond_a

    #@d1
    .line 174
    if-eqz p2, :cond_11

    #@d3
    .line 176
    add-int/lit8 v4, v4, 0x1

    #@d5
    .line 177
    goto :goto_2

    #@d6
    .line 179
    :cond_11
    if-ne v4, v3, :cond_12

    #@d8
    .line 180
    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    #@da
    move-object/from16 v0, p5

    #@dc
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@df
    .line 182
    :cond_12
    if-eqz p3, :cond_13

    #@e1
    sub-int v1, v4, v3

    #@e3
    const/16 v2, 0x3f

    #@e5
    if-le v1, v2, :cond_13

    #@e7
    .line 183
    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@e9
    move-object/from16 v0, p5

    #@eb
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@ee
    .line 185
    :cond_13
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    #@f1
    .line 186
    add-int/lit8 v3, v4, 0x1

    #@f3
    goto :goto_4

    #@f4
    .line 193
    .end local v10    # "cData":I
    :cond_14
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    #@f7
    move-result v1

    #@f8
    if-eqz v1, :cond_15

    #@fa
    if-lez v3, :cond_8

    #@fc
    move-object/from16 v0, p4

    #@fe
    invoke-static {v0, v3}, Landroid/icu/impl/UTS46;->isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z

    #@101
    move-result v1

    #@102
    if-nez v1, :cond_8

    #@104
    .line 195
    :cond_15
    sget-object v1, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    #@106
    move-object/from16 v0, p5

    #@108
    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@10b
    goto/16 :goto_3
.end method

.method private processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 23
    .param p1, "dest"    # Ljava/lang/StringBuilder;
    .param p2, "labelStart"    # I
    .param p3, "labelLength"    # I
    .param p4, "toASCII"    # Z
    .param p5, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    .line 322
    move/from16 v7, p2

    #@2
    .line 323
    .local v7, "destLabelStart":I
    move/from16 v8, p3

    #@4
    .line 325
    .local v8, "destLabelLength":I
    const/4 v5, 0x4

    #@5
    move/from16 v0, p3

    #@7
    if-lt v0, v5, :cond_1

    #@9
    .line 326
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@c
    move-result v5

    #@d
    const/16 v6, 0x78

    #@f
    if-ne v5, v6, :cond_1

    #@11
    add-int/lit8 v5, p2, 0x1

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@18
    move-result v5

    #@19
    const/16 v6, 0x6e

    #@1b
    if-ne v5, v6, :cond_1

    #@1d
    .line 327
    add-int/lit8 v5, p2, 0x2

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@24
    move-result v5

    #@25
    const/16 v6, 0x2d

    #@27
    if-ne v5, v6, :cond_1

    #@29
    add-int/lit8 v5, p2, 0x3

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@30
    move-result v5

    #@31
    const/16 v6, 0x2d

    #@33
    if-ne v5, v6, :cond_1

    #@35
    .line 330
    const/16 v22, 0x1

    #@37
    .line 332
    .local v22, "wasPunycode":Z
    add-int/lit8 v5, p2, 0x4

    #@39
    add-int v6, p2, p3

    #@3b
    :try_start_0
    move-object/from16 v0, p1

    #@3d
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@40
    move-result-object v5

    #@41
    const/4 v6, 0x0

    #@42
    invoke-static {v5, v6}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v15

    #@46
    .line 344
    .local v15, "fromPunycode":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@48
    invoke-virtual {v5, v15}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v17

    #@4c
    .line 345
    .local v17, "isValid":Z
    if-nez v17, :cond_0

    #@4e
    .line 346
    sget-object v5, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    #@50
    move-object/from16 v0, p5

    #@52
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@55
    .line 347
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    #@58
    move-result v5

    #@59
    return v5

    #@5a
    .line 333
    .end local v15    # "fromPunycode":Ljava/lang/StringBuilder;
    .end local v17    # "isValid":Z
    :catch_0
    move-exception v14

    #@5b
    .line 334
    .local v14, "e":Landroid/icu/text/StringPrepParseException;
    sget-object v5, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    #@5d
    move-object/from16 v0, p5

    #@5f
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@62
    .line 335
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    #@65
    move-result v5

    #@66
    return v5

    #@67
    .line 349
    .end local v14    # "e":Landroid/icu/text/StringPrepParseException;
    .restart local v15    # "fromPunycode":Ljava/lang/StringBuilder;
    .restart local v17    # "isValid":Z
    :cond_0
    move-object/from16 v18, v15

    #@69
    .line 350
    .local v18, "labelString":Ljava/lang/StringBuilder;
    const/16 p2, 0x0

    #@6b
    .line 351
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@6e
    move-result p3

    #@6f
    .line 357
    .end local v15    # "fromPunycode":Ljava/lang/StringBuilder;
    .end local v17    # "isValid":Z
    :goto_0
    if-nez p3, :cond_2

    #@71
    .line 358
    sget-object v5, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    #@73
    move-object/from16 v0, p5

    #@75
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@78
    .line 359
    move-object/from16 v0, p1

    #@7a
    move-object/from16 v1, v18

    #@7c
    move/from16 v2, p3

    #@7e
    invoke-static {v0, v7, v8, v1, v2}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    #@81
    move-result v5

    #@82
    return v5

    #@83
    .line 353
    .end local v18    # "labelString":Ljava/lang/StringBuilder;
    .end local v22    # "wasPunycode":Z
    :cond_1
    const/16 v22, 0x0

    #@85
    .line 354
    .restart local v22    # "wasPunycode":Z
    move-object/from16 v18, p1

    #@87
    .restart local v18    # "labelString":Ljava/lang/StringBuilder;
    goto :goto_0

    #@88
    .line 362
    :cond_2
    const/4 v5, 0x4

    #@89
    move/from16 v0, p3

    #@8b
    if-lt v0, v5, :cond_3

    #@8d
    add-int/lit8 v5, p2, 0x2

    #@8f
    move-object/from16 v0, v18

    #@91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@94
    move-result v5

    #@95
    const/16 v6, 0x2d

    #@97
    if-ne v5, v6, :cond_3

    #@99
    add-int/lit8 v5, p2, 0x3

    #@9b
    move-object/from16 v0, v18

    #@9d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@a0
    move-result v5

    #@a1
    const/16 v6, 0x2d

    #@a3
    if-ne v5, v6, :cond_3

    #@a5
    .line 364
    sget-object v5, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    #@a7
    move-object/from16 v0, p5

    #@a9
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@ac
    .line 366
    :cond_3
    move-object/from16 v0, v18

    #@ae
    move/from16 v1, p2

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@b3
    move-result v5

    #@b4
    const/16 v6, 0x2d

    #@b6
    if-ne v5, v6, :cond_4

    #@b8
    .line 368
    sget-object v5, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@ba
    move-object/from16 v0, p5

    #@bc
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@bf
    .line 370
    :cond_4
    add-int v5, p2, p3

    #@c1
    add-int/lit8 v5, v5, -0x1

    #@c3
    move-object/from16 v0, v18

    #@c5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@c8
    move-result v5

    #@c9
    const/16 v6, 0x2d

    #@cb
    if-ne v5, v6, :cond_5

    #@cd
    .line 372
    sget-object v5, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    #@cf
    move-object/from16 v0, p5

    #@d1
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@d4
    .line 383
    :cond_5
    move/from16 v16, p2

    #@d6
    .line 384
    .local v16, "i":I
    add-int v19, p2, p3

    #@d8
    .line 385
    .local v19, "limit":I
    const/16 v20, 0x0

    #@da
    .line 387
    .local v20, "oredChars":C
    move-object/from16 v0, p0

    #@dc
    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    #@de
    and-int/lit8 v5, v5, 0x2

    #@e0
    if-eqz v5, :cond_e

    #@e2
    const/4 v13, 0x1

    #@e3
    .line 389
    .end local v20    # "oredChars":C
    .local v13, "disallowNonLDHDot":Z
    :cond_6
    :goto_1
    move-object/from16 v0, v18

    #@e5
    move/from16 v1, v16

    #@e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@ea
    move-result v11

    #@eb
    .line 390
    .local v11, "c":C
    const/16 v5, 0x7f

    #@ed
    if-gt v11, v5, :cond_10

    #@ef
    .line 391
    const/16 v5, 0x2e

    #@f1
    if-ne v11, v5, :cond_f

    #@f3
    .line 392
    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    #@f5
    move-object/from16 v0, p5

    #@f7
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@fa
    .line 393
    const v5, 0xfffd

    #@fd
    move-object/from16 v0, v18

    #@ff
    move/from16 v1, v16

    #@101
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@104
    .line 407
    :cond_7
    :goto_2
    add-int/lit8 v16, v16, 0x1

    #@106
    .line 408
    move/from16 v0, v16

    #@108
    move/from16 v1, v19

    #@10a
    if-lt v0, v1, :cond_6

    #@10c
    .line 413
    move-object/from16 v0, v18

    #@10e
    move/from16 v1, p2

    #@110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@113
    move-result v12

    #@114
    .line 414
    .local v12, "c":I
    invoke-static {v12}, Landroid/icu/impl/UTS46;->U_GET_GC_MASK(I)I

    #@117
    move-result v5

    #@118
    sget v6, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    #@11a
    and-int/2addr v5, v6

    #@11b
    if-eqz v5, :cond_8

    #@11d
    .line 415
    sget-object v5, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    #@11f
    move-object/from16 v0, p5

    #@121
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@124
    .line 416
    const v5, 0xfffd

    #@127
    move-object/from16 v0, v18

    #@129
    move/from16 v1, p2

    #@12b
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@12e
    .line 417
    const v5, 0xffff

    #@131
    if-le v12, v5, :cond_8

    #@133
    .line 419
    add-int/lit8 v5, p2, 0x1

    #@135
    move-object/from16 v0, v18

    #@137
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@13a
    .line 420
    add-int/lit8 p3, p3, -0x1

    #@13c
    .line 421
    move-object/from16 v0, v18

    #@13e
    move-object/from16 v1, p1

    #@140
    if-ne v0, v1, :cond_8

    #@142
    .line 422
    add-int/lit8 v8, v8, -0x1

    #@144
    .line 426
    :cond_8
    sget-object v5, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    #@146
    move-object/from16 v0, p5

    #@148
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    #@14b
    move-result v5

    #@14c
    if-nez v5, :cond_17

    #@14e
    .line 429
    move-object/from16 v0, p0

    #@150
    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    #@152
    and-int/lit8 v5, v5, 0x4

    #@154
    if-eqz v5, :cond_a

    #@156
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    #@159
    move-result v5

    #@15a
    if-eqz v5, :cond_9

    #@15c
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    #@15f
    move-result v5

    #@160
    if-eqz v5, :cond_a

    #@162
    .line 430
    :cond_9
    move-object/from16 v0, p0

    #@164
    move-object/from16 v1, v18

    #@166
    move/from16 v2, p2

    #@168
    move/from16 v3, p3

    #@16a
    move-object/from16 v4, p5

    #@16c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/UTS46;->checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    #@16f
    .line 432
    :cond_a
    move-object/from16 v0, p0

    #@171
    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    #@173
    and-int/lit8 v5, v5, 0x8

    #@175
    if-eqz v5, :cond_b

    #@177
    move/from16 v0, v20

    #@179
    and-int/lit16 v5, v0, 0x200c

    #@17b
    const/16 v6, 0x200c

    #@17d
    if-ne v5, v6, :cond_b

    #@17f
    .line 433
    move-object/from16 v0, p0

    #@181
    move-object/from16 v1, v18

    #@183
    move/from16 v2, p2

    #@185
    move/from16 v3, p3

    #@187
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UTS46;->isLabelOkContextJ(Ljava/lang/CharSequence;II)Z

    #@18a
    move-result v5

    #@18b
    if-eqz v5, :cond_12

    #@18d
    .line 437
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    #@18f
    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    #@191
    and-int/lit8 v5, v5, 0x40

    #@193
    if-eqz v5, :cond_c

    #@195
    const/16 v5, 0xb7

    #@197
    move/from16 v0, v20

    #@199
    if-lt v0, v5, :cond_c

    #@19b
    .line 438
    move-object/from16 v0, p0

    #@19d
    move-object/from16 v1, v18

    #@19f
    move/from16 v2, p2

    #@1a1
    move/from16 v3, p3

    #@1a3
    move-object/from16 v4, p5

    #@1a5
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/UTS46;->checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    #@1a8
    .line 440
    :cond_c
    if-eqz p4, :cond_16

    #@1aa
    .line 441
    if-eqz v22, :cond_13

    #@1ac
    .line 443
    const/16 v5, 0x3f

    #@1ae
    if-le v8, v5, :cond_d

    #@1b0
    .line 444
    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@1b2
    move-object/from16 v0, p5

    #@1b4
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@1b7
    .line 446
    :cond_d
    return v8

    #@1b8
    .line 387
    .end local v11    # "c":C
    .end local v12    # "c":I
    .end local v13    # "disallowNonLDHDot":Z
    .restart local v20    # "oredChars":C
    :cond_e
    const/4 v13, 0x0

    #@1b9
    .restart local v13    # "disallowNonLDHDot":Z
    goto/16 :goto_1

    #@1bb
    .line 394
    .end local v20    # "oredChars":C
    .restart local v11    # "c":C
    :cond_f
    if-eqz v13, :cond_7

    #@1bd
    sget-object v5, Landroid/icu/impl/UTS46;->asciiData:[B

    #@1bf
    aget-byte v5, v5, v11

    #@1c1
    if-gez v5, :cond_7

    #@1c3
    .line 395
    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@1c5
    move-object/from16 v0, p5

    #@1c7
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@1ca
    .line 396
    const v5, 0xfffd

    #@1cd
    move-object/from16 v0, v18

    #@1cf
    move/from16 v1, v16

    #@1d1
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@1d4
    goto/16 :goto_2

    #@1d6
    .line 399
    :cond_10
    or-int v5, v20, v11

    #@1d8
    int-to-char v0, v5

    #@1d9
    move/from16 v20, v0

    #@1db
    .line 400
    .local v20, "oredChars":C
    if-eqz v13, :cond_11

    #@1dd
    invoke-static {v11}, Landroid/icu/impl/UTS46;->isNonASCIIDisallowedSTD3Valid(I)Z

    #@1e0
    move-result v5

    #@1e1
    if-eqz v5, :cond_11

    #@1e3
    .line 401
    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@1e5
    move-object/from16 v0, p5

    #@1e7
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@1ea
    .line 402
    const v5, 0xfffd

    #@1ed
    move-object/from16 v0, v18

    #@1ef
    move/from16 v1, v16

    #@1f1
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@1f4
    goto/16 :goto_2

    #@1f6
    .line 403
    :cond_11
    const v5, 0xfffd

    #@1f9
    if-ne v11, v5, :cond_7

    #@1fb
    .line 404
    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    #@1fd
    move-object/from16 v0, p5

    #@1ff
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@202
    goto/16 :goto_2

    #@204
    .line 435
    .end local v20    # "oredChars":C
    .restart local v12    # "c":I
    :cond_12
    sget-object v5, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    #@206
    move-object/from16 v0, p5

    #@208
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@20b
    goto :goto_3

    #@20c
    .line 447
    :cond_13
    const/16 v5, 0x80

    #@20e
    move/from16 v0, v20

    #@210
    if-lt v0, v5, :cond_15

    #@212
    .line 451
    add-int v5, p2, p3

    #@214
    :try_start_1
    move-object/from16 v0, v18

    #@216
    move/from16 v1, p2

    #@218
    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@21b
    move-result-object v5

    #@21c
    const/4 v6, 0x0

    #@21d
    invoke-static {v5, v6}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@220
    move-result-object v21

    #@221
    .line 455
    .local v21, "punycode":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "xn--"

    #@224
    const/4 v6, 0x0

    #@225
    move-object/from16 v0, v21

    #@227
    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    .line 456
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    #@22d
    move-result v5

    #@22e
    const/16 v6, 0x3f

    #@230
    if-le v5, v6, :cond_14

    #@232
    .line 457
    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@234
    move-object/from16 v0, p5

    #@236
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@239
    .line 460
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    #@23c
    move-result v5

    #@23d
    .line 459
    move-object/from16 v0, p1

    #@23f
    move-object/from16 v1, v21

    #@241
    invoke-static {v0, v7, v8, v1, v5}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    #@244
    move-result v5

    #@245
    return v5

    #@246
    .line 452
    .end local v21    # "punycode":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v14

    #@247
    .line 453
    .restart local v14    # "e":Landroid/icu/text/StringPrepParseException;
    new-instance v5, Landroid/icu/util/ICUException;

    #@249
    invoke-direct {v5, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    #@24c
    throw v5

    #@24d
    .line 463
    .end local v14    # "e":Landroid/icu/text/StringPrepParseException;
    :cond_15
    const/16 v5, 0x3f

    #@24f
    move/from16 v0, p3

    #@251
    if-le v0, v5, :cond_16

    #@253
    .line 464
    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@255
    move-object/from16 v0, p5

    #@257
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@25a
    .line 476
    :cond_16
    move-object/from16 v0, p1

    #@25c
    move-object/from16 v1, v18

    #@25e
    move/from16 v2, p3

    #@260
    invoke-static {v0, v7, v8, v1, v2}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    #@263
    move-result v5

    #@264
    return v5

    #@265
    .line 471
    :cond_17
    if-eqz v22, :cond_16

    #@267
    .line 472
    sget-object v5, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    #@269
    move-object/from16 v0, p5

    #@26b
    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@26e
    move-object/from16 v5, p0

    #@270
    move-object/from16 v6, p1

    #@272
    move/from16 v9, p4

    #@274
    move-object/from16 v10, p5

    #@276
    .line 473
    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    #@279
    move-result v5

    #@27a
    return v5
.end method

.method private processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 19
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "labelStart"    # I
    .param p3, "mappingStart"    # I
    .param p4, "isLabel"    # Z
    .param p5, "toASCII"    # Z
    .param p6, "dest"    # Ljava/lang/StringBuilder;
    .param p7, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    .line 206
    if-nez p3, :cond_2

    #@2
    .line 207
    sget-object v4, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@4
    move-object/from16 v0, p1

    #@6
    move-object/from16 v1, p6

    #@8
    invoke-virtual {v4, v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@b
    .line 212
    :goto_0
    if-eqz p5, :cond_4

    #@d
    move-object/from16 v0, p0

    #@f
    iget v4, v0, Landroid/icu/impl/UTS46;->options:I

    #@11
    and-int/lit8 v4, v4, 0x10

    #@13
    if-nez v4, :cond_3

    #@15
    const/16 v16, 0x1

    #@17
    .line 214
    .local v16, "doMapDevChars":Z
    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    #@1a
    move-result v15

    #@1b
    .line 215
    .local v15, "destLength":I
    move/from16 v17, p2

    #@1d
    .line 216
    .local v17, "labelLimit":I
    :goto_2
    move/from16 v0, v17

    #@1f
    if-ge v0, v15, :cond_a

    #@21
    .line 217
    move-object/from16 v0, p6

    #@23
    move/from16 v1, v17

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@28
    move-result v14

    #@29
    .line 218
    .local v14, "c":C
    const/16 v4, 0x2e

    #@2b
    if-ne v14, v4, :cond_0

    #@2d
    if-eqz p4, :cond_6

    #@2f
    .line 225
    :cond_0
    const/16 v4, 0xdf

    #@31
    if-gt v4, v14, :cond_8

    #@33
    const/16 v4, 0x200d

    #@35
    if-gt v14, v4, :cond_8

    #@37
    const/16 v4, 0xdf

    #@39
    if-eq v14, v4, :cond_1

    #@3b
    const/16 v4, 0x3c2

    #@3d
    if-ne v14, v4, :cond_7

    #@3f
    .line 226
    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V

    #@42
    .line 227
    if-eqz v16, :cond_9

    #@44
    .line 228
    move-object/from16 v0, p0

    #@46
    move-object/from16 v1, p6

    #@48
    move/from16 v2, p2

    #@4a
    move/from16 v3, v17

    #@4c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UTS46;->mapDevChars(Ljava/lang/StringBuilder;II)I

    #@4f
    move-result v15

    #@50
    .line 231
    const/16 v16, 0x0

    #@52
    goto :goto_2

    #@53
    .line 209
    .end local v14    # "c":C
    .end local v15    # "destLength":I
    .end local v16    # "doMapDevChars":Z
    .end local v17    # "labelLimit":I
    :cond_2
    sget-object v4, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    #@55
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@58
    move-result v5

    #@59
    move-object/from16 v0, p1

    #@5b
    move/from16 v1, p3

    #@5d
    invoke-interface {v0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@60
    move-result-object v5

    #@61
    move-object/from16 v0, p6

    #@63
    invoke-virtual {v4, v0, v5}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@66
    goto :goto_0

    #@67
    .line 212
    :cond_3
    const/16 v16, 0x0

    #@69
    .restart local v16    # "doMapDevChars":Z
    goto :goto_1

    #@6a
    .line 213
    .end local v16    # "doMapDevChars":Z
    :cond_4
    move-object/from16 v0, p0

    #@6c
    iget v4, v0, Landroid/icu/impl/UTS46;->options:I

    #@6e
    and-int/lit8 v4, v4, 0x20

    #@70
    if-nez v4, :cond_5

    #@72
    const/16 v16, 0x1

    #@74
    .restart local v16    # "doMapDevChars":Z
    goto :goto_1

    #@75
    .end local v16    # "doMapDevChars":Z
    :cond_5
    const/16 v16, 0x0

    #@77
    .restart local v16    # "doMapDevChars":Z
    goto :goto_1

    #@78
    .line 219
    .restart local v14    # "c":C
    .restart local v15    # "destLength":I
    .restart local v17    # "labelLimit":I
    :cond_6
    sub-int v7, v17, p2

    #@7a
    .local v7, "labelLength":I
    move-object/from16 v4, p0

    #@7c
    move-object/from16 v5, p6

    #@7e
    move/from16 v6, p2

    #@80
    move/from16 v8, p5

    #@82
    move-object/from16 v9, p7

    #@84
    .line 220
    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    #@87
    move-result v18

    #@88
    .line 222
    .local v18, "newLength":I
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    #@8b
    .line 223
    sub-int v4, v18, v7

    #@8d
    add-int/2addr v15, v4

    #@8e
    .line 224
    add-int/lit8 v4, v18, 0x1

    #@90
    add-int p2, p2, v4

    #@92
    move/from16 v17, p2

    #@94
    .line 218
    goto :goto_2

    #@95
    .line 225
    .end local v7    # "labelLength":I
    .end local v18    # "newLength":I
    :cond_7
    const/16 v4, 0x200c

    #@97
    if-ge v14, v4, :cond_1

    #@99
    .line 236
    :cond_8
    add-int/lit8 v17, v17, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 233
    :cond_9
    add-int/lit8 v17, v17, 0x1

    #@9e
    goto/16 :goto_2

    #@a0
    .line 242
    .end local v14    # "c":C
    :cond_a
    if-eqz p2, :cond_b

    #@a2
    move/from16 v0, p2

    #@a4
    move/from16 v1, v17

    #@a6
    if-ge v0, v1, :cond_c

    #@a8
    .line 243
    :cond_b
    sub-int v11, v17, p2

    #@aa
    move-object/from16 v8, p0

    #@ac
    move-object/from16 v9, p6

    #@ae
    move/from16 v10, p2

    #@b0
    move/from16 v12, p5

    #@b2
    move-object/from16 v13, p7

    #@b4
    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    #@b7
    .line 244
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    #@ba
    .line 246
    :cond_c
    return-object p6
.end method

.method private static replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I
    .locals 1
    .param p0, "dest"    # Ljava/lang/StringBuilder;
    .param p1, "destLabelStart"    # I
    .param p2, "destLabelLength"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "labelLength"    # I

    #@0
    .prologue
    .line 306
    if-eq p3, p0, :cond_0

    #@2
    .line 307
    add-int v0, p1, p2

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    .line 311
    :cond_0
    return p4
.end method


# virtual methods
.method public labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 41
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    .line 46
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    const/16 v6, 0xfe

    #@2
    .line 51
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v4, p2

    #@7
    move-object v5, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    #@b
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@e
    move-result v0

    #@f
    if-lt v0, v6, :cond_0

    #@11
    invoke-virtual {p3}, Landroid/icu/text/IDNA$Info;->getErrors()Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@17
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 58
    :cond_0
    :goto_0
    return-object p2

    #@1e
    .line 53
    :cond_1
    invoke-static {p2}, Landroid/icu/impl/UTS46;->isASCIIString(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    .line 52
    if-eqz v0, :cond_0

    #@24
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@27
    move-result v0

    #@28
    if-gt v0, v6, :cond_2

    #@2a
    const/16 v0, 0xfd

    #@2c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@2f
    move-result v0

    #@30
    const/16 v1, 0x2e

    #@32
    if-eq v0, v1, :cond_0

    #@34
    .line 56
    :cond_2
    sget-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    #@36
    invoke-static {p3, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    #@39
    goto :goto_0
.end method

.method public nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;
    .param p3, "info"    # Landroid/icu/text/IDNA$Info;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, v2

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 63
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
